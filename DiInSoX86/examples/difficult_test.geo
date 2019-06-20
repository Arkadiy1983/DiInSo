algebraic3d

# Нижняя граница
solid planev1= plane(     100.0,     100.0,    -200.0;0,0,-1) -bc=76;
# Передняя граница
solid planev2= plane(     100.0,     -50.0,      50.0;0,-1,0) -bc=76;
# Левая граница
solid planev3= plane(     -50.0,     100.0,      50.0;-1,0,0) -bc=76;
# Верхняя граница
solid planev4= plane(     100.0,     100.0,     100.0;0,0,1)  -bc=76;
# Задняя граница
solid planev5= plane(     100.0,     200.0,      50.0;0,1,0)  -bc=76;
# Правая граница
solid planev6= plane(     250.0,     100.0,      50.0;1,0,0)  -bc=76;

solid bak= planev1 and planev2 and planev3 and planev4 and planev5 and planev6;

# Левая нижняя опора
solid truba1= cylinder(   67.5,   62.5,    6.0;   67.5,   62.5,  -10.0;   1.0)
and plane(  67.5,   62.5,    6.0;0,0,1)
and plane(  67.5,   62.5,  -10.0;0,0,-1);

# Правая нижняя опора
solid truba2= cylinder(   77.5,   62.5,    6.0;   77.5,   62.5,  -10.0;   1.0)
and plane(  77.5,   62.5,    6.0;0,0,1)
and plane(  77.5,   62.5,  -10.0;0,0,-1);

# Центральная нижняя опора
solid truba3= cylinder(   67.5,   62.5,    5.0;   77.5,   62.5,   5.0;   1.0)
and plane(  67.5,   62.5,    5.0;-1,0,0)
and plane(  77.5,   62.5,    5.0;1,0,0);

# Шарики для нормальной работы
solid shar1= sphere(   67.5,   62.5,    5.0;   1.5);
solid shar2= sphere(   77.5,   62.5,    5.0;   1.5);

# Левая верхняя опора
solid truba4= cylinder(   67.5,   82.5,    6.0;   67.5,   82.5,  -10.0;   1.0)
and plane(  67.5,   82.5,    6.0;0,0,1)
and plane(  67.5,   82.5,  -10.0;0,0,-1);

# Правая верхняя опора
solid truba5= cylinder(   77.5,   82.5,    6.0;   77.5,   82.5,  -10.0;   1.0)
and plane(  77.5,   82.5,    6.0;0,0,1)
and plane(  77.5,   82.5,  -10.0;0,0,-1);

# Центральная верхняя опора
solid truba6= cylinder(   67.5,   82.5,    5.0;   77.5,   82.5,   5.0;   1.0)
and plane(  67.5,   82.5,    5.0;-1,0,0)
and plane(  77.5,   82.5,    5.0;1,0,0);

# Шарики для нормальной работы
solid shar3= sphere(   67.5,   82.5,    5.0;   1.5);
solid shar4= sphere(   77.5,   82.5,    5.0;   1.5);

# Основная труба
solid bigtruba= cylinder(   72.5,   50.0,    7.0;   72.5,   100.0,    7.0;   2.0)
and plane(  72.5,   50.0,    7.0;0,-1,0)
and plane(  72.5,  100.0,    7.0;0,1,0);

# Полушар1
solid polushar1= sphere(      102.5,      77.5,      0.0;      4.5) and plane(  102.5,   77.5,    0.0;0,0,1);

solid trubafull1 = cylinder(   102.5,   77.5,   -50.0;   102.5,   77.5,   6.0;   1.0)
and plane(    102.5,     77.5,        6.0;0,0,1)
and plane(    102.5,     77.5,      -50.0;0,0,-1);

# Затепление 1 - зона оттаивания
solid zatepl1 = polushar1 and not trubafull1;

solid oporaniz= (truba1 or truba2 or truba3 or shar1 or shar2) and not bigtruba;
solid oporaverh= (truba4 or truba5 or truba6 or shar3 or shar4) and not bigtruba;

