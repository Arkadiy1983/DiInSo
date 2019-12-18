# DiInSo
![alt text](https://i.ibb.co/Gn0B5jQ/d-IInso-logo.png)

'Direct-Inverse Solver' (DiInSo) is an electrical resistivity tomography (ERT) software which orient to solve 3D direct and 2D/3D inverse problems on direct current (DC).

X86 version of DiInSo is totally free and can be use in scientific purposes, but it also has not any guarantees, so use DiInSo at your own risk.

-------------------------

!!! PLEASE READ CAREFULLY NEXT IMPORTANT MESSAGE !!!

-------------------------

NEVER use BLANKS in directories, filenames, paths and names of problems in program DiInSo.

It is highly recommended to install DiInSo in root directory of any logical disk.

If you have any error messages at program start, try to install 'Visual C++ Redistributable for Visual Studio 2015' from Microsoft internet site or from directory 'redist'.

At that moment ENGLISH and RUSSIAN full documentation of DiInSo available, but interface and hints of program in ENGLISH only.

DiInSo now in early pre-release beta-mode, so be ready to small, middle, big and even critical errors. If you help as testers, we will fix bugs together. ;)

Be patient and thank you for understanding.

-------------------------

Your DiInSo chief programmer, Arkadiy Marinenko.

e-mail: marinenkoarkady@yandex.ru

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
