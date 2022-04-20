boolean[] innitList = new boolean[45];
void innit0() {
  if (!innitList[0]) {
    title = loadImage("NewerTitle.png");
    innitList[0]=true;
  }
}
void innit1() {
  if (!innitList[1]) {
    chris = loadImage("chrisModel.png");
    innitList[1]=true;
  }
}
void innit2() {
  if (!innitList[2]) {
    arrow = loadImage("Arrow.png");
    venasaur = new Pokemon("Venusaur", 80, 82, 100, 83, 100, 80, grass, poison, solarBeam.copyMove(), slam.copyMove(), sludgeBomb.copyMove(), razorLeaf.copyMove(), loadImage("venusaur.png"), loadImage("venusaurBack.png"));
    charizard = new Pokemon("Charizard", 78, 84, 109, 78, 85, 100, fire, flying, fireBlast.copyMove(), punchPunch.copyMove(), flamethrower.copyMove(), wingAttack.copyMove(), loadImage("charizard.png"), loadImage("charizardBack.png"));
    blastoise = new Pokemon("Blastoise", 79, 83, 83, 100, 105, 78, water, waterGun.copyMove(), hydroPump.copyMove(), slam.copyMove(), icyPump.copyMove(), loadImage("blastoise.png"), loadImage("blastoiseBack.png"));
    meganium = new Pokemon("Meganium", 80, 82, 83, 100, 100, 80, grass, razorLeaf.copyMove(), slam.copyMove(), solarBeam.copyMove(), razorWind.copyMove(), loadImage("meganium.png"), loadImage("meganiumBack.png"));
    typhlosion = new Pokemon("Typhlosion", 78, 84, 109, 78, 85, 100, fire, flamethrower.copyMove(), flashCannon.copyMove(), slam.copyMove(), lavaPlume.copyMove(), loadImage("typhlosion.png"), loadImage("typhlosionBack.png"));
    feraligatr = new Pokemon("Feraligatr", 85, 105, 79, 100, 83, 78, water, waterGun.copyMove(), iceFang.copyMove(), slam.copyMove(), aquaTail.copyMove(), loadImage("feraligatr.png"), loadImage("feraligatrBack.png"));
    sceptile = new Pokemon("Sceptile", 70, 85, 105, 65, 85, 120, grass, leafBlade.copyMove(), dragonTail.copyMove(), punchPunch.copyMove(), energyBall.copyMove(), loadImage("sceptile.png"), loadImage("sceptileBack.png"));
    blaziken = new Pokemon("Blaziken", 80, 100, 90, 70, 70, 80, fire, fighting, highKick.copyMove(), blazeKick.copyMove(), kickKick.copyMove(), firePunch.copyMove(), loadImage("blaziken.png"), loadImage("blazikenBack.png"));
    swampert = new Pokemon("Swampert", 100, 110, 85, 90, 90, 60, water, ground, earthquake.copyMove(), aquaTail.copyMove(), slam.copyMove(), muddyWater.copyMove(), loadImage("swampert.png"), loadImage("swampertBack.png"));

    starterList[0] = venasaur; 
    starterList[1] = blastoise; 
    starterList[2] = charizard; 
    starterList[3] = meganium; 
    starterList[4] = feraligatr; 
    starterList[5] = typhlosion; 
    starterList[6] = sceptile; 
    starterList[7] = swampert; 
    starterList[8] = blaziken;

    pikachu = new Pokemon("Pikachu", 40, 55, 50, 40, 50, 60, electric, thunderShock.copyMove(), tackle.copyMove(), spark.copyMove(), pound.copyMove(), loadImage("pikachu.png"), loadImage("pikachuBack.png"));

    chrisT = new Trainer("Chris", chris, new Dialogue("Lets get this show on the road!"), pikachu.copyPok());
    innitList[2]=true;
  }
}
void innit3() {
  if (!innitList[3]) {
    Wall[] labWall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 650, 38), new Wall(1064, 0, 650, 36), new Wall(0, 622, 28, 496), new Wall(588, 622, 28, 511), new Wall(36, 281, 59, 324), new Wall(739, 281, 59, 324), new Wall(243, 34, 54, 104), new Wall(38, 31, 149, 124), new Wall(939, 31, 149, 124), 
      new Wall(37, 227, 54, 32), new Wall(37, 343, 54, 32), new Wall(37, 567, 54, 32), new Wall(1031, 227, 54, 32), new Wall(1031, 343, 54, 32), new Wall(1031, 567, 54, 32), new Wall(355, 36, 76, 53), new Wall(558, 32, 120, 160), new Wall(526, 237, 50, 40), new Wall(836, 30, 56, 96)};
    labPic = loadImage("Lab.png");
    lab = new Terrain(labPic, main, labWall);
    lab.resizeWalls(widthRatio, heightRatio);
    curRoute=lab;
    labStart=true;
    innitList[3]=true;
  }
}
void innit5() {
  if (!innitList[5]) {
    Wall[] route0Wall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 650, 38), new Wall(0, 621, 29, 1100), new Wall(1062, 0, 306, 38), new Wall(1062, 437, 213, 38), new Wall(93, 109, 79, 192), new Wall(775, 92, 79, 192), new Wall(733, 295, 36, 64), new Wall(914, 295, 36, 64), 
      new Wall(395, 42, 236, 108), new Wall(572, 42, 236, 108), new Wall(433, 286, 32, 28), new Wall(613, 286, 32, 28)};
    route0pic = loadImage("Route0.png");
    route0 = new Terrain(route0pic, main, route0Wall);
    route0.resizeWalls(widthRatio, heightRatio);
    route0Start=true;
    innitList[5]=true;
  }
}
void innit6() {
  if (!innitList[6]) {
    bidoof = new Pokemon("Bidoof", 59, 45, 35, 40, 40, 31, normal, slam.copyMove(), headbutt.copyMove(), bite.copyMove(), bubble.copyMove(), loadImage("bidoof.png"), loadImage("bidoofBack.png"));
    jigglypuff=new Pokemon("Jigglypuff", 115, 45, 45, 20, 25, 20, normal, fairy, punchPunch.copyMove(), disarmingVoice.copyMove(), pound.copyMove(), fairyWind.copyMove(), loadImage("jigglypuff.png"), loadImage("jigglypuffback.png"));
    pachirisu=new Pokemon("Pachirisu", 60, 45, 45, 70, 90, 95, electric, bite.copyMove(), pound.copyMove(), thunderShock.copyMove(), spark.copyMove(), loadImage("pachirisu.png"), loadImage("pachirisuBack.png"));

    emma = new Trainer ("Trainer Emma", loadImage("EmmaS.png"), new Dialogue("My Pokémon may not be strong, but they are so cute!"), bidoof.copyPok(), jigglypuff.copyPok());
    julia = new Trainer("Trainer Julia", loadImage("JuliaO.png"), new Dialogue("My Pachirisu is strong, and my balance is incredible!"), pachirisu.copyPok());

    TrainerHit[] route1Trainers = {new TrainerHit(622, 249, 401, 38, emma), new TrainerHit(1001, 249, 401, 38, julia)};
    Wall[] route1Wall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 214, 38), new Wall(0, 345, 306, 38), new Wall(0, 621, 29, 1100), new Wall(1062, 0, 214, 38), new Wall(1062, 345, 306, 38), new Wall(42, 40, 174, 256), new Wall(432, 40, 174, 256), new Wall(809, 40, 174, 256), new Wall(209, 366, 79, 188), 
      new Wall(709, 466, 79, 188), new Wall(43, 374, 24, 149), new Wall(729, 338, 24, 149), new Wall(504, 416, 86, 80), new Wall(622, 201, 48, 38), new Wall(1001, 201, 48, 38)};
    route1pic=loadImage("Route1.png");
    route1 = new Terrain(route1pic, main, route1Wall, route1Trainers);
    route1.resizeWalls(widthRatio, heightRatio);
    route1.resizeTrainers(widthRatio, heightRatio);
    route1Start=true;
    innitList[6]=true;
  }
}
void innit8() {
  if (!innitList[8]) {
    drowzee = new Pokemon("Drowzee", 60, 48, 43, 45, 90, 42, psychic, round.copyMove(), pound.copyMove(), confusion.copyMove(), disarmingVoice.copyMove(), loadImage("drowzee.png"), loadImage("drowzeeBack.png"));
    kadabra = new Pokemon("Kabadra", 60, 35, 100, 30, 70, 90, psychic, confusion.copyMove(), pound.copyMove(), disarmingVoice.copyMove(), confusion.copyMove(), loadImage("kadabra.png"), loadImage("kadabraBack.png"));
    caterpie = new Pokemon("Caterpie", 45, 30, 20, 35, 20, 45, bug, bugBite.copyMove(), pound.copyMove(), tackle.copyMove(), bugBite.copyMove(), loadImage("caterpie.png"), loadImage("caterpieBack.png"));
    wurmple = new Pokemon("Wurmple", 45, 45, 20, 35, 30, 20, bug, bugBite.copyMove(), pound.copyMove(), tackle.copyMove(), bugBite.copyMove(), loadImage("wurmple.png"), loadImage("wurmpleBack.png"));


    grace = new Trainer("Psychic Grace", loadImage("GraceP.png"), new Dialogue("Psychic types beat Fighting and Poison types!"), drowzee.copyPok(), kadabra.copyPok());
    michael = new Trainer("Bug-Catcher Michael", loadImage("MichaelB.png"), new Dialogue("Careful, the desert is up ahead!"), caterpie.copyPok(), caterpie.copyPok(), wurmple.copyPok(), wurmple.copyPok());

    TrainerHit[] route2Trainers = {new TrainerHit(367, 0, 446, 36, grace), new TrainerHit(835, 549, 165, 46, michael)};
    Wall[] route2Wall = {new Wall(0, 0, 215, 38), new Wall(0, 345, 305, 38), new Wall(0, 0, 29, 1100), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 847), new Wall(940, 621, 29, 160), new Wall(366, 36, 36, 64), new Wall(932, 34, 36, 64), new Wall(48, 333, 265, 250), new Wall(367, 446, 54, 34), 
      new Wall(338, 500, 90, 90), new Wall(525, 499, 90, 90), new Wall(685, 518, 94, 96), new Wall(126, 105, 76, 83), new Wall(961, 521, 76, 83), new Wall(793, 549, 46, 42)};
    route2pic=loadImage("Route2.png");
    route2 = new Terrain(route2pic, main, route2Wall, route2Trainers);
    route2.resizeWalls(widthRatio, heightRatio);
    route2.resizeTrainers(widthRatio, heightRatio);
    innitList[8]=true;
  }
}
void innit10() {
  if (!innitList[10]) {
    gengar = new Pokemon("Gengar", 70, 65, 100, 60, 75, 110, ghost, poison, shadowBall.copyMove(), sludgeWave.copyMove(), darkPulse.copyMove(), hex.copyMove(), loadImage("gengar.png"), loadImage("gengarBack.png"));
    gardevoir = new Pokemon("Gardevoir", 70, 65, 110, 65, 115, 80, fairy, psychic, psychicBlast.copyMove(), moonBlast.copyMove(), hex.copyMove(), confusion.copyMove(), loadImage("gardevoir.png"), loadImage("gardevoirBack.png"));
    arcanine = new Pokemon("Arcanine", 90, 100, 100, 80, 80, 95, fire, flareBlitz.copyMove(), bite.copyMove(), slam.copyMove(), flamethrower.copyMove(), loadImage("arcanine.png"), loadImage("arcanineBack.png"));
    alakazam = new Pokemon("Alakazam", 60, 50, 120, 45, 85, 110, psychic, psychicBlast.copyMove(), shadowBall.copyMove(), hex.copyMove(), confusion.copyMove(), loadImage("alakazam.png"), loadImage("alakazamBack.png"));
    heracross = new Pokemon("Heracross", 80, 120, 40, 75, 80, 85, bug, fighting, closeCombat.copyMove(), slam.copyMove(), megaHorn.copyMove(), brickBreak.copyMove(), loadImage("heracross.png"), loadImage("heracrossBack.png"));
    lapras = new Pokemon("Lapras", 120, 85, 85, 80, 95, 60, water, ice, iceBeam.copyMove(), hydroPump.copyMove(), waterGun.copyMove(), iceFang.copyMove(), loadImage("lapras.png"), loadImage("laprasBack.png"));
    snorlax = new Pokemon("Snorlax", 160, 80, 65, 65, 100, 20, normal, slam.copyMove(), gigaImpact.copyMove(), punchPunch.copyMove(), bite.copyMove(), loadImage("snorlax.png"), loadImage("snorlaxBack.png"));
    machamp = new Pokemon("Machamp", 90, 110, 65, 80, 80, 55, fighting, brickBreak.copyMove(), punchPunch.copyMove(), kickKick.copyMove(), closeCombat.copyMove(), loadImage("machamp.png"), loadImage("machampBack.png"));
    staraptor = new Pokemon("Staraptor", 85, 100, 50, 70, 60, 100, normal, flying, closeCombat.copyMove(), airSlash.copyMove(), slam.copyMove(), wingAttack.copyMove(), loadImage("staraptor.png"), loadImage("staraptorBack.png"));

    secondaryList[0] = gengar; 
    secondaryList[1] = gardevoir; 
    secondaryList[2] = arcanine; 
    secondaryList[3] = alakazam; 
    secondaryList[4] = heracross; 
    secondaryList[5] = lapras; 
    secondaryList[6] = snorlax; 
    secondaryList[7] = machamp; 
    secondaryList[8] = staraptor;

    innitList[10]=true;
  }
}
void innit11() {
  if (!innitList[11]) {
    flygon = new Pokemon("Flygon", 80, 90, 80, 80, 80, 90, ground, dragon, earthquake.copyMove(), slam.copyMove(), dragonBreath.copyMove(), sandTomb.copyMove(), loadImage("flygon.png"), loadImage("flygonBack.png"));
    trapinch = new Pokemon("Trapinch", 45, 90, 45, 45, 45, 20, ground, slam.copyMove(), bugBite.copyMove(), sandTomb.copyMove(), tackle.copyMove(), loadImage("trapinch.png"), loadImage("trapinchBack.png"));
    graveler = new Pokemon("Graveler", 65, 90, 45, 115, 60, 30, rock, ground, bulldoze.copyMove(), slam.copyMove(), rockTomb.copyMove(), rockBlast.copyMove(), loadImage("graveler.png"), loadImage("gravelerBack.png"));
    onix = new Pokemon("Onix", 65, 45, 30, 150, 50, 70, rock, ground, bulldoze.copyMove(), tackle.copyMove(), rockTomb.copyMove(), rockBlast.copyMove(), loadImage("onix.png"), loadImage("onixBack.png"));

    mason = new Trainer("Ground-Type Specialist Mason", loadImage("MasonW.png"), new Dialogue("My Flygon packs a punch!"), trapinch.copyPok(), flygon.copyPok());
    paul = new Trainer("Hiker Paul", loadImage("PaulF.png"), new Dialogue("Rock types rule!"), graveler.copyPok(), onix.copyPok());

    TrainerHit[] route3Trainers = {new TrainerHit(724, 170, 480, 34, mason), new TrainerHit(1005, 303, 347, 42, paul)};
    Wall[] route3Wall = {new Wall(0, 0, 30, 189), new Wall(284, 0, 30, 816), new Wall(0, 0, 650, 35), new Wall(0, 621, 29, 1100), new Wall(1066, 0, 308, 34), new Wall(1066, 432, 218, 34), new Wall(97, 187, 35, 33), new Wall(60, 274, 41, 40), new Wall(448, 460, 91, 70), new Wall(556, 548, 39, 38), new Wall(837, 448, 78, 57), 
      new Wall(540, 148, 80, 54), new Wall(720, 75, 43, 42), new Wall(724, 117, 53, 34), new Wall(1005, 251, 52, 42)};
    route3pic = loadImage("Route3.png");
    route3 = new Terrain(route3pic, main, route3Wall, route3Trainers);
    route3.resizeWalls(widthRatio, heightRatio);
    route3.resizeTrainers(widthRatio, heightRatio);

    innitList[11]=true;
  }
}
void innit12() {
  if (!innitList[12]) {
    ducklett = new Pokemon("Ducklett", 59, 35, 45, 40, 40, 31, water, flying, wingAttack.copyMove(), bubble.copyMove(), slam.copyMove(), waterGun.copyMove(), loadImage("ducklett.png"), loadImage("ducklettBack.png"));
    staryu = new Pokemon("Staryu", 50, 45, 70, 55, 55, 85, water, waterGun.copyMove(), rapidSpin.copyMove(), waterPulse.copyMove(), tackle.copyMove(), loadImage("staryu.png"), loadImage("staryuBack.png"));
    psyduck = new Pokemon("Psyduck", 50, 52, 65, 48, 50, 55, water, waterGun.copyMove(), confusion.copyMove(), tackle.copyMove(), waterGun.copyMove(), loadImage("psyduck.png"), loadImage("psyduckBack.png"));
    starmie = new Pokemon("Starmie", 60, 75, 80, 85, 85, 100, water, psychic, waterPulse.copyMove(), psychicBlast.copyMove(), rapidSpin.copyMove(), waterGun.copyMove(), loadImage("starmie.png"), loadImage("starmieBack.png"));
    cofagrigus = new Pokemon("Cofagrigus", 60, 50, 80, 130, 110, 30, ghost, shadowBall.copyMove(), bulldoze.copyMove(), slam.copyMove(), rockTomb.copyMove(), loadImage("cofagrigus.png"), loadImage("cofagrigusBack.png"));
    krokorok = new Pokemon("Krokorok", 60, 80, 45, 45, 45, 75, ground, dark, bite.copyMove(), bulldoze.copyMove(), sandTomb.copyMove(), rockTomb.copyMove(), loadImage("krokorok.png"), loadImage("krokorokBack.png"));
    swanna = new Pokemon("Swanna", 75, 87, 87, 63, 63, 90, water, flying, airSlash.copyMove(), hurricane.copyMove(), waterPulse.copyMove(), slam.copyMove(), loadImage("swanna.png"), loadImage("swannaBack.png"));

    hunter = new Trainer("Swimmer Hunter", loadImage("Hunter.png"), new Dialogue("This hot spring is awesome!"), staryu.copyPok(), psyduck.copyPok(), starmie.copyPok());
    ben = new Trainer("Explorer Ben", loadImage("BenS.png"), new Dialogue("See any treasure anywhere?"), krokorok.copyPok(), cofagrigus.copyPok());
    alston = new Trainer("Ranger Alston", loadImage("AlstonS.PNG"), new Dialogue("Duckletts are the best!"), ducklett.copyPok(), ducklett.copyPok(), swanna.copyPok());

    TrainerHit[] route4Trainers = {new TrainerHit(243, 187, 463, 34, hunter), new TrainerHit(679, 300, 305, 34, ben), new TrainerHit(690, 550, 46, 410, alston)};
    Wall[] route4Wall = {new Wall(0, 0, 30, 1100), new Wall(0, 0, 278, 35), new Wall(0, 433, 217, 35), new Wall(0, 621, 29, 728), new Wall(854, 621, 29, 246), new Wall(1066, 0, 650, 34), new Wall(213, 63, 144, 192), new Wall(536, 116, 75, 55), new Wall(675, 41, 123, 127), new Wall(715, 186, 73, 49), new Wall(933, 265, 46, 45), 
      new Wall(139, 448, 82, 60), new Wall(390, 460, 44, 47), new Wall(994, 419, 84, 57), new Wall(679, 256, 48, 34), new Wall(678, 550, 46, 36)};
    route4pic=loadImage("Route4.png");
    route4 = new Terrain(route4pic, main, route4Wall, route4Trainers);
    route4.resizeWalls(widthRatio, heightRatio);
    route4.resizeTrainers(widthRatio, heightRatio);


    innitList[12]=true;
  }
}
void innit13() {
  if (!innitList[13]) {
    cleffa = new Pokemon("Cleffa", 50, 25, 45, 30, 50, 20, fairy, fairyWind.copyMove(), pound.copyMove(), disarmingVoice.copyMove(), tackle.copyMove(), loadImage("cleffa.png"), loadImage("cleffaBack.png"));
    clefable = new Pokemon("Clefable", 100, 70, 95, 75, 90, 60, fairy, moonBlast.copyMove(), razorWind.copyMove(), slam.copyMove(), dazzlingGleam.copyMove(), loadImage("clefable.png"), loadImage("clefableBack.png"));
    maractus = new Pokemon("Maractus", 75, 85, 90, 70, 70, 70, grass, solarBeam.copyMove(), razorLeaf.copyMove(), razorWind.copyMove(), bulldoze.copyMove(), loadImage("maractus.png"), loadImage("maractusBack.png"));
    ivysaur = new Pokemon("Ivysaur", 60, 65, 80, 60, 80, 60, grass, poison, solarBeam.copyMove(), sludgeWave.copyMove(), slam.copyMove(), razorLeaf.copyMove(), loadImage("ivysaur.png"), loadImage("ivysaurBack.png"));
    swablu = new Pokemon("Swablu", 45, 40, 40, 65, 75, 50, normal, flying, wingAttack.copyMove(), peck.copyMove(), tackle.copyMove(), pound.copyMove(), loadImage("swablu.png"), loadImage("swabluBack.png"));
    altaria = new Pokemon("Altaria", 80, 70, 70, 90, 100, 80, dragon, flying, hurricane.copyMove(), dragonBreath.copyMove(), dragonTail.copyMove(), wingAttack.copyMove(), loadImage("altaria.png"), loadImage("altariaBack.png"));

    halle = new Trainer("Fairy-Type Specialist Halle", loadImage("HalleT.png"), new Dialogue("Fairy types destroy fighting and dragon types!"), jigglypuff.copyPok(), clefable.copyPok(), cleffa.copyPok());
    sarah = new Trainer("Trainer Sarah", loadImage("SarahT.png"), new Dialogue("You're almost out of the desert!"), maractus.copyPok(), ivysaur.copyPok());
    elizabeth = new Trainer("Trainer Elizabeth", loadImage("ElizabethW.png"), new Dialogue("I love my Altaria!"), swablu.copyPok(), swablu.copyPok(), altaria.copyPok());

    TrainerHit[] route5Trainers = {new TrainerHit(321, 290, 360, 34, halle), new TrainerHit(446, 290, 360, 36, sarah), new TrainerHit(800, 290, 360, 38, elizabeth)};
    Wall[] route5Wall = {new Wall(0, 0, 650, 35), new Wall(0, 0, 30, 157), new Wall(284, 0, 30, 816), new Wall(0, 621, 29, 1100), new Wall(1066, 0, 277, 34), new Wall(1066, 401, 249, 34), new Wall(345, 38, 228, 188), new Wall(605, 0, 275, 432), new Wall(163, 423, 74, 51), new Wall(613, 448, 78, 54), new Wall(741, 462, 140, 140), 
      new Wall(321, 247, 48, 34), new Wall(446, 243, 52, 36), new Wall(800, 252, 48, 38)};
    route5pic=loadImage("Route5.png");
    route5 = new Terrain(route5pic, main, route5Wall, route5Trainers);
    route5.resizeWalls(widthRatio, heightRatio);
    route5.resizeTrainers(widthRatio, heightRatio);

    innitList[13]=true;
  }
}
void innit14() {
  if (!innitList[14]) {
    preschooler = loadImage("Preschooler.png"); 
    innitList[14]=true;
  }
}
void innit15() {
  if (!innitList[15]) {
    gyarados = new Pokemon("Gyrados", 90, 100, 50, 80, 80, 80, water, flying, aquaTail.copyMove(), bite.copyMove(), dragonTail.copyMove(), gigaImpact.copyMove(), loadImage("gyarados.png"), loadImage("gyaradosBack.png"));
    shiftry = new Pokemon("Shiftry", 90, 100, 80, 60, 60, 80, grass, dark, leafBlade.copyMove(), energyBall.copyMove(), suckerPunch.copyMove(), slam.copyMove(), loadImage("shiftry.png"), loadImage("shiftryBack.png"));
    conkeldurr = new Pokemon("Conkeldurr", 105, 120, 50, 90, 60, 45, fighting, hammerArm.copyMove(), stoneEdge.copyMove(), punchPunch.copyMove(), brickBreak.copyMove(), loadImage("conkeldurr.png"), loadImage("conkeldurrBack.png"));
    manectric = new Pokemon("Manectric", 70, 75, 100, 60, 60, 100, electric, thunder.copyMove(), fireFang.copyMove(), bite.copyMove(), thunderBolt.copyMove(), loadImage("manectric.png"), loadImage("manectricBack.png"));
    lucario = new Pokemon("Lucario", 70, 100, 100, 70, 70, 90, fighting, steel, auraSphere.copyMove(), meteorMash.copyMove(), dragonPulse.copyMove(), brickBreak.copyMove(), loadImage("lucario.png"), loadImage("lucarioBack.png"));
    blissey = new Pokemon("Blissey", 255, 10, 70, 10, 130, 55, normal, disarmingVoice.copyMove(), gigaImpact.copyMove(), razorWind.copyMove(), slam.copyMove(), loadImage("blissey.png"), loadImage("blisseyBack.png"));
    florges = new Pokemon("Florges", 80, 65, 100, 65, 120, 75, fairy, moonBlast.copyMove(), razorWind.copyMove(), signalBeam.copyMove(), energyBall.copyMove(), loadImage("florges.png"), loadImage("florgesBack.png"));
    pidgeot = new Pokemon("Pidgeot", 85, 80, 70, 75, 70, 100, normal, flying, hurricane.copyMove(), razorWind.copyMove(), slam.copyMove(), airSlash.copyMove(), loadImage("pidgeot.png"), loadImage("pidgeotBack.png"));

    thirdList[0] = gyarados; 
    thirdList[1] = flygon; 
    thirdList[2] = shiftry; 
    thirdList[3] = conkeldurr; 
    thirdList[4] = manectric; 
    thirdList[5] = lucario; 
    thirdList[6] = blissey; 
    thirdList[7] = florges; 
    thirdList[8] = pidgeot;

    innitList[15]=true;
  }
}
void innit16() {
  if (!innitList[16]) {
    Wall[] route6aWall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 305, 36), new Wall(0, 436, 224, 36), new Wall(0, 621, 29, 1100), new Wall(1065, 0, 305, 35), new Wall(1065, 436, 224, 35), new Wall(436, 184, 258, 72), new Wall(588, 186, 258, 72), new Wall(460, 0, 245, 176), new Wall(1036, 274, 192, 24)};
    route6apic=loadImage("Route6a.png");
    route6a = new Terrain(route6apic, main, route6aWall);
    route6a.resizeWalls(widthRatio, heightRatio);

    innitList[16]=true;
  }
}
void innit17() {
  if (!innitList[17]) {
    Wall[] route6bWall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 305, 36), new Wall(0, 436, 224, 36), new Wall(0, 621, 29, 1100), new Wall(1065, 0, 305, 35), new Wall(1065, 436, 224, 35), new Wall(436, 184, 258, 72), new Wall(588, 186, 258, 72), new Wall(460, 0, 245, 176)};
    route6bpic=loadImage("Route6b.png");
    route6b = new Terrain(route6bpic, main, route6bWall);
    route6b.resizeWalls(widthRatio, heightRatio);

    innitList[17]=true;
  }
}
void innit18() {
  if (!innitList[18]) {
    golbat = new Pokemon("Golbat", 75, 80, 60, 70, 70, 85, poison, flying, airSlash.copyMove(), sludgeBomb.copyMove(), poisonFang.copyMove(), razorWind.copyMove(), loadImage("golbat.png"), loadImage("golbatBack.png"));
    nidoking = new Pokemon("Nidoking", 80, 85, 80, 75, 75, 85, poison, ground, bulldoze.copyMove(), sludgeBomb.copyMove(), poisonJab.copyMove(), megaHorn.copyMove(), loadImage("nidoking.png"), loadImage("nidokingBack.png"));
    nidoqueen = new Pokemon("Nidoqueen", 90, 80, 75, 80, 80, 75, poison, ground, bulldoze.copyMove(), sludgeBomb.copyMove(), poisonJab.copyMove(), megaHorn.copyMove(), loadImage("nidoqueen.png"), loadImage("nidoqueenBack.png"));
    stunky = new Pokemon("Stunky", 65, 60, 40, 45, 40, 75, poison, dark, poisonFang.copyMove(), bite.copyMove(), tackle.copyMove(), suckerPunch.copyMove(), loadImage("stunky.png"), loadImage("stunkyBack.png"));
    magneton = new Pokemon("Magneton", 60, 60, 100, 80, 70, 70, electric, steel, thunderBolt.copyMove(), flashCannon.copyMove(), thunderShock.copyMove(), slam.copyMove(), loadImage("magneton.png"), loadImage("magnetonBack.png"));

    gruntm1 = new Trainer("Team Proto Grunt Brendan", loadImage("ProtoMale.png"), new Dialogue("Team Proto will have its ways."), golbat.copyPok(), nidoking.copyPok(), stunky.copyPok());
    gruntf1 = new Trainer("Team Proto Grunt Shaina", loadImage("ProtoFemale.png"), new Dialogue("I would turn around if I were you."), magneton.copyPok(), nidoqueen.copyPok(), stunky.copyPok());

    TrainerHit[] ct1Trainers = {new TrainerHit(245, 440, 48, 855, gruntm1), new TrainerHit(0, 230, 50, 879, gruntf1)};
    Wall[] ct1Wall = {new Wall(0, 0, 650, 38), new Wall(0, 0, 29, 486), new Wall(566, 0, 29, 534), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 505), new Wall(571, 621, 29, 529), new Wall(45, 561, 58, 28), new Wall(54, 441, 55, 178), new Wall(165, 233, 71, 63), new Wall(129, 280, 24, 27), new Wall(239, 241, 24, 27), new Wall(45, 33, 58, 28), new Wall(337, 46, 54, 28), new Wall(475, 0, 130, 14), 
      new Wall(563, 0, 130, 14), new Wall(683, 45, 54, 28), new Wall(750, 41, 55, 120), new Wall(1033, 33, 58, 28), new Wall(930, 212, 80, 96), new Wall(889, 406, 24, 28), new Wall(924, 394, 72, 64), new Wall(1001, 435, 24, 28), new Wall(1032, 563, 58, 28), new Wall(241, 440, 48, 30), new Wall(879, 230, 50, 32)};
    celltower1bpic=loadImage("CellTower1.png");
    celltower1b = new Terrain(celltower1bpic, main, ct1Wall, ct1Trainers);
    celltower1b.resizeWalls(widthRatio, heightRatio);
    celltower1b.resizeTrainers(widthRatio, heightRatio);

    innitList[18]=true;
  }
}
void innit19() {
  if (!innitList[19]) {
    stuntank = new Pokemon("Skuntank", 100, 90, 70, 65, 60, 80, poison, dark, poisonJab.copyMove(), suckerPunch.copyMove(), sludgeWave.copyMove(), slam.copyMove(), loadImage("stuntank.png"), loadImage("stuntankBack.png"));
    pangoro = new Pokemon("Pangoro", 90, 100, 70, 70, 70, 55, fighting, dark, brickBreak.copyMove(), suckerPunch.copyMove(), hammerArm.copyMove(), slam.copyMove(), loadImage("pangoro.png"), loadImage("pangoroBack.png"));
    raichu = new Pokemon("Raichu", 60, 80, 80, 55, 80, 100, electric, thunderBolt.copyMove(), thunder.copyMove(), round.copyMove(), thunderShock.copyMove(), loadImage("raichu.png"), loadImage("raichuBack.png"));
    zubat = new Pokemon("Zubat", 40, 45, 30, 35, 40, 55, poison, flying, poisonFang.copyMove(), bite.copyMove(), wingAttack.copyMove(), tackle.copyMove(), loadImage("zubat.png"), loadImage("zubatBack.png"));

    gruntm2 = new Trainer("Team Proto Grunt Aidan", loadImage("ProtoMale.png"), new Dialogue("Leave ... or else"), pangoro.copyPok(), stuntank.copyPok());
    gruntf2 = new Trainer("Team Proto Grunt Andie", loadImage("ProtoFemale.png"), new Dialogue("You don't wanna mess with us"), zubat.copyPok(), raichu.copyPok(), stuntank.copyPok());
    gruntm3 = new Trainer("Team Proto Grunt Braedon", loadImage("ProtoMale.png"), new Dialogue("You asked for it..."), nidoking.copyPok(), raichu.copyPok());

    TrainerHit[] ct2Trainers = {new TrainerHit(358, 170, 480, 28, gruntm2), new TrainerHit(578, 165, 485, 32, gruntf2), new TrainerHit(705, 160, 590, 28, gruntm3)};
    Wall[] ct2bWall = {new Wall(45, 561, 58, 28), new Wall(45, 33, 58, 28), new Wall(1033, 33, 58, 28), new Wall(1032, 563, 58, 28), new Wall(0, 0, 29, 1100), new Wall(0, 0, 650, 38), new Wall(0, 621, 29, 112), new Wall(193, 621, 29, 907), new Wall(1062, 0, 234, 38), new Wall(1062, 310, 340, 38), new Wall(295, 50, 66, 150), new Wall(581, 53, 54, 28), new Wall(706, 53, 54, 28), new Wall(340, 446, 24, 28), 
      new Wall(456, 489, 24, 28), new Wall(718, 489, 24, 28), new Wall(839, 458, 24, 28), new Wall(380, 445, 72, 64), new Wall(766, 449, 72, 64), new Wall(999, 311, 20, 63), new Wall(999, 215, 20, 63), new Wall(358, 122, 48, 28), new Wall(578, 115, 50, 32), new Wall(705, 112, 48, 28)};
    celltower2bpic=loadImage("CellTower2b.png");
    celltower2b = new Terrain(celltower2bpic, main, ct2bWall, ct2Trainers);
    celltower2b.resizeWalls(widthRatio, heightRatio);
    celltower2b.resizeTrainers(widthRatio, heightRatio);

    innitList[19]=true;
  }
}
void innit20() {
  if (!innitList[20]) {
    magnezone = new Pokemon("Magnezone", 70, 60, 100, 90, 85, 60, electric, steel, thunderBolt.copyMove(), flashCannon.copyMove(), meteorMash.copyMove(), thunderShock.copyMove(), loadImage("magnezone.png"), loadImage("magnezoneBack.png"));
    crobat = new Pokemon("Crobat", 85, 90, 65, 80, 80, 120, poison, flying, poisonJab.copyMove(), bite.copyMove(), airSlash.copyMove(), poisonFang.copyMove(), loadImage("crobat.png"), loadImage("crobatBack.png"));

    gruntm4 = new Trainer("Team Proto Grunt Luke", loadImage("ProtoMale.png"), new Dialogue("Get out... now"), magnezone.copyPok(), stuntank.copyPok());
    gruntf3 = new Trainer("Team Proto Grunt Sabrina", loadImage("ProtoFemale.png"), new Dialogue("Team Proto does not back down to scums like you"), crobat.copyPok(), raichu.copyPok(), stunky.copyPok());
    gruntm5 = new Trainer("Team Proto Grunt Cameron", loadImage("ProtoMale.png"), new Dialogue("Team Proto's plan will succeed..."), nidoking.copyPok(), nidoqueen.copyPok(), golbat.copyPok());

    TrainerHit[] ct3Trainers = {new TrainerHit(343, 301, 349, 28, gruntm4), new TrainerHit(400, 207, 50, 609, gruntf3), new TrainerHit(707, 117, 48, 393, gruntm5)};
    Wall[] ct3bWall = {new Wall(0, 0, 469, 38), new Wall(0, 541, 109, 38), new Wall(0, 0, 29, 746), new Wall(827, 0, 29, 273), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 1100), new Wall(45, 561, 58, 28), new Wall(45, 33, 58, 28), new Wall(1033, 33, 58, 28), new Wall(1032, 563, 58, 28), new Wall(125, 41, 80, 96), new Wall(320, 64, 56, 180), new Wall(329, 136, 24, 24), new Wall(405, 209, 24, 24), new Wall(327, 173, 72, 64), 
      new Wall(541, 351, 24, 28), new Wall(649, 318, 24, 28), new Wall(579, 309, 72, 64), new Wall(900, 287, 66, 99), new Wall(860, 57, 22, 84), new Wall(728, 0, 100, 14), new Wall(830, 0, 100, 14), new Wall(343, 253, 48, 28), new Wall(1009, 207, 50, 32), new Wall(677, 117, 48, 30)};
    celltower3bpic=loadImage("CellTower3b.png");
    celltower3b = new Terrain(celltower3bpic, main, ct3bWall, ct3Trainers);
    celltower3b.resizeWalls(widthRatio, heightRatio);
    celltower3b.resizeTrainers(widthRatio, heightRatio);

    innitList[20]=true;
  }
}
void innit21() {
  if (!innitList[21]) {
    purugly = new Pokemon("Purugly", 70, 80, 65, 65, 60, 110, normal, gigaImpact.copyMove(), bite.copyMove(), slam.copyMove(), slash.copyMove(), loadImage("purugly.png"), loadImage("puruglyBack.png"));
    steelix = new Pokemon("Steelix", 75, 80, 45, 150, 65, 30, steel, ground, bulldoze.copyMove(), fireFang.copyMove(), ironTail.copyMove(), rockTomb.copyMove(), loadImage("steelix.png"), loadImage("steelixBack.png"));

    gruntm6 = new Trainer("Team Proto Grunt Ryan", loadImage("ProtoMale.png"), new Dialogue("Team Proto does not back down"), magnezone.copyPok(), crobat.copyPok(), steelix.copyPok());
    gruntf4 = new Trainer("Team Proto Grunt Ansley", loadImage("ProtoFemale.png"), new Dialogue("You will regret trying to stop us"), nidoqueen.copyPok(), pangoro.copyPok(), purugly.copyPok());
    gruntf5 = new Trainer("Team Proto Admin Harmoney", loadImage("ProtoFemale.png"), new Dialogue("I'm the last line between you and our leader"), magnezone.copyPok(), steelix.copyPok(), pangoro.copyPok(), stunky.copyPok());

    TrainerHit[] ct4Trainers = {new TrainerHit(279, 457, 48, 371, gruntm6), new TrainerHit(324, 225, 50, 395, gruntf4), new TrainerHit(0, 106, 50, 690, gruntf5)};
    Wall[] ct4bWall = {new Wall(0, 0, 650, 38), new Wall(0, 0, 29, 508), new Wall(589, 0, 29, 511), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 508), new Wall(589, 621, 29, 511), new Wall(45, 561, 58, 28), new Wall(45, 33, 58, 28), new Wall(1033, 33, 58, 28), new Wall(1032, 563, 58, 28), new Wall(76, 444, 24, 28), new Wall(204, 477, 24, 28), new Wall(119, 437, 72, 64), new Wall(55, 221, 56, 270), new Wall(775, 221, 56, 270), 
      new Wall(378, 42, 54, 28), new Wall(691, 42, 54, 28), new Wall(766, 384, 24, 28), new Wall(894, 417, 24, 28), new Wall(809, 377, 72, 64), new Wall(490, 0, 100, 14), new Wall(592, 0, 100, 14), new Wall(251, 457, 48, 28), new Wall(719, 225, 50, 32), new Wall(690, 106, 50, 32)};
    celltower4bpic=loadImage("CellTower4b.png");
    celltower4b = new Terrain(celltower4bpic, main, ct4bWall, ct4Trainers);
    celltower4b.resizeWalls(widthRatio, heightRatio);
    celltower4b.resizeTrainers(widthRatio, heightRatio);

    innitList[21]=true;
  }
}
void innit22() {
  if (!innitList[22]) {
    genesectOP = new Pokemon("Genesect", 999, 999, 999, 999, 999, 999, bug, steel, technoBlast.copyMove(), technoBlast.copyMove(), technoBlast.copyMove(), technoBlast.copyMove(), loadImage("genesect.png"), loadImage("genesectBack.png"));

    zaneOP = new Trainer("Team Proto Leader Zane", loadImage("ZaneC.png"), new Dialogue("You stand no chance!"), genesectOP.copyPok());

    Wall[] ct5bWall = {};
    celltower5bpic=loadImage("CellTower5b.png");
    cellTower5b = new Terrain(celltower5bpic, main, ct5bWall);
    cellTower5b.resizeWalls(widthRatio, heightRatio);

    innitList[22]=true;
  }
}
void innit24() {
  if (!innitList[24]) {
    mamoswine = new Pokemon("Mamoswine", 100, 100, 75, 80, 60, 80, ice, ground, earthquake.copyMove(), gigaImpact.copyMove(), avalanche.copyMove(), rockBlast.copyMove(), loadImage("mamoswine.png"), loadImage("mamoswineBack.png"));
    umbreon = new Pokemon("Umbreon", 95, 65, 60, 110, 110, 65, dark, darkPulse.copyMove(), suckerPunch.copyMove(), gigaImpact.copyMove(), slam.copyMove(), loadImage("umbreon.png"), loadImage("umbreonBack.png"));
    greninja = new Pokemon("Greninja", 75, 90, 100, 70, 70, 120, water, dark, darkPulse.copyMove(), hydroPump.copyMove(), waterShuriken.copyMove(), iceBeam.copyMove(), loadImage("greninja.png"), loadImage("greninjaBack.png"));
    luxray = new Pokemon("Luxray", 80, 100, 95, 75, 75, 70, electric, thunderBolt.copyMove(), suckerPunch.copyMove(), wildCharge.copyMove(), slam.copyMove(), loadImage("luxray.png"), loadImage("luxrayBack.png"));
    haxorus = new Pokemon("Haxorus", 75, 110, 60, 80, 70, 95, dragon, outrage.copyMove(), gigaImpact.copyMove(), dragonPulse.copyMove(), firePunch.copyMove(), loadImage("haxorus.png"), loadImage("haxorusBack.png"));
    milotic = new Pokemon("Milotic", 95, 60, 90, 80, 110, 80, water, hydroPump.copyMove(), moonBlast.copyMove(), iceBeam.copyMove(), slam.copyMove(), loadImage("milotic.png"), loadImage("miloticBack.png"));
    talonflame = new Pokemon("Talonflame", 80, 80, 75, 70, 70, 120, flying, fire, braveBird.copyMove(), flareBlitz.copyMove(), hurricane.copyMove(), flamethrower.copyMove(), loadImage("talonflame.png"), loadImage("talonflameBack.png"));

    fourthList[0] = mamoswine; 
    fourthList[1] = umbreon; 
    fourthList[2] = altaria; 
    fourthList[3] = greninja; 
    fourthList[4] = luxray; 
    fourthList[5] = haxorus; 
    fourthList[6] = nidoking; 
    fourthList[7] = milotic; 
    fourthList[8] = talonflame;

    innitList[24]=true;
  }
}
void innit25() {
  if (!innitList[25]) {
    Wall[] ct1aWall = {new Wall(0, 0, 650, 38), new Wall(0, 0, 29, 486), new Wall(566, 0, 29, 534), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 505), new Wall(571, 621, 29, 529), new Wall(45, 561, 58, 28), new Wall(54, 441, 55, 178), new Wall(165, 233, 71, 63), new Wall(129, 280, 24, 27), new Wall(239, 241, 24, 27), new Wall(45, 33, 58, 28), new Wall(337, 46, 54, 28), new Wall(475, 0, 130, 14), 
      new Wall(563, 0, 130, 14), new Wall(683, 45, 54, 28), new Wall(750, 41, 55, 120), new Wall(1033, 33, 58, 28), new Wall(930, 212, 80, 96), new Wall(889, 406, 24, 28), new Wall(924, 394, 72, 64), new Wall(1001, 435, 24, 28), new Wall(1032, 563, 58, 28)};
    celltower1apic=loadImage("CellTower1a.png");
    celltower1a = new Terrain(celltower1apic, main, ct1aWall);
    celltower1a.resizeWalls(widthRatio, heightRatio);

    innitList[25]=true;
  }
}
void innit26() {
  if (!innitList[26]) {
    Wall[] ct2aWall = {new Wall(45, 561, 58, 28), new Wall(45, 33, 58, 28), new Wall(1033, 33, 58, 28), new Wall(1032, 563, 58, 28), new Wall(0, 0, 29, 1100), new Wall(0, 0, 650, 38), new Wall(0, 621, 29, 112), new Wall(193, 621, 29, 907), new Wall(1062, 0, 234, 38), new Wall(1062, 310, 340, 38), new Wall(295, 50, 66, 150), new Wall(581, 53, 54, 28), new Wall(706, 53, 54, 28), new Wall(340, 446, 24, 28), 
      new Wall(456, 489, 24, 28), new Wall(718, 489, 24, 28), new Wall(839, 458, 24, 28), new Wall(380, 445, 72, 64), new Wall(766, 449, 72, 64), new Wall(999, 311, 20, 63), new Wall(999, 215, 20, 63)};
    celltower2apic=loadImage("CellTower2a.png");
    celltower2a = new Terrain(celltower2apic, main, ct2aWall);
    celltower2a.resizeWalls(widthRatio, heightRatio);

    innitList[26]=true;
  }
}
void innit27() {
  if (!innitList[27]) {
    Wall[] ct3aWall = {new Wall(0, 0, 469, 38), new Wall(0, 541, 109, 38), new Wall(0, 0, 29, 746), new Wall(827, 0, 29, 273), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 1100), new Wall(45, 561, 58, 28), new Wall(45, 33, 58, 28), new Wall(1033, 33, 58, 28), new Wall(1032, 563, 58, 28), new Wall(125, 41, 80, 96), new Wall(320, 64, 56, 180), new Wall(329, 136, 24, 24), new Wall(405, 209, 24, 24), new Wall(327, 173, 72, 64), 
      new Wall(541, 351, 24, 28), new Wall(649, 318, 24, 28), new Wall(579, 309, 72, 64), new Wall(900, 287, 66, 99), new Wall(860, 57, 22, 84), new Wall(728, 0, 100, 14), new Wall(830, 0, 100, 14)};
    celltower3apic=loadImage("CellTower3a.png");
    celltower3a = new Terrain(celltower3apic, main, ct3aWall);
    celltower3a.resizeWalls(widthRatio, heightRatio);

    innitList[27]=true;
  }
}
void innit28() {
  if (!innitList[28]) {
    Wall[] ct4aWall = {new Wall(0, 0, 650, 38), new Wall(0, 0, 29, 508), new Wall(589, 0, 29, 511), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 508), new Wall(589, 621, 29, 511), new Wall(45, 561, 58, 28), new Wall(45, 33, 58, 28), new Wall(1033, 33, 58, 28), new Wall(1032, 563, 58, 28), new Wall(76, 444, 24, 28), new Wall(204, 477, 24, 28), new Wall(119, 437, 72, 64), new Wall(55, 221, 56, 270), new Wall(775, 221, 56, 270), 
      new Wall(378, 42, 54, 28), new Wall(691, 42, 54, 28), new Wall(766, 384, 24, 28), new Wall(894, 417, 24, 28), new Wall(809, 377, 72, 64), new Wall(490, 0, 100, 14), new Wall(592, 0, 100, 14)};
    celltower4apic=loadImage("CellTower4a.png");
    celltower4a = new Terrain(celltower4apic, main, ct4aWall);
    celltower4a.resizeWalls(widthRatio, heightRatio);

    innitList[28]=true;
  }
}
void innit29() {
  if (!innitList[29]) {
    Wall[] ct5aWall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 650, 38), new Wall(1062, 0, 650, 38), new Wall(0, 621, 29, 508), new Wall(589, 621, 29, 511), new Wall(472, 51, 116, 160)};
    celltower5apic=loadImage("CellTower5a.png");
    cellTower5a = new Terrain(celltower5apic, main, ct5aWall);
    cellTower5a.resizeWalls(widthRatio, heightRatio);

    innitList[29]=true;
  }
}
void innit30() {
  if (!innitList[30]) {
    hitmonlee = new Pokemon("Hitmonlee", 60, 100, 35, 50, 90, 90, fighting, highKick.copyMove(), kickKick.copyMove(), blazeKick.copyMove(), brickBreak.copyMove(), loadImage("hitmonlee.png"), loadImage("hitmonleeBack.png"));
    hitmonchan = new Pokemon("Hitmonchan", 60, 100, 35, 80, 90, 80, fighting, punchPunch.copyMove(), firePunch.copyMove(), suckerPunch.copyMove(), closeCombat.copyMove(), loadImage("hitmonchan.png"), loadImage("hitmonchanBack.png"));
    vigoroth = new Pokemon("Vigoroth", 80, 80, 55, 80, 55, 90, normal, slash.copyMove(), slam.copyMove(), brickBreak.copyMove(), suckerPunch.copyMove(), loadImage("vigoroth.png"), loadImage("vigorothBack.png"));
    rapidash = new Pokemon("Rapidash", 65, 90, 80, 70, 80, 105, fire, flareBlitz.copyMove(), kickKick.copyMove(), blazeKick.copyMove(), poisonJab.copyMove(), loadImage("rapidash.png"), loadImage("rapidashBack.png"));
    zebstrika = new Pokemon("Zebstrika", 75, 90, 80, 65, 65, 115, electric, wildCharge.copyMove(), thunderBolt.copyMove(), slam.copyMove(), flameCharge.copyMove(), loadImage("zebstrika.png"), loadImage("zebstrikaBack.png"));
    scolipede = new Pokemon("Scolipede", 60, 90, 55, 90, 70, 110, bug, poison, megaHorn.copyMove(), slam.copyMove(), poisonJab.copyMove(), sludgeBomb.copyMove(), loadImage("scolipede.png"), loadImage("scolipedeBack.png"));
    electivire = new Pokemon("Electivire", 75, 110, 90, 70, 80, 95, electric, wildCharge.copyMove(), brickBreak.copyMove(), thunderBolt.copyMove(), firePunch.copyMove(), loadImage("electivire.png"), loadImage("electivireBack.png"));

    zoe = new Trainer("Martial Artist Zoe", loadImage("ZoeR.png"), new Dialogue("Some guy just came through our town, he was very scary"), hitmonlee.copyPok(), hitmonchan.copyPok(), machamp.copyPok());
    zach = new Trainer("Baseball Player Zach", loadImage("ZachH.png"), new Dialogue("Let's play ball!"), rapidash.copyPok(), zebstrika.copyPok(), pangoro.copyPok(), vigoroth.copyPok());
    rob = new Trainer("Baller Rob", loadImage("RobM.png"), new Dialogue("Swish!"), scolipede.copyPok(), electivire.copyPok(), flygon.copyPok());

    TrainerHit[] route7Trainers = {new TrainerHit(343, 460, 190, 38, zoe), new TrainerHit(599, 377, 273, 32, zach), new TrainerHit(723, 464, 186, 35, rob)};
    Wall[] route7Wall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 214, 35), new Wall(0, 345, 305, 35), new Wall(1064, 0, 214, 36), new Wall(1064, 345, 305, 36), new Wall(0, 621, 29, 1100), new Wall(80, 86, 79, 64), new Wall(951, 96, 79, 64), new Wall(186, 41, 296, 324), new Wall(316, 337, 76, 92), new Wall(563, 41, 296, 324), new Wall(693, 337, 76, 92), 
      new Wall(343, 408, 52, 38), new Wall(599, 327, 50, 32), new Wall(723, 416, 48, 35)};
    route7pic=loadImage("Route7.png");
    route7 = new Terrain(route7pic, main, route7Wall, route7Trainers);
    route7.resizeWalls(widthRatio, heightRatio);
    route7.resizeTrainers(widthRatio, heightRatio);

    innitList[30]=true;
  }
}
void innit31() {
  if (!innitList[31]) {
    garchomp = new Pokemon("Garchomp", 110, 120, 80, 90, 80, 95, ground, dragon, earthquake.copyMove(), outrage.copyMove(), stoneEdge.copyMove(), gigaImpact.copyMove(), loadImage("garchomp.png"), loadImage("garchompBack.png"));
    seaking = new Pokemon("Seaking", 80, 90, 65, 65, 80, 70, water, hornAttack.copyMove(), megaHorn.copyMove(), aquaTail.copyMove(), waterPulse.copyMove(), loadImage("seaking.png"), loadImage("seakingBack.png"));

    hannah = new Trainer("Trainer Hannah", loadImage("HannahS.png"), new Dialogue("My Garchomp doesn't like to lose"), lucario.copyPok(), milotic.copyPok(), garchomp.copyPok());
    garner = new Trainer("Steel-Type Trainer Garner Cochran", loadImage("DrCochran.png"), new Dialogue("Steel types rule!"), magneton.copyPok(), magnezone.copyPok(), magneton.copyPok(), steelix.copyPok());
    dylan = new Trainer("Fisherman Dylan", loadImage("DylanW.png"), new Dialogue("I am getting lots of bites today!"), gyarados.copyPok(), starmie.copyPok(), seaking.copyPok(), gyarados.copyPok());

    TrainerHit[] route8Trainers = {new TrainerHit(171, 290, 360, 34, hannah), new TrainerHit(534, 294, 356, 34, garner), new TrainerHit(500, 146, 48, 504, dylan)};
    Wall[] route8Wall = {new Wall(0, 621, 29, 1100), new Wall(1064, 0, 650, 36), new Wall(0, 0, 29, 847), new Wall(941, 0, 29, 159), new Wall(0, 0, 307, 35), new Wall(0, 438, 212, 35), new Wall(138, 73, 172, 256), new Wall(502, 73, 172, 256), new Wall(664, 238, 90, 90), new Wall(417, 47, 79, 64), new Wall(123, 467, 79, 64), new Wall(529, 461, 79, 64), new Wall(926, 464, 79, 64), new Wall(977, 56, 79, 64), new Wall(951, 198, 80, 88), 
      new Wall(171, 242, 48, 34), new Wall(534, 246, 48, 34), new Wall(1004, 146, 48, 34)};
    route8pic=loadImage("Route8.png");
    route8 = new Terrain(route8pic, main, route8Wall, route8Trainers);
    route8.resizeWalls(widthRatio, heightRatio);
    route8.resizeTrainers(widthRatio, heightRatio);

    innitList[31]=true;
  }
}
void innit32() {
  if (!innitList[32]) {
    vaporeon = new Pokemon("Vaporeon", 120, 60, 90, 60, 90, 70, water, hydroPump.copyMove(), waterPulse.copyMove(), slam.copyMove(), razorWind.copyMove(), loadImage("vaporeon.png"), loadImage("vaporeonBack.png"));
    jolteon = new Pokemon("Jolteon", 65, 65, 100, 65, 95, 130, electric, thunderBolt.copyMove(), thunderBolt.copyMove(), shadowBall.copyMove(), wildCharge.copyMove(), loadImage("jolteon.png"), loadImage("jolteonBack.png"));
    flareon = new Pokemon("Flareon", 65, 100, 90, 60, 90, 65, fire, flamethrower.copyMove(), gigaImpact.copyMove(), flareBlitz.copyMove(), suckerPunch.copyMove(), loadImage("flareon.png"), loadImage("flareonBack.png"));
    eevee = new Pokemon("Eevee", 60, 60, 60, 60, 60, 60, normal, bite.copyMove(), slam.copyMove(), gigaImpact.copyMove(), sandTomb.copyMove(), loadImage("eevee.png"), loadImage("eeveeBack.png"));
    tyranitar = new Pokemon("Tyranitar", 100, 110, 90, 100, 100, 60, rock, dark, stoneEdge.copyMove(), earthquake.copyMove(), suckerPunch.copyMove(), thunderFang.copyMove(), loadImage("tyranitar.png"), loadImage("tyranitarBack.png"));
    ursaring = new Pokemon("Ursaring", 90, 110, 75, 75, 75, 55, normal, gigaImpact.copyMove(), hammerArm.copyMove(), slam.copyMove(), suckerPunch.copyMove(), loadImage("ursaring.png"), loadImage("ursaringBack.png"));
    rhydon = new Pokemon("Rhydon", 100, 110, 40, 110, 45, 40, rock, ground, stoneEdge.copyMove(), earthquake.copyMove(), hammerArm.copyMove(), megaHorn.copyMove(), loadImage("rhydon.png"), loadImage("rhydonBack.png"));

    isabella = new Trainer("Eevee Trainer Isabella", loadImage("IsabellaD.png"), new Dialogue("Eevees can evolve into so many things!"), vaporeon.copyPok(), jolteon.copyPok(), flareon.copyPok(), eevee.copyPok());
    lexi = new Trainer("Trainer Lexi", loadImage("LexiC.png"), new Dialogue("The Dark Cave is close by, be careful!"), nidoqueen.copyPok(), tyranitar.copyPok(), golbat.copyPok());
    ross = new Trainer("Goofball Ross", loadImage("RossV.png"), new Dialogue("Let's Fight!"), ursaring.copyPok(), rhydon.copyPok(), nidoking.copyPok());

    TrainerHit[] route9Trainers = {new TrainerHit(0, 469, 48, 667, isabella), new TrainerHit(464, 189, 461, 38, lexi), new TrainerHit(994, 201, 199, 34, ross)};
    Wall[] route9Wall = {new Wall(0, 0, 29, 1100), new Wall(0, 0, 650, 35), new Wall(1064, 0, 214, 36), new Wall(1064, 344, 306, 36), new Wall(0, 621, 29, 188), new Wall(283, 621, 29, 817), new Wall(710, 457, 90, 90), new Wall(813, 321, 240, 250), new Wall(63, 62, 79, 128), new Wall(451, 59, 79, 128), new Wall(913, 64, 79, 128), 
      new Wall(667, 469, 48, 38), new Wall(464, 141, 48, 38), new Wall(994, 151, 50, 34)};
    route9pic=loadImage("Route9.png");
    route9 = new Terrain(route9pic, main, route9Wall, route9Trainers);
    route9.resizeWalls(widthRatio, heightRatio);
    route9.resizeTrainers(widthRatio, heightRatio);

    innitList[32]=true;
  }
}
void innit33() {
  if (!innitList[33]) {
    rotom = new Pokemon("Rotom", 70, 50, 100, 80, 80, 90, electric, ghost, thunderBolt.copyMove(), shadowBall.copyMove(), psychicBlast.copyMove(), hex.copyMove(), loadImage("rotom.png"), loadImage("rotomBack.png"));
    porygon2 = new Pokemon("Porygon2", 85, 80, 100, 90, 90, 60, normal, hyperBeam.copyMove(), gigaImpact.copyMove(), darkPulse.copyMove(), thunderBolt.copyMove(), loadImage("porygon2.png"), loadImage("porygon2Back.png"));
    porygonZ = new Pokemon("Porygon-Z", 85, 80, 110, 90, 90, 70, normal, hyperBeam.copyMove(), thunder.copyMove(), gigaImpact.copyMove(), thunderBolt.copyMove(), loadImage("porygonZ.png"), loadImage("porygonZBack.png"));

    diego = new Trainer("Bird-Man Diego", loadImage("DiegoT.png"), new Dialogue("Flying types rule!"), pidgeot.copyPok(), staraptor.copyPok(), talonflame.copyPok(), crobat.copyPok());
    bo = new Trainer("Scientist Bo", loadImage("BoD.png"), new Dialogue("Careful, I just saw a scary man walk into the cave."), rotom.copyPok(), porygon2.copyPok(), porygonZ.copyPok());

    TrainerHit[] route10Trainers = {new TrainerHit(157, 315, 335, 38, diego), new TrainerHit(732, 308, 342, 38, bo)};
    Wall[] route10Wall = {new Wall(0, 0, 29, 1100), new Wall(0, 621, 29, 1100), new Wall(0, 0, 305, 35), new Wall(0, 436, 214, 35), new Wall(1064, 0, 320, 36), new Wall(1064, 415, 235, 36), new Wall(115, 71, 208, 188), new Wall(687, 60, 208, 188), new Wall(346, 85, 80, 88), new Wall(1016, 224, 32, 32), new Wall(1016, 282, 32, 32), new Wall(1017, 434, 32, 32), new Wall(923, 69, 93, 96), new Wall(927, 483, 93, 96), 
      new Wall(157, 267, 48, 38), new Wall(732, 260, 48, 38)};
    route10pic=loadImage("Route10.png");
    route10 = new Terrain(route10pic, main, route10Wall, route10Trainers);
    route10.resizeWalls(widthRatio, heightRatio);
    route10.resizeTrainers(widthRatio, heightRatio);

    innitList[33]=true;
  }
}
void innit35() {
  if (!innitList[35]) {
    dragonite = new Pokemon("Dragonite", 90, 120, 100, 95, 100, 80, dragon, flying, outrage.copyMove(), hurricane.copyMove(), dragonPulse.copyMove(), hyperBeam.copyMove(), loadImage("dragonite.png"), loadImage("dragoniteBack.png"));
    salamence = new Pokemon("Salamence", 95, 120, 110, 80, 80, 100, dragon, flying, outrage.copyMove(), fireBlast.copyMove(), dragonPulse.copyMove(), braveBird.copyMove(), loadImage("salamence.png"), loadImage("salamenceBack.png"));
    metagross = new Pokemon("Metagross", 80, 120, 95, 120, 90, 70, steel, psychic, meteorMash.copyMove(), zenHeadbutt.copyMove(), hammerArm.copyMove(), flashCannon.copyMove(), loadImage("metagross.png"), loadImage("metagrossBack.png"));
    hydreigon = new Pokemon("Hydreigon", 95, 110, 120, 90, 90, 100, dragon, dark, outrage.copyMove(), darkPulse.copyMove(), dragonPulse.copyMove(), hyperBeam.copyMove(), loadImage("hydreigon.png"), loadImage("hydreigonBack.png"));
    volcarona = new Pokemon("Volcarona", 85, 60, 120, 65, 100, 100, fire, bug, bugBuzz.copyMove(), fireBlast.copyMove(), hurricane.copyMove(), flamethrower.copyMove(), loadImage("volcarona.png"), loadImage("volcaronaBack.png"));
    goodra = new Pokemon("Goodra", 90, 80, 100, 70, 130, 80, dragon, aquaTail.copyMove(), energyBall.copyMove(), dragonPulse.copyMove(), hyperBeam.copyMove(), loadImage("goodra.png"), loadImage("goodraBack.png"));
    noivern = new Pokemon("Noivern", 85, 70, 100, 80, 80, 130, dragon, flying, hurricane.copyMove(), moonBlast.copyMove(), dragonPulse.copyMove(), fireBlast.copyMove(), loadImage("noivern.png"), loadImage("noivernBack.png"));

    fifthList[0] = dragonite; 
    fifthList[1] = tyranitar; 
    fifthList[2] = salamence; 
    fifthList[3] = metagross; 
    fifthList[4] = garchomp; 
    fifthList[5] = hydreigon; 
    fifthList[6] = volcarona; 
    fifthList[7] = goodra; 
    fifthList[8] = noivern;

    innitList[35]=true;
  }
}
void innit36() {
  if (!innitList[36]) {
    gruntm7 = new Trainer("Team Proto Grunt Thomas", loadImage("ProtoMale.png"), new Dialogue("Get out of here!"), nidoking.copyPok(), steelix.copyPok(), pangoro.copyPok(), crobat.copyPok());
    gruntf6 = new Trainer("Team Proto Grunt Charlotte", loadImage("ProtoFemale.png"), new Dialogue("Leave while you can..."), magnezone.copyPok(), steelix.copyPok(), purugly.copyPok(), stuntank.copyPok());
    gruntm8 = new Trainer("Team Proto Grunt Buddy", loadImage("ProtoMale.png"), new Dialogue("Face Team Proto!!"), raichu.copyPok(), tyranitar.copyPok(), pangoro.copyPok());

    TrainerHit[] dc1Trainers = {new TrainerHit(305, 208, 442, 28, gruntm7), new TrainerHit(552, 161, 489, 32, gruntf6), new TrainerHit(860, 169, 481, 28, gruntm8)};
    Wall[] dc1Wall = {new Wall(0, 0, 29, 1100), new Wall(0, 621, 29, 1100), new Wall(0, 0, 393, 38), new Wall(0, 505, 145, 38), new Wall(1064, 0, 140, 36), new Wall(1064, 228, 422, 36), new Wall(273, 44, 106, 102), new Wall(707, 500, 106, 102), new Wall(453, 477, 50, 32), new Wall(856, 53, 50, 32), new Wall(551, 51, 50, 32), 
      new Wall(305, 160, 48, 28), new Wall(552, 111, 50, 32), new Wall(860, 121, 48, 28)};
    darkCave1pic=loadImage("DarkCave1.png");
    darkCave1 = new Terrain(darkCave1pic, main, dc1Wall, dc1Trainers);
    darkCave1.resizeWalls(widthRatio, heightRatio);
    darkCave1.resizeTrainers(widthRatio, heightRatio);

    innitList[36]=true;
  }
}
void innit37() {
  if (!innitList[37]) {
    beartic = new Pokemon("Beartic", 95, 100, 70, 80, 80, 50, ice, avalanche.copyMove(), gigaImpact.copyMove(), hammerArm.copyMove(), iceBeam.copyMove(), loadImage("beartic.png"), loadImage("bearticBack.png"));
    rhyperior = new Pokemon("Rhyperior", 110, 120, 55, 120, 55, 40, rock, ground, earthquake.copyMove(), stoneEdge.copyMove(), slam.copyMove(), hammerArm.copyMove(), loadImage("rhyperior.png"), loadImage("rhyperiorBack.png"));
    magmortar = new Pokemon("Magmortar", 75, 95, 100, 70, 90, 80, fire, fireBlast.copyMove(), flamethrower.copyMove(), hyperBeam.copyMove(), sludgeBomb.copyMove(), loadImage("magmortar.png"), loadImage("magmortarBack.png"));

    gruntf7 = new Trainer("Team Proto Grunt Sadie", loadImage("ProtoFemale.png"), new Dialogue("Zane will not be stopped!"), magnezone.copyPok(), dragonite.copyPok(), beartic.copyPok(), steelix.copyPok());
    gruntm9 = new Trainer("Team Proto Grunt Bear", loadImage("ProtoMale.png"), new Dialogue("HAHAHA!!"), snorlax.copyPok(), ursaring.copyPok(), pangoro.copyPok(), beartic.copyPok());
    gruntf8 = new Trainer("Team Proto Grunt Brooke", loadImage("ProtoFemale.png"), new Dialogue("Prepare to lose..."), electivire.copyPok(), rhyperior.copyPok(), magmortar.copyPok(), magnezone.copyPok());

    TrainerHit[] dc2Trainers = {new TrainerHit(404, 197, 453, 32, gruntf7), new TrainerHit(625, 89, 561, 28, gruntm9), new TrainerHit(620, 56, 50, 334, gruntf8)};
    Wall[] dc2Wall = {new Wall(0, 0, 420, 38), new Wall(0, 505, 145, 38), new Wall(0, 0, 29, 817), new Wall(907, 0, 29, 193), new Wall(1064, 0, 650, 36), new Wall(0, 621, 29, 1100), new Wall(92, 150, 54, 32), new Wall(745, 506, 54, 32), new Wall(1003, 53, 54, 32), new Wall(212, 139, 30, 36), new Wall(505, 70, 30, 36), new Wall(373, 40, 106, 100), new Wall(592, 36, 88, 96), 
      new Wall(404, 147, 50, 32), new Wall(625, 41, 48, 28), new Wall(954, 56, 50, 32)};
    darkCave2pic=loadImage("DarkCave2.png");
    darkCave2 = new Terrain(darkCave2pic, main, dc2Wall, dc2Trainers);
    darkCave2.resizeWalls(widthRatio, heightRatio);
    darkCave2.resizeTrainers(widthRatio, heightRatio);

    innitList[37]=true;
  }
}
void innit38() {
  if (!innitList[38]) {
    gruntm10 = new Trainer("Team Proto Grunt Tyler", loadImage("ProtoMale.png"), new Dialogue("Arceus will be ours!"), electivire.copyPok(), garchomp.copyPok(), lucario.copyPok(), snorlax.copyPok(), pangoro.copyPok());
    gruntf9 = new Trainer("Team Proto Grunt Caitlin", loadImage("ProtoFemale.png"), new Dialogue("Zane will not lose!"), magnezone.copyPok(), rhyperior.copyPok(), stuntank.copyPok(), crobat.copyPok());
    gruntm11 = new Trainer("Team Proto Grunt Harrison", loadImage("ProtoMale.png"), new Dialogue("With Genesect, we are unstoppable!"), steelix.copyPok(), jolteon.copyPok(), magmortar.copyPok(), nidoking.copyPok(), purugly.copyPok());

    TrainerHit[] dc3Trainers = {new TrainerHit(99, 486, 48, 1001, gruntm10), new TrainerHit(633, 158, 492, 32, gruntf9), new TrainerHit(1001, 94, 556, 28, gruntm11)};
    Wall[] dc3Wall = {new Wall(0, 0, 650, 38), new Wall(0, 0, 29, 1100), new Wall(0, 621, 29, 224), new Wall(314, 621, 29, 786), new Wall(1064, 0, 140, 36), new Wall(1064, 224, 426, 36), new Wall(50, 477, 54, 32), new Wall(790, 397, 54, 32), new Wall(633, 42, 54, 32), new Wall(326, 53, 106, 100), new Wall(85, 79, 38, 44), new Wall(987, 559, 38, 44), 
      new Wall(99, 486, 48, 30), new Wall(633, 108, 50, 32), new Wall(1001, 46, 48, 28)};
    darkCave3pic=loadImage("DarkCave3.png");
    darkCave3 = new Terrain(darkCave3pic, main, dc3Wall, dc3Trainers);
    darkCave3.resizeWalls(widthRatio, heightRatio);
    darkCave3.resizeTrainers(widthRatio, heightRatio);

    innitList[38]=true;
  }
}
void innit39() {
  if (!innitList[39]) {
    gruntf10 = new Trainer("Team Proto Grunt Hannah", loadImage("ProtoFemale.png"), new Dialogue("I would leave while you can!"), pangoro.copyPok(), flareon.copyPok(), umbreon.copyPok(), stuntank.copyPok(), purugly.copyPok());
    gruntm12 = new Trainer("Team Proto Grunt Noah", loadImage("ProtoMale.png"), new Dialogue("You will lose!"), snorlax.copyPok(), steelix.copyPok(), magmortar.copyPok(), beartic.copyPok(), crobat.copyPok());
    gruntf11 = new Trainer("Team Proto Admin Harmoney", loadImage("ProtoFemale.png"), new Dialogue("I am the last line of defense before Zane!"), magnezone.copyPok(), steelix.copyPok(), pangoro.copyPok(), stuntank.copyPok(), rhyperior.copyPok(), crobat.copyPok());

    TrainerHit[] dc4Trainers = {new TrainerHit(207, 175, 475, 32, gruntf10), new TrainerHit(537, 197, 453, 28, gruntm12), new TrainerHit(560, 49, 50, 389, gruntf11)};
    Wall[] dc4Wall = {new Wall(0, 0, 29, 787), new Wall(877, 0, 29, 223), new Wall(0, 0, 365, 38), new Wall(0, 449, 201, 38), new Wall(0, 621, 29, 1100), new Wall(1064, 0, 650, 36), new Wall(207, 60, 50, 32), new Wall(348, 517, 50, 32), new Wall(996, 48, 50, 32), new Wall(502, 39, 106, 100), 
      new Wall(207, 125, 50, 32), new Wall(537, 149, 48, 28), new Wall(949, 49, 50, 32)};
    darkCave4pic=loadImage("DarkCave4.png");
    darkCave4 = new Terrain(darkCave4pic, main, dc4Wall, dc4Trainers);
    darkCave4.resizeWalls(widthRatio, heightRatio);
    darkCave4.resizeTrainers(widthRatio, heightRatio);

    innitList[39]=true;
  }
}
void innit40() {
  if (!innitList[40]) {
    arceus = new Pokemon("Arceus", 130, 130, 130, 130, 130, 130, normal, judgement.copyMove(), thunder2.copyMove(), psychoBoost.copyMove(), hydroPump.copyMove(), loadImage("arceus.png"), loadImage("arceusBack.png"));

    finalApic=loadImage("FinalA.png");
    Wall[] finalAWall = {};
    finalA = new Terrain(finalApic, main, finalAWall);

    innitList[40]=true;
  }
}
void innit41() {
  if (!innitList[41]) {
    genesect = new Pokemon("Genesect", 130, 130, 130, 130, 130, 130, bug, steel, technoBlast.copyMove(), flashCannon.copyMove(), hyperBeam.copyMove(), bugBuzz.copyMove(), loadImage("genesect.png"), loadImage("genesectBack.png"));
    rayquaza = new Pokemon("Rayquaza", 110, 120, 120, 90, 90, 95, dragon, flying, outrage.copyMove(), hurricane.copyMove(), hyperBeam.copyMove(), dragonPulse.copyMove(), loadImage("rayquaza.png"), loadImage("rayquazaBack.png"));
    mewtwo = new Pokemon("Mewtwo", 110, 100, 130, 90, 90, 120, psychic, psychicBlast.copyMove(), auraSphere.copyMove(), hyperBeam.copyMove(), fireBlast.copyMove(), loadImage("mewtwo.png"), loadImage("mewtwoBack.png"));
    groudon = new Pokemon("Groudon", 100, 130, 100, 110, 90, 90, ground, earthquake.copyMove(), fireBlast.copyMove(), hyperBeam.copyMove(), stoneEdge.copyMove(), loadImage("groudon.png"), loadImage("groudonBack.png"));
    kyogre = new Pokemon("Kyogre", 100, 100, 130, 90, 120, 90, water, hydroPump.copyMove(), hydroPump.copyMove(), hyperBeam.copyMove(), iceBeam.copyMove(), loadImage("kyogre.png"), loadImage("kyogreBack.png"));

    zane = new Trainer("Team Proto Leader Zane", loadImage("ZaneC.png"), new Dialogue("Arceus will be mine!"), dragonite.copyPok(), rayquaza.copyPok(), mewtwo.copyPok(), kyogre.copyPok(), groudon.copyPok(), genesect.copyPok());

    Wall[] finalBWall = {};
    finalBpic=loadImage("FinalB.png");
    finalB = new Terrain(finalBpic, main, finalBWall);

    innitList[41]=true;
  }
}
void innit42() {
  if (!innitList[42]) {
    finalCpic=loadImage("FinalC.png"); 
    Wall[] finalCWall = {};
    finalC = new Terrain(finalCpic, main, finalCWall);

    innitList[42]=true;
  }
}