solid vsetruby= oporaniz or oporaverh or bigtruba;

solid cutplane1= plane(     100.0,     100.0,       2.0;0,0,1);
solid cutplane2= plane(     100.0,     100.0,       0.0;0,0,1);
solid cutplane3= plane(     100.0,     100.0,     -20.0;0,0,1);

# Воздух
solid slice1= bak and not cutplane1 and not vsetruby and not trubafull1;
# Тонкий слой земли
solid slice2= bak and cutplane1 and not cutplane2 and not vsetruby and not zatepl1 and not trubafull1;
# Основной (толстый) слой земли
solid slice3= bak and cutplane2 and not cutplane3 and not vsetruby and not zatepl1 and not trubafull1;
# Двигающийся (нижний) слой земли
solid slice4= bak and cutplane3 and not trubafull1;


tlo slice1 -col=[0,1,0] -transparent -material=slice1 -maxh=      20.0;
tlo slice2 -col=[0,1,0] -transparent -material=slice2 -maxh=       1.5;
tlo slice3 -col=[0,1,0] -transparent -material=slice3 -maxh=      10.0;
tlo slice4 -col=[0,1,0] -transparent -material=slice4 -maxh=      20.0;
tlo oporaniz -col=[1,0,1] -material=oporaniz -maxh= 1.0;
tlo oporaverh -col=[1,0,1] -material=oporaverh -maxh= 1.0;
tlo bigtruba -col=[0,0,1] -material=bigtruba -maxh= 2.0;
tlo zatepl1 -col=[0,1,1] -material=polushar1 -maxh= 3.0;
tlo trubafull1 -col=[1,1,0] -material=trubafull1 -maxh= 1.0;


