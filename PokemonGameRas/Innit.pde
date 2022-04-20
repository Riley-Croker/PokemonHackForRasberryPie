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


    chrisT = new Trainer("Chris", chris, new Dialogue("Lets get this show on the road!"), pikachu.copyPok());
    innitList[2]=true;
  }
}
