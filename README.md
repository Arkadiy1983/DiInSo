# DiInSo
![alt text](http://geoelectriclab.com/themes/radiantweb-travu/assets/images/winsolver/winsolver.png)

'Direct-Inverse Solver' (DiInSo) is an electrical resistivity tomography (ERT) software which orient to solve 3D direct and 2D/3D inverse problems on direct current (DC).

X86 version of DiInSo is totally free and can be use in scientific purposes, but it also has not any guarantees, so use DiInSo at your own risk.

-------------------------

!!! PLEASE READ CAREFULLY NEXT IMPORTANT MESSAGE !!!

-------------------------

NEVER use BLANKS and try to use only ENGLISH SYMBOLS in directories, filenames, paths and names of problems in program DiInSo.

It is highly recommended to install DiInSo in root directory of any logical disk.

If you have any error messages at program start, try to install 'Visual C++ Redistributable for Visual Studio 2015' from Microsoft internet site or from directory 'redist'.

At that moment ENGLISH and RUSSIAN full documentation of DiInSo available, but interface and hints of program in ENGLISH only.

DiInSo now in early pre-release beta-mode, so be ready to small, middle, big and even critical errors. If you help as testers, we will fix bugs together. ;)

Be patient and thank you for understanding.

-------------------------

Your DiInSo chief programmer, Arkadiy Marinenko.

e-mail: marinenkoarkady@yandex.ru

Author's ID in different science databases:

Russian Science Citation Index ID: 596488

Web of Science ResearcherID: AAU-7664-2020

Scopus AuthorID: 26431490500

-------------------------

UPDATES:

6 August 2019:
* Added ENGLISH full documentation
(now ENGLISH help document opens by default in DiInSo program;
 rename file "help_rus.pdf" to "help.pdf" in DiInSo main folder
 if you want to open RUSSIAN help document by default);
* Fixed some bugs and issues.

11 September 2019:
* Fixed a BUG with not working mesh parameter "max cell size"
 for 3D areas with topography effect.
 Now please use parameter "max cell size" as main for building
 nice mesh for 3D areas with topography effect. Parameter "mesh grow"
 is inefficient for such areas due to tetrahedral mesh generator
 limitations;
* Added NEW FUNCTION: Now you can view mesh BEFORE solving inverse
 problem. For doing this, press "geom+mesh" button. In the folder
 with input bert-file will be create VTK-file with same name plus
 word "MESH" at the end. View this file in any VTK-viewer program
 for estimating mesh quality BEFORE solving inverse problem.
* Now DiInSo project has mirrors on:
 SoftOnic (English):
 https://diinso.en.softonic.com/
 GeoElectric Laboratory (Russian):
 http://geoelectriclab.com/products/winsolver
* DiInSo published in the official PAD repository in category
 "Education::Science":
 http://repository.appvisor.com/

30 September 2019:
* Fixed a BUG with not taken into account xyz-file with
 topography if main input bert-file has not topography at all.
 Now topography effect always enable if xyz-file selected
 and appropriate checkbox "topo/line file:" activated.

03 October 2019:
* Added "robust data?" option for 3D inversion;
* Removed "available mem" option due to it's very low efficiency;
* Added information about date of program compilation in main window.

20 November 2019:
* Added NEW FEATURE "Slicer":
 Now you can get individual section (slice) from 3D model of VTU-file
 (see updated documentation for details).

18 December 2019:
* Fixed a BUG with not working "geom+mesh" function in 2D case
 if predefined "geometry file:" selected;
* Fixed a BUG with incorrect conversion Res2DInv dat-file to
 bert-file in some cases with atypically set of topography data;
* Improved visualization of apparent resistivity - now you can
 see real pseudo-depth data on the pictures, earlier depth
 calculated as |R|/2, where |R| - array electrode spacing.

13 February 2020:
* Improved algorithm for Res2DInv to bert-files convertion
 for files with topography;
* Added bln-files output after 2D inversion for better
 analysis of results in Surfer software
 (see updated documentation for details);
* Added some warning messages because not all users read
 documentation carefully;
* Fixed some bugs.

13 March 2020:
* Added NEW FEATURE "estimation":
 Now you can estimate the efficiency of designed
 electrotomographic array system for detection of some
 objects and/or slices (see updated documentation for details);
* Matrix "portrait" button changed from text to image;
* Now support Res2DInv to bert-files convertion for
 files with topography not only in the special "Topography"
 section, but also directly in electrodes coordinates.

11 September 2020:
* Added NEW FEATURE in "Electrodes array generator" -
 "File with profiles". Now you can select file with electrodes
 location, SO electrodes may be in any positions for direct
 problems (see updated documentation for details);
* Added NEW OPTION "circle?". Now you can solve 2D inverse
 problems for closed systems of electrodes, for example
 in a circle (see updated documentation for details);
* Added NEW BUTTON "Cylinder Creator". Now you can create
 poly-files with parallelepiped and cylinder objects for
 solving 3D inverse problems on closed 3D areas
 (see updated documentation for details);