point(      50.0,      50.0,       0.0);
point(      55.0,      50.0,       0.0);
point(      60.0,      50.0,       0.0);
point(      65.0,      50.0,       0.0);
point(      70.0,      50.0,       0.0);
point(      75.0,      50.0,       0.0);
point(      80.0,      50.0,       0.0);
point(      85.0,      50.0,       0.0);
point(      90.0,      50.0,       0.0);
point(      95.0,      50.0,       0.0);
point(     100.0,      50.0,       0.0);
point(     105.0,      50.0,       0.0);
point(     110.0,      50.0,       0.0);
point(     115.0,      50.0,       0.0);
point(     120.0,      50.0,       0.0);
point(     125.0,      50.0,       0.0);
point(     130.0,      50.0,       0.0);
point(     135.0,      50.0,       0.0);
point(     140.0,      50.0,       0.0);
point(     145.0,      50.0,       0.0);
point(     150.0,      50.0,       0.0);
point(      50.0,      55.0,       0.0);
point(      55.0,      55.0,       0.0);
point(      60.0,      55.0,       0.0);
point(      65.0,      55.0,       0.0);
point(      70.0,      55.0,       0.0);
point(      75.0,      55.0,       0.0);
point(      80.0,      55.0,       0.0);
point(      85.0,      55.0,       0.0);
point(      90.0,      55.0,       0.0);
point(      95.0,      55.0,       0.0);
point(     100.0,      55.0,       0.0);
point(     105.0,      55.0,       0.0);
point(     110.0,      55.0,       0.0);
point(     115.0,      55.0,       0.0);
point(     120.0,      55.0,       0.0);
point(     125.0,      55.0,       0.0);
point(     130.0,      55.0,       0.0);
point(     135.0,      55.0,       0.0);
point(     140.0,      55.0,       0.0);
point(     145.0,      55.0,       0.0);
point(     150.0,      55.0,       0.0);
point(      50.0,      60.0,       0.0);
point(      55.0,      60.0,       0.0);
point(      60.0,      60.0,       0.0);
point(      65.0,      60.0,       0.0);
point(      70.0,      60.0,       0.0);
point(      75.0,      60.0,       0.0);
point(      80.0,      60.0,       0.0);
point(      85.0,      60.0,       0.0);
point(      90.0,      60.0,       0.0);
point(      95.0,      60.0,       0.0);
point(     100.0,      60.0,       0.0);
point(     105.0,      60.0,       0.0);
point(     110.0,      60.0,       0.0);
point(     115.0,      60.0,       0.0);
point(     120.0,      60.0,       0.0);
point(     125.0,      60.0,       0.0);
point(     130.0,      60.0,       0.0);
point(     135.0,      60.0,       0.0);
point(     140.0,      60.0,       0.0);
point(     145.0,      60.0,       0.0);
point(     150.0,      60.0,       0.0);
point(      50.0,      65.0,       0.0);
point(      55.0,      65.0,       0.0);
point(      60.0,      65.0,       0.0);
point(      65.0,      65.0,       0.0);
point(      70.0,      65.0,       0.0);
point(      75.0,      65.0,       0.0);
point(      80.0,      65.0,       0.0);
point(      85.0,      65.0,       0.0);
point(      90.0,      65.0,       0.0);
point(      95.0,      65.0,       0.0);
point(     100.0,      65.0,       0.0);
point(     105.0,      65.0,       0.0);
point(     110.0,      65.0,       0.0);
point(     115.0,      65.0,       0.0);
point(     120.0,      65.0,       0.0);
point(     125.0,      65.0,       0.0);
point(     130.0,      65.0,       0.0);
point(     135.0,      65.0,       0.0);
point(     140.0,      65.0,       0.0);
point(     145.0,      65.0,       0.0);
point(     150.0,      65.0,       0.0);
point(      50.0,      70.0,       0.0);
point(      55.0,      70.0,       0.0);
point(      60.0,      70.0,       0.0);
point(      65.0,      70.0,       0.0);
point(      70.0,      70.0,       0.0);
point(      75.0,      70.0,       0.0);
point(      80.0,      70.0,       0.0);
point(      85.0,      70.0,       0.0);
point(      90.0,      70.0,       0.0);
point(      95.0,      70.0,       0.0);
point(     100.0,      70.0,       0.0);
point(     105.0,      70.0,       0.0);
point(     110.0,      70.0,       0.0);
point(     115.0,      70.0,       0.0);
point(     120.0,      70.0,       0.0);
point(     125.0,      70.0,       0.0);
point(     130.0,      70.0,       0.0);
point(     135.0,      70.0,       0.0);
point(     140.0,      70.0,       0.0);
point(     145.0,      70.0,       0.0);
point(     150.0,      70.0,       0.0);
point(      50.0,      75.0,       0.0);
point(      55.0,      75.0,       0.0);
point(      60.0,      75.0,       0.0);
point(      65.0,      75.0,       0.0);
point(      70.0,      75.0,       0.0);
point(      75.0,      75.0,       0.0);
point(      80.0,      75.0,       0.0);
point(      85.0,      75.0,       0.0);
point(      90.0,      75.0,       0.0);
point(      95.0,      75.0,       0.0);
point(     100.0,      75.0,       0.0);
point(     105.0,      75.0,       0.0);
point(     110.0,      75.0,       0.0);
point(     115.0,      75.0,       0.0);
point(     120.0,      75.0,       0.0);
point(     125.0,      75.0,       0.0);
point(     130.0,      75.0,       0.0);
point(     135.0,      75.0,       0.0);
point(     140.0,      75.0,       0.0);
point(     145.0,      75.0,       0.0);
point(     150.0,      75.0,       0.0);
point(      50.0,      80.0,       0.0);
point(      55.0,      80.0,       0.0);
point(      60.0,      80.0,       0.0);
point(      65.0,      80.0,       0.0);
point(      70.0,      80.0,       0.0);
point(      75.0,      80.0,       0.0);
point(      80.0,      80.0,       0.0);
point(      85.0,      80.0,       0.0);
point(      90.0,      80.0,       0.0);
point(      95.0,      80.0,       0.0);
point(     100.0,      80.0,       0.0);
point(     105.0,      80.0,       0.0);
point(     110.0,      80.0,       0.0);
point(     115.0,      80.0,       0.0);
point(     120.0,      80.0,       0.0);
point(     125.0,      80.0,       0.0);
point(     130.0,      80.0,       0.0);
point(     135.0,      80.0,       0.0);
point(     140.0,      80.0,       0.0);
point(     145.0,      80.0,       0.0);
point(     150.0,      80.0,       0.0);
point(      50.0,      85.0,       0.0);
point(      55.0,      85.0,       0.0);
point(      60.0,      85.0,       0.0);
point(      65.0,      85.0,       0.0);
point(      70.0,      85.0,       0.0);
point(      75.0,      85.0,       0.0);
point(      80.0,      85.0,       0.0);
point(      85.0,      85.0,       0.0);
point(      90.0,      85.0,       0.0);
point(      95.0,      85.0,       0.0);
point(     100.0,      85.0,       0.0);
point(     105.0,      85.0,       0.0);
point(     110.0,      85.0,       0.0);
point(     115.0,      85.0,       0.0);
point(     120.0,      85.0,       0.0);
point(     125.0,      85.0,       0.0);
point(     130.0,      85.0,       0.0);
point(     135.0,      85.0,       0.0);
point(     140.0,      85.0,       0.0);
point(     145.0,      85.0,       0.0);
point(     150.0,      85.0,       0.0);
point(      50.0,      90.0,       0.0);
point(      55.0,      90.0,       0.0);
point(      60.0,      90.0,       0.0);
point(      65.0,      90.0,       0.0);
point(      70.0,      90.0,       0.0);
point(      75.0,      90.0,       0.0);
point(      80.0,      90.0,       0.0);
point(      85.0,      90.0,       0.0);
point(      90.0,      90.0,       0.0);
point(      95.0,      90.0,       0.0);
point(     100.0,      90.0,       0.0);
point(     105.0,      90.0,       0.0);
point(     110.0,      90.0,       0.0);
point(     115.0,      90.0,       0.0);
point(     120.0,      90.0,       0.0);
point(     125.0,      90.0,       0.0);
point(     130.0,      90.0,       0.0);
point(     135.0,      90.0,       0.0);
point(     140.0,      90.0,       0.0);
point(     145.0,      90.0,       0.0);
point(     150.0,      90.0,       0.0);
point(      50.0,      95.0,       0.0);
point(      55.0,      95.0,       0.0);
point(      60.0,      95.0,       0.0);
point(      65.0,      95.0,       0.0);
point(      70.0,      95.0,       0.0);
point(      75.0,      95.0,       0.0);
point(      80.0,      95.0,       0.0);
point(      85.0,      95.0,       0.0);
point(      90.0,      95.0,       0.0);
point(      95.0,      95.0,       0.0);
point(     100.0,      95.0,       0.0);
point(     105.0,      95.0,       0.0);
point(     110.0,      95.0,       0.0);
point(     115.0,      95.0,       0.0);
point(     120.0,      95.0,       0.0);
point(     125.0,      95.0,       0.0);
point(     130.0,      95.0,       0.0);
point(     135.0,      95.0,       0.0);
point(     140.0,      95.0,       0.0);
point(     145.0,      95.0,       0.0);
point(     150.0,      95.0,       0.0);
point(      50.0,     100.0,       0.0);
point(      55.0,     100.0,       0.0);
point(      60.0,     100.0,       0.0);
point(      65.0,     100.0,       0.0);
point(      70.0,     100.0,       0.0);
point(      75.0,     100.0,       0.0);
point(      80.0,     100.0,       0.0);
point(      85.0,     100.0,       0.0);
point(      90.0,     100.0,       0.0);
point(      95.0,     100.0,       0.0);
point(     100.0,     100.0,       0.0);
point(     105.0,     100.0,       0.0);
point(     110.0,     100.0,       0.0);
point(     115.0,     100.0,       0.0);
point(     120.0,     100.0,       0.0);
point(     125.0,     100.0,       0.0);
point(     130.0,     100.0,       0.0);
point(     135.0,     100.0,       0.0);
point(     140.0,     100.0,       0.0);
point(     145.0,     100.0,       0.0);
point(     150.0,     100.0,       0.0);

