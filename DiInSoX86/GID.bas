*# generic template to dump all GiD data information related to mesh
--- GENERAL DATA ---
*gendata

--- USED MATERIALS ---
*loop materials
*matnum *matprop(0) *matprop
*end materials

--- LAYERS ---
*loop layers
*layernum *layername *layercolorrgb
*end layers

--- GROUPS ---

*loop groups
*groupnum "*GroupFullName" ("*groupname" parent:*groupparentnum) *groupcolorrgb
*set group *GroupName *nodes
*if(GroupNumEntities)
nodes: *GroupNumEntities
*loop nodes *onlyingroup
*nodesnum
*end nodes
*end if
*set group *GroupName *elems
*if(GroupNumEntities)
elements: *GroupNumEntities
*loop elems *onlyingroup
*elemsnum
*end elems
*end if
*set group *GroupName *faces
*if(GroupNumEntities)
faces: *GroupNumEntities
*loop faces *onlyingroup
*faceelemsnum:*faceindex
*end faces
*end if
*end groups

--- LOCAL AXES ---
*loop localaxes
local axe number:*localaxesnum
x'=*LocalAxesDef(1) *localaxesdef(4) *localaxesdef(7)
y'=*localaxesdef(2) *localaxesdef(5) *localaxesdef(8)
z'=*localaxesdef(3) *localaxesdef(6) *localaxesdef(9)
center=*localaxesdefcenter
*end localaxes

*loop intervals
--- INTERVAL NUMBER *loopvar ---

--- INTERVAL DATA ---
*intvdata

--- CONDITIONS OVER NODES ---
*loop conditions *nodes
*if(condnumentities)
condition name=*condname
*loop nodes *onlyincond
*nodesnum *cond
*if(condhaslocalaxes)
localaxe=*localaxesdef(eulerangles)
*endif
*end nodes
*endif
*end conditions

--- CONDITIONS OVER BODY ELEMENTS ---
*loop conditions *bodyelements
*if(condnumentities)
condition name=*condname
*loop elems onlyincond
*elemsnum *cond
*if(condhaslocalaxes)
localaxe=*localaxesdef(eulerangles)
*endif
*end elems
*endif
*end conditions

--- CONDITIONS OVER FACE ELEMENTS ---
*loop conditions *faceelements
*if(condnumentities)
*condnumentities
condition name=*condname
*loop elems *onlyincond
*elemsnum *condelemface *cond *GlobalNodes
*if(condhaslocalaxes)
localaxe=*localaxesdef(eulerangles)
*endif
*end elems
*endif
*end conditions

--- CONDITIONS OVER LAYERS ---
*loop conditions *layers
*if(condnumentities)
condition name=*condname
*loop layers onlyincond
*layernum *layername *cond
*end layers
*endif
*end conditions

--- CONDITIONS OVER GROUPS ---
*loop conditions *groups
*if(condnumentities)
condition name=*condname
*loop groups *onlyincond
*groupnum *groupname *cond
*end groups
*endif
*end conditions

*end intervals

--- NODES ---
*npoin
*loop nodes
*format "%u %u %22.16lf %22.16lf %22.16lf"
*nodesnum *nodeslayernum *nodescoord
*end nodes

--- ELEMENTS ---
*if(nelem(linear))
LINEAR
*nelem(linear)
*set elems(linear)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec
*end elems
*endif

*if(nelem(triangle))
TRIANGLE
*nelem(triangle)
*set elems(triangle)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec
*end elems
*endif

*if(nelem(quadrilateral))
QUADRILATERAL
*nelem(quadrilateral)
*set elems(quadrilateral)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec
*end elems
*endif

*if(nelem(circle))
CIRCLE
*nelem(circle)
*set elems(circle)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec *elemsradius *elemsnormal
*end elems
*endif

*if(nelem(tetrahedra))
TETRAHEDRA
*nelem(tetrahedra)
*set elems(tetrahedra)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsmat *elemsconec
*end elems
*endif

*if(nelem(hexahedra))
HEXAHEDRA
*nelem(hexahedra)
*set elems(hexahedra)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec
*end elems
*endif

*if(nelem(prism))
PRISM
*nelem(prism)
*set elems(prism)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec *elemsradius
*end elems
*endif

*if(nelem(pyramid))
PYRAMID
*nelem(pyramid)
*set elems(prism)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec
*end elems
*endif

*if(nelem(sphere))
SPHERE
*nelem(sphere)
*set elems(prism)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec
*end elems
*endif

*if(nelem(point))
POINT
*nelem(point)
*set elems(point)
*loop elems
*elemsnum *elemsmat *elemslayernum *elemsconec
*end elems
*endif