* Added NEW OPTION "refinement". This option help to create
 correct meshes in situations when we have small steps
 between electrodes or electrodes located in "difficult"
 points, for example (0.43278, 5.92357, 9.07139)
 (see updated documentation for details);
* Added NEW EXAMPLES in directory "examples";
* Option for smoothing boundaries (in 2D case) and
 surface (in 3D case) now turns on in file spline.txt;
* Fixed an OpenGL BUG with some new versions of AMD
 Radeon drivers;
* Fixed a lot of small bugs and one critical bug.

15 March 2021:
* Added NEW BUTTON "Domain Creator". Now you can create
 poly-files with domains for solving 3D inverse problems
 of borehole electrical tomography (see updated documentation
 for details);
* Now after solving direct problems and push "bring together"
 button you will get results also in additional formats
 .x and .ohm (see updated documentation for details);
* Fixed a bug in output in Ensight format;
* Fixed a bug in "List of Res2DInv's to BERT 3D" converter;
* Added "3doutput.txt" settings file for disabling output
 in 3D-VTK and DAT-RAW formats after 3D inversion
 (this files can be too large for some 3D problems);
* Added warning message in console window if your input
 mesh for solving direct problems contain
 degenerate tetrahedron(s) (with null volume).
 Direct problems can't be solve in this case and you MUST
 restart a program.
* Fixed GID.bas file for output meshes in GID mesh generator;
* Added instruction to add optional points in areas for
 GID mesh generator (see updated documentation for details);
* Added NEW EXAMPLES in directory "examples";
* Some other fixes of bugs.

22 April 2021:
* Added Res2DInv to BERT 2D conversion for electrotomographic
 array number 7 in Res2DInv numbering (Wenner-Schlumberger);
* Added possibility to add new array positions to the existing
 array positions in file elec_profiles.txt (see updated
 documentation for details);
* Added XERIS output data (xeris_profiles.txt) for XERIS
 software (https://nemfis.ru/stuff/xeris/XerisEng.html);
* Fixed some bugs.

18 July 2021:
* Added NEW convertion options:
 List of BERT 2D files to BERT 2D;
 List of BERT 3D files to BERT 3D;
 List of BERT 2D files to BERT 3D.
 So now you can combine multiple field measurements into one;
* Added NEW extraction option:
 Extract elec_profiles.txt from BERT file.
 So now you can completely repeat field experiment positions of
 the electrotomography array(s) in a direct problem;
* Improve "Electrodes array generator" for more accurate
 adding new array positions to the existing array positions;
* Added "Simple mode" in "Domain Creator". In this mode you
 can completely manual set the coordinates of the domain for
 solving inverse problem;
* Fixed some small bugs.

25 March 2022:
* Updated triangular mesh generation algorithm for 2D inversion problem;
 The goal of the update was to eliminate situations where the process of
 building a triangular mesh entered into an infinite loop due to
 the impossibility of building a mesh with certain parameters.
 The new algorithm contains additional settings in the triangulation.txt
 file, where sets the maximum number of additional nodes in mesh and
 the maximum angle of triangles in mesh. The "mesh growing" parameter
 now has more dainty settings (see hints - "hint" button). All this
 together makes it possible to obtain a more adequate mesh for
 2D inversion and (hopefully) eliminate cases of impossibility of
 meshing with certain parameters.
* When selecting a geometry file ("geometry file"), the "max cell size"
 parameter is now ALWAYS extract from this file;
* In "Electrodes array generator" the Pole-Dipole array is now divided
 into two types - "Pole-Dipole Forward" and "Pole-Dipole Reverse" with
 forward and reverse movement, respectively, since passing the Pole-Dipole
 array in only one direction often gives unsatisfactory results on one of
 boundary of the research area;
* Fixed a bug in the "Electrodes array generator", when the program
 did not allow to build 1 profile if the Y step (which is not need)
 was not set;
* Fixed a bug in solving the inversion problem, when the exit from
 inversion algorithm could occur several iterations earlier or later
 due to incorrect calculation of the beginning of stagnation process;
* A ZondRes2D to BERT 2D converter was add, but only the basic ZondRes2D
 file format is support, so check the conversion results
 (see an example of the ZondRes2D file in the examples folder -
 "examples", file - "zond2d_exm.z2d");
* Fixed some other minor bugs.

23 June 2023:
* Added the ability to solve monitoring problems (time inversion)
 (see updated documentation for details);
* Now in 2D inversion files with coordinates "X" "Z"
 you can include a set of points that define only topography
 (by analogy with such a possibility in the Res2DInv and ZondRes2D programs).
 Read the documentation for details and example "test_topo.bert" 
 in the examples folder - "examples".
* Added the output of sensitivity files with binding to the nodes 
 of the modeling area for their further processing in the programs 
 Surfer and Voxler;
* Fixed a bug when working with data that uses a very small step 
 between the electrodes (laboratory studies in baths);
* Fixed some other minor bugs.
