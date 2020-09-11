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
