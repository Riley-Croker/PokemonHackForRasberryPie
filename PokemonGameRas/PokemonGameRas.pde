//import processing.sound.*; //<>//
//import processing.serial.*;
//Serial port;

int outgoingPix=0;
int outgoingColor=0;

//For Resizing
float widthRatio = 320.0/1100.0;
float heightRatio = 240.0/650.0;

int i = 10;
int arrowCounter=27;
int dialogueCounter=0;
int battleCounter = 9;
int j=0;
boolean dialogueReturn=false;
boolean battleStart=false;
int switchVal2 = 0;
float arrowCordAtk = 0;
float arrowCordSwt = 0;
Battle startBattle;
Pokemon swablu, arceus, mewtwo, kyogre, groudon, rayquaza, genesect, stuntank, dragonite, beartic, rhyperior, magmortar, salamence, metagross, hydreigon, volcarona, goodra, noivern, porygon2, porygonZ, rotom, jolteon, vaporeon, flareon, eevee, rhydon, tyranitar, ursaring, garchomp, seaking, hitmonlee, hitmonchan, vigoroth, rapidash, zebstrika, scolipede, electivire, mamoswine, umbreon, greninja, luxray, haxorus, milotic, talonflame, purugly, genesectOP, steelix, magnezone, crobat, zubat, pangoro, raichu, nidoqueen, magneton, stunky, nidoking, golbat, gyarados, shiftry, manectric, pidgeot, conkeldurr, lucario, blissey, florges, altaria, charizard, maractus, ivysaur, cleffa, clefable, pikachu, swanna, cofagrigus, krokorok, staryu, psyduck, starmie, graveler, onix, flygon, trapinch, gengar, gardevoir, alakazam, arcanine, machamp, lapras, heracross, snorlax, staraptor, caterpie, wurmple, drowzee, kadabra, jigglypuff, pachirisu, ducklett, venasaur, blastoise, sceptile, blaziken, swampert, meganium, typhlosion, feraligatr, infernape, bidoof;
Type fire, flying, normal, fighting, poison, ground, rock, bug, ghost, steel, water, grass, electric, psychic, ice, dragon, dark, fairy;
int switchValMain=0;
int switchValMainTemp=0;
int tempSwitch=0;
boolean battleLost=false;
boolean battleWonZane=false;
boolean pickedSecond, pickedThird, pickedFifth, addArceus = false;
boolean cellTower=false;
boolean battleDone, battleDone1=false;
PImage title;
PImage leftS;
PImage grassy;
PImage chris;
PImage preschooler;
PImage arrow, arrowBlack;
PImage treeBack, facBack, desBack, caveBack;
PImage labPic, route0pic, route1pic, route2pic, route3pic, route4pic, route5pic, route6apic, route6bpic, celltower1apic, celltower1bpic, celltower2apic, celltower2bpic, celltower3apic, celltower3bpic, celltower4apic, celltower4bpic, celltower5apic, celltower5bpic, route7pic, route8pic, route9pic, route10pic, darkCave1pic, darkCave2pic, darkCave3pic, darkCave4pic, finalApic, finalBpic, finalCpic;
PImage normalPic, fightingPic, firePic, waterPic, grassPic, icePic, poisonPic, bugPic, dragonPick, darkPic, ghostPic, psychicPic, fairyPic, rockPic, groundPic, steelPic, flyingPic, electricPic;
Move fireBlast, thunder2, psychoBoost, judgement, hyperBeam, bugBuzz, zenHeadbutt, outrage, thunderFang, hornAttack, flameCharge, braveBird, avalanche, wildCharge, waterShuriken, poisonJab, poisonFang, technoBlast, slash, ironTail, signalBeam, meteorMash, auraSphere, dragonPulse, thunder, thunderBolt, fireFang, hammerArm, stoneEdge, leafBlade, suckerPunch, peck, dazzlingGleam, hurricane, waterPulse, rapidSpin, rockTomb, rockBlast, bulldoze, sandTomb, dragonBreath, gigaImpact, iceBeam, megaHorn, flareBlitz, psychicBlast, moonBlast, shadowBall, darkPulse, sludgeWave, hex, closeCombat, airSlash, bugBite, tackle, round, confusion, thunderShock, spark, fairyWind, disarmingVoice, pound, firePunch, brickBreak, punchPunch, earthquake, muddyWater, solarBeam, razorLeaf, kickKick, blazeKick, highKick, energyBall, dragonTail, sludgeBomb, slam, waterGun, weak, bubble, headbutt, bite, hydroPump, icyPump, aquaTail, iceFang, flamethrower, wingAttack, razorWind, lavaPlume, flashCannon;
Player main;
Trainer mainT, chrisT, chrisT2, zane, diego, bo, lexi, ross, isabella, hannah, dylan, garner, zaneOP, emma, zach, zoe, rob, julia, grace, michael, mason, paul, alston, hunter, ben, sarah, elizabeth, halle, gruntm1, gruntf1, gruntm2, gruntf2, gruntm3, gruntm4, gruntf3, gruntm5, gruntm6, gruntf4, gruntf5, gruntm7, gruntm8, gruntf6, gruntf7, gruntf8, gruntm9, gruntm10, gruntf9, gruntm11, gruntf10, gruntm12, gruntf11;
Trainer hitLab, hitr1, hitr2, hitr3, hitr4, hitr5, hitct1, hitct2, hitct3, hitct4, hitr7, hitr8, hitr9, hitr10, hitdc1, hitdc2, hitdc3, hitdc4;
Pokemon[] starterList;
Pokemon[] secondaryList;
Pokemon[] thirdList;
Pokemon[] fourthList;
Pokemon[] fifthList;
Terrain lab, route0, route1, route2, route3, route4, route5, route6a, route6b, celltower1a, celltower1b, celltower2a, celltower2b, celltower3a, celltower3b, celltower4a, celltower4b, cellTower5a, cellTower5b, route7, route8, route9, route10, darkCave1, darkCave2, darkCave3, darkCave4, finalA, finalB, finalC;
Terrain curRoute;
boolean labStart, route0Start, route1Start;
Dialogue move=new Dialogue("Hi");

//SoundFile menu,chrisS,grassS,desertS,dangerS,zaneS,caveS;

void setup()
{
  size(320, 240);
  println(widthRatio);
  println(heightRatio);
  /*
    Size Ratios
   Width (1100 -> 320) : .291 (16/55)
   Height (650 -> 240) : .369 (24/65)
   */
  background(0, 0, 0);
  main = new Player(loadImage("PlayerFrontStanding.png"), loadImage("PlayerFrontW1.png"), loadImage("PlayerFrontW2.png"), 
    loadImage("PlayerBackStanding.png"), loadImage("PlayerBackW1.png"), loadImage("PlayerBackW2.png"), 
    loadImage("PlayerLeftStanding.png"), loadImage("PlayerLeftW1.png"), loadImage("PlayerLeftW2.png"), 
    loadImage("PlayerRightStanding.png"), loadImage("PlayerRightW1.png"), loadImage("PlayerRightW2.png"));
  String[] fireweak = {"Water", "Rock", "Ground"};
  String[] fireresist = {"Grass", "Bug", "Fire", "Steel", "Ice", "Fairy"};
  fire = new Type("Fire", fireweak, fireresist);
  String[] flyweak = {"Electric", "Rock", "Ice"};
  String[] flyresist = {"Grass", "Bug", "Fighting"};
  String[] flyimmune = {"Ground"};
  flying = new Type("Flying", flyweak, flyresist, flyimmune);
  String[] normweak = {"Fighting"};
  String[] normresist = {};
  String[] normimmune = {"Ghost"};
  normal = new Type("Normal", normweak, normresist, normimmune);
  String[] fightweak = {"Flying", "Psychic", "Fairy"};
  String[] fightresist = {"Rock", "Bug", "Dark"};
  fighting = new Type("Fighting", fightweak, fightresist);
  String[] poisweak = {"Ground", "Psychic"};
  String[] poisresist = {"Fighting", "Bug", "Fairy", "Poison", "Grass"};
  poison = new Type("Poison", poisweak, poisresist);
  String[] grweak = {"Water", "Grass", "Ice"};
  String[] grresist = {"Poison", "Rock"};
  String[] grimmune = {"Electric"};
  ground = new Type("Ground", grweak, grresist, grimmune);
  String[] rockweak = {"Ground", "Fighting", "Steel", "Water", "Grass"};
  String[] rockresist = {"Normal", "Flying", "Fire", "Poison"};
  rock = new Type("Rock", rockweak, rockresist);
  String[] bugweak = {"Flying", "Rock", "Fire"};
  String[] bugresist = {"Fighting", "Ground", "Grass"};
  bug = new Type("Bug", bugweak, bugresist);
  String[] ghweak = {"Ghost", "Dark"};
  String[] ghresist = {"Poison", "Bug"};
  String[] ghimmune = {"Normal", "Fighting"};
  ghost = new Type("Ghost", ghweak, ghresist, ghimmune);
  String[] steelweak = {"Ground", "Fighting", "Fire"};
  String[] steelresist = {"Normal", "Flying", "Rock", "Bug", "Steel", "Grass", "Psychic", "Ice", "Dragon", "Fairy"};
  String[] steelimmune = {"Poison"};
  steel = new Type("Steel", steelweak, steelresist, steelimmune);
  String[] waterweak = {"Grass", "Electric"};
  String[] waterresist = {"Steel", "Water", "Fire", "Ice"};
  water = new Type("Water", waterweak, waterresist);
  String[] grassweak = {"Flying", "Poison", "Bug", "Fire", "Ice"};
  String[] grassresist = {"Ground", "Water", "Grass", "Electric"};
  grass = new Type("Grass", grassweak, grassresist);
  String[] electricweak = {"Ground"};
  String[] electricresist = {"Flying", "Steel", "Electric"};
  electric = new Type("Electric", electricweak, electricresist);
  String[] psyweak = {"Bug", "Ghost", "Dark"};
  String[] psyresist = {"Fighting", "Psychic"};
  psychic = new Type("Psychic", psyweak, psyresist);
  String[] iceweak = {"Fighting", "Rock", "Steel", "Fire"};
  String[] iceresist = {"Ice"};
  ice = new Type("Ice", iceweak, iceresist);
  String[] draweak = {"Ice", "Dragon", "Fairy"};
  String[] draresist = {"Fire", "Water", "Grass", "Electric"};
  dragon = new Type("Dragon", draweak, draresist);
  String[] darkweak = {"Fighting", "Bug", "Fairy"};
  String[] darkresist = {"Dark", "Ghost"};
  String[] darkimmune = {"Psychic"};
  dark = new Type("Dark", darkweak, darkresist, darkimmune);
  String[] fairyweak = {"Poison", "Steel"};
  String[] fairyresist = {"Fighting", "Bug", "Dark"};
  String[] fairyimmune = {"Dragon"};
  fairy = new Type("Fairy", fairyweak, fairyresist, fairyimmune);
  fireBlast = new Move("Fire Blast", fire, 100, 5, 80, false);
  waterGun = new Move("Water Gun", water, 50, 25, 100, false);
  weak = new Move("Weak", normal, 1, 30, 100, false);
  firePunch = new Move("Fire Punch", fire, 80, 10, 95, true);
  brickBreak = new Move("Brick Break", fighting, 75, 20, 100, true);
  punchPunch = new Move("Punch", normal, 70, 25, 100, true);
  solarBeam = new Move("Solar Beam", grass, 100, 5, 90, false);
  razorLeaf = new Move("Razor Leaf", grass, 65, 25, 100, true);
  sludgeBomb = new Move("Sludge Bomb", poison, 75, 15, 85, false);
  slam = new Move("Slam", normal, 70, 25, 100, true);
  headbutt = new Move("Headbutt", normal, 75, 20, 100, true);
  hydroPump = new Move("Hydro Pump", water, 100, 5, 90, false);
  icyPump = new Move("Icy Pump", ice, 50, 10, 85, false);
  bite = new Move("Bite", dark, 60, 20, 100, true);
  bubble = new Move("Bubble", water, 30, 25, 95, false);
  flamethrower = new Move("Flamethrower", fire, 85, 15, 90, false);
  wingAttack = new Move("Wing Attack", flying, 60, 20, 95, true);
  razorWind = new Move("Razor Wind", normal, 70, 15, 90, false);
  lavaPlume = new Move("Lava Plume", fire, 90, 10, 80, false);
  flashCannon = new Move("Flash Cannon", steel, 70, 5, 90, false);
  aquaTail = new Move("Aqua Tail", water, 90, 10, 80, true);
  iceFang = new Move("Ice Fang", ice, 65, 15, 100, true);
  leafBlade = new Move("Leaf Blade", grass, 90, 10, 95, true);
  energyBall = new Move("Energy Ball", grass, 85, 10, 90, false);
  dragonTail = new Move("Dragon Tail", dragon, 60, 15, 90, true);
  blazeKick = new Move("Blaze Kick", fire, 95, 15, 90, true);
  highKick = new Move("High Kick", fighting, 95, 15, 85, true);
  kickKick = new Move("Kick", normal, 70, 25, 100, true);
  muddyWater = new Move("Muddy Water", water, 85, 15, 80, false);
  earthquake = new Move("Earthquake", ground, 100, 5, 90, true);
  disarmingVoice = new Move("Disarming Voice", fairy, 40, 25, 100, false);
  pound = new Move("Pound", normal, 40, 25, 100, true);
  fairyWind = new Move("Fairy Wind", fairy, 50, 20, 95, false);
  thunderShock = new Move("Thunder Shock", electric, 50, 20, 90, false);
  spark = new Move("Spark", electric, 65, 20, 90, true);
  confusion = new Move("Confusion", psychic, 50, 25, 100, false);
  round = new Move("Round", normal, 40, 25, 100, false);
  tackle = new Move("Tackle", normal, 40, 20, 100, true);
  bugBite = new Move("Bug Bite", bug, 40, 25, 100, true);
  closeCombat = new Move("Close Combat", fighting, 100, 5, 90, true);
  airSlash = new Move("Air Slash", flying, 70, 10, 90, true);
  shadowBall = new Move("Shadow Ball", ghost, 85, 15, 95, false);
  darkPulse = new Move("Dark Pulse", dark, 70, 15, 100, false);
  waterPulse = new Move("Water Pulse", water, 60, 10, 90, false);
  rapidSpin = new Move("Rapid Spin", normal, 40, 25, 100, true);
  sludgeWave = new Move("Sludge Wave", poison, 70, 10, 90, false);
  hex = new Move("Hex", ghost, 60, 25, 100, false);
  psychicBlast = new Move("Psychic", psychic, 90, 5, 90, false);
  moonBlast = new Move("Moon Blast", fairy, 90, 5, 90, false);
  flareBlitz = new Move("Flare Blitz", fire, 90, 5, 90, true);
  megaHorn = new Move("Mega Horn", bug, 95, 5, 90, true);
  iceBeam = new Move("Ice Beam", ice, 80, 10, 100, false);
  gigaImpact = new Move("Giga Impact", normal, 100, 5, 90, true);
  dragonBreath = new Move("Dragon Breath", dragon, 60, 20, 100, false);
  sandTomb = new Move("Sand Tomb", ground, 40, 25, 100, true);
  rockBlast = new Move("Rock Blast", rock, 60, 25, 90, true);
  rockTomb = new Move("Rock Tomb", rock, 50, 20, 95, true);
  bulldoze = new Move("Bulldoze", ground, 60, 10, 90, true);
  hurricane = new Move("Hurricane", flying, 100, 5, 90, false);
  dazzlingGleam = new Move("Dazzling Gleam", fairy, 80, 10, 90, false);
  peck = new Move("Peck", flying, 40, 25, 100, true);
  suckerPunch = new Move("Sucker Punch", dark, 70, 10, 100, true);
  hammerArm = new Move("Hammer Arm", fighting, 95, 5, 90, true);
  stoneEdge = new Move("Stone Edge", rock, 100, 5, 80, true);
  thunder = new Move("Thunder", electric, 100, 5, 70, false);
  thunderBolt = new Move("Thunderbolt", electric, 85, 10, 90, false);
  fireFang = new Move("Fire Fang", fire, 65, 10, 100, true);
  meteorMash = new Move("Meteor Mash", steel, 80, 10, 100, true);
  auraSphere = new Move("Aura Sphere", fighting, 85, 10, 100, false);
  dragonPulse = new Move("Dragon Pulse", dragon, 85, 10, 90, false);
  signalBeam = new Move("Signal Beam", bug, 70, 10, 95, false);
  poisonFang = new Move("Poison Fang", poison, 50, 25, 100, true);
  poisonJab = new Move("Poison Jab", poison, 75, 10, 90, true);
  slash = new Move("Slash", normal, 70, 15, 100, true);
  ironTail = new Move("Iron Tail", steel, 90, 10, 85, true);
  technoBlast = new Move("Techno Blast", fire, 120, 10, 100, false);
  judgement = new Move("Judgement", normal, 120, 10, 100, false);
  avalanche = new Move("Avalanche", ice, 85, 10, 90, true);
  waterShuriken = new Move("Water Shuriken", water, 90, 10, 100, false);
  wildCharge = new Move("Wild Charge", electric, 100, 5, 90, true);
  outrage = new Move("Outrage", dragon, 100, 5, 90, true);
  braveBird = new Move("Brave Bird", flying, 100, 5, 90, true);
  flameCharge = new Move("Flame Charge", fire, 50, 25, 100, true);
  hornAttack = new Move("Horn Attack", normal, 65, 25, 100, true);
  thunderFang = new Move("Thunder Fang", electric, 65, 25, 100, true);
  hyperBeam = new Move("Hyper Beam", normal, 100, 5, 90, false);
  zenHeadbutt = new Move("Zen Headbutt", psychic, 90, 5, 90, true);
  bugBuzz = new Move("Bug Buzz", bug, 90, 5, 90, false);
  psychoBoost = new Move("Psycho Boost", psychic, 120, 5, 90, false);
  thunder2 = new Move("Thunder", electric, 100, 5, 100, false);

  starterList = new Pokemon[9];
  secondaryList = new Pokemon[9];
  thirdList = new Pokemon[9];
  fourthList = new Pokemon[9];
  fifthList = new Pokemon[9];
  
  
  treeBack = loadImage("ForestBack.png");
  facBack = loadImage("FactoryBack.png");
  arrowBlack = loadImage("ArrowBlack.png");
  desBack = loadImage("DesertBack.png");
  caveBack = loadImage("CaveBack.png");
}

void draw()
{
  //println(switchValMain);
  switch(switchValMain)
  {
  case 0:
    innit0();
    image(title, 0, 0);
    break;
  case 1:
    innit1();
    switch(switchVal2)
    {
    case 0:
      background(0, 0, 0);
      Dialogue intro = new Dialogue("Hello? { Hello????? { Oh it's you, finally. { Thank you for finally showing up.");
      dialogueReturn=intro.render(dialogueCounter);
      if (dialogueReturn)
      {
        switchVal2++;
        dialogueCounter=0;
      }
      break;
    case 1:
      background(0, 0, 0);
      image(chris, 430*widthRatio, 195*heightRatio);
      Dialogue intro2 = new Dialogue("Hi there, I'm Chris! { You are here for a very special purpose. { First of all, where are my manners! { Welcome to the Hack Region! { I had you sent here to help me with a dire task. { I am the owner of HackBerry Lab, the source of all power and research in the entire Hack Region. { Just the other day, an evil man by the name of Zane attacked my lab with his squad of goons and stole all our Arduinos! { Arduinos are the sole source of power for the Hack region and if we don't get them back quickly, the entire region will be in danger! { That my friend, is where you come in. { I will be entrusting you in a Pokémon to help you on your journey to defeat Zane! { In the Hack Region, people love to engage in Pokémon battles. These battles will have your Pokémon fight to see which team is stronger. { During a battle, you can either tell your Pokémon to use an attacking move, or switch out your Pokémon to another Pokémon you have! (You can do this all using the C key to select, the X key to go back, and the WASD keys to move your arrow around) { Moves have a type, power, and accuracy(1 to 100) to determine if that move hits. Typing is very important, so make sure you know your type matchups! { Eventually, you will need to defeat Zane in a battle to get the Arduinos back! { So please, go ahead and pick your starter Pokémon and battle me to practice! { Don't worry, I am not very strong.");
      dialogueReturn=intro2.render(dialogueCounter);
      if (dialogueReturn)
      {
        switchValMain++;
        dialogueCounter=0;
        switchVal2=0;
      }
    }
    break;
  case 2:
    innit2();
    background(0, 0, 0);
    fill(255);
    text("Venusuar", 30*widthRatio, 45*heightRatio);
    text("Blastoise", 30*widthRatio, 115*heightRatio);
    text("Charizard", 30*widthRatio, 185*heightRatio);
    text("Meganium", 30*widthRatio, 255*heightRatio);
    text("Feraligtr", 30*widthRatio, 325*heightRatio);
    text("Typhlosion", 30*widthRatio, 395*heightRatio);
    text("Sceptile", 30*widthRatio, 465*heightRatio);
    text("Swampert", 30*widthRatio, 535*heightRatio);
    text("Blaziken", 30*widthRatio, 605*heightRatio);
    image(arrow, 7*widthRatio, arrowCounter*heightRatio);
    image(chris, 700*widthRatio, 350*heightRatio);
    starterList[j].render(int(700*widthRatio), int(100*heightRatio));
    break;
  case 3: 
    innit3();
    lab.renderTerrain();
    //startBattle.song.stop();
    if (battleLost)
    {
      mainT.reset();
      //send();
      battleLost=false;
    }
    Dialogue wonChris = new Dialogue("Well done! Now that you understand Pokémon battles, you are ready to begin your adventure! (Move your character around with the WASD keys). An important thing to note is Pokémon battles are so popular in the Hack Region, that other trainers will battle you when you cross their eyes! { Good luck on your journey, I'll keep in touch!");
    dialogueReturn=wonChris.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMain++;
      dialogueCounter=0;
    }
    break;
  case 4:
    i++;
    if (battleLost)
    {
      main.x=522*widthRatio;
      main.y=330*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
    }
    for (TrainerHit trainer : lab.trainers)
    {
      trainer.trainer.softReset();
    }
    lab.renderTerrain();
    if (!lab.canMoveLeft())
      main.isMovingLeft = false;
    if (!lab.canMoveRight())
      main.isMovingRight = false;
    if (!lab.canMoveUp())
      main.isMovingUp = false;
    if (!lab.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    hitLab = hitTrainer(lab);
    if (hitLab != null)
      if (!hitLab.defeated)
      {
        startBattle = new Battle(mainT, hitLab, treeBack);
        switchValMainTemp=4;
        switchValMain=7;
      }
    if (main.y > 650*heightRatio)
    {
      main.x=520*widthRatio;
      main.y=300*heightRatio;
      switchValMain++;
      //ambianceState=1;
      //send();
    }
    break;
  case 5:
    innit5();
    i++;
    route0.renderTerrain();
    if (!route0.canMoveLeft())
      main.isMovingLeft = false;
    if (!route0.canMoveRight())
      main.isMovingRight = false;
    if (!route0.canMoveUp())
      main.isMovingUp = false;
    if (!route0.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y < 225*heightRatio && main.x <= 520*widthRatio && main.x >= 504*widthRatio)
    {
      switchValMain--; 
      main.x=520*widthRatio;
      main.y=600*heightRatio;
    }
    if (main.x > 1100*widthRatio)
    {
      main.x=30*widthRatio;
      main.y=260*heightRatio;
      switchValMain++;
    }
    break;
  case 6:
    innit6();
    i++;
    if (battleLost)
    {
      main.x=30*widthRatio;
      main.y=260*heightRatio;
      mainT.reset();
      ////send();
      battleLost=false;
      for (TrainerHit trainer : route1.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route1.renderTerrain();
    if (!route1.canMoveLeft())
      main.isMovingLeft = false;
    if (!route1.canMoveRight())
      main.isMovingRight = false;
    if (!route1.canMoveUp())
      main.isMovingUp = false;
    if (!route1.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y=335*heightRatio;
      switchValMain--;
    }
    if (main.x>1100*widthRatio)
    {
      main.x=30*widthRatio;
      main.y=250*heightRatio;
      switchValMain+=2;
    }
    hitr1 = hitTrainer(route1);
    if (hitr1 != null)
      if (!hitr1.defeated)
      {
        startBattle = new Battle(mainT, hitr1, treeBack);
        switchValMainTemp=6;
        switchValMain=7;
      }
    break;
  case 7:
    renderBattle(battleCounter, startBattle);
    main.isMovingLeft = false;
    main.isMovingRight = false;
    main.isMovingUp = false;
    main.isMovingDown = false;
    if (battleCounter==9)
    {
      Dialogue battleChal = new Dialogue(startBattle.enemy.name + " has challenged you to battle!");
      battleChal.render(0);
    }
    if (battleCounter==10)
    {
      Dialogue enPhrase = new Dialogue("\"" + startBattle.enemy.dialogue.message + "\"");
      enPhrase.render(0);
    }
    if (startBattle.battleWon())
    {
      battleCounter=8;
      if (battleDone1)
      {
        battleCounter=11;
        if (!battleDone)
        {
          Dialogue wonBattle = new Dialogue("Congrats! You have won the battle!");
          wonBattle.render(0);
          mainT.reset();
        } else
        {
          switchValMain=switchValMainTemp; 
          battleDone=false;
          battleDone1=false;                
          battleCounter=9;  
          //send();
        }
      }
    }    
    if (startBattle.battleLost())
    {
      battleCounter=8;
      if (battleDone1)
      {
        battleCounter=11;
        if (!battleDone)
        {
          Dialogue lostBattle = new Dialogue("Sorry. You have lost the battle. Try again...");
          lostBattle.render(0);
        } else
        {
          battleCounter=9;
          battleLost=true;
          switchValMain=switchValMainTemp;
          battleDone=false;
          battleDone1=false;
          //send();
        }
      }
    }
    break;
  case 8:
    innit8();
    i++;
    if (battleLost)
    {
      main.x=30*widthRatio;
      main.y=250*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : route2.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route2.renderTerrain();
    if (!route2.canMoveLeft())
      main.isMovingLeft = false;
    if (!route2.canMoveRight())
      main.isMovingRight = false;
    if (!route2.canMoveUp())
      main.isMovingUp = false;
    if (!route2.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y=250*heightRatio;
      switchValMain-=2;
    }
    if (main.y > 650*heightRatio)
    {
      if (pickedSecond)
      {
        switchValMain=11;
        main.x=210*widthRatio;
        main.y=20*heightRatio;
        //ambianceState=2;
        //send();
      } else
      {
        switchValMain++;
        //ambianceState=0;
        //send();
      }
    }
    hitr2 = hitTrainer(route2);
    if (hitr2 != null)
      if (!hitr2.defeated)
      {
        startBattle = new Battle(mainT, hitr2, treeBack);
        switchValMainTemp=8;
        switchValMain=7;
      }
    break;
  case 9:
    background(0, 0, 0);
    image(chris, 430*widthRatio, 195*heightRatio);
    Dialogue intro2 = new Dialogue("Well hello again! { You are about to enter the desert! { Trainers in the desert are stronger compared to trainers you have fought so far! { Therefore, we need to increase your team's strength. { You may have noticed different trainers have different numbers of Pokémon. This is because a trainer can have up to six pokemon at a time. { Now I will let you pick a new Pokémon to act as your second { Pokémon on your team! { I would recommend you pick a Pokémon that has a different { typing than your starter so you have more type coverage. { So go ahead and pick!");
    dialogueReturn=intro2.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMain++;
      dialogueCounter=0;
      j=0;
      arrowCounter=27;
    }
    break;
  case 10:
    innit10();
    background(0, 0, 0);
    fill(255);
    text("Gengar", 30*widthRatio, 45*heightRatio);
    text("Gardevoir", 30*widthRatio, 115*heightRatio);
    text("Arcanine", 30*widthRatio, 185*heightRatio);
    text("Alakazam", 30*widthRatio, 255*heightRatio);
    text("Heracross", 30*widthRatio, 325*heightRatio);
    text("Lapras", 30*widthRatio, 395*heightRatio);
    text("Snorlax", 30*widthRatio, 465*heightRatio);
    text("Machamp", 30*widthRatio, 535*heightRatio);
    text("Staraptor", 30*widthRatio, 605*heightRatio);
    image(arrow, 7*widthRatio, arrowCounter*heightRatio);
    image(chris, 700*widthRatio, 350*heightRatio);
    secondaryList[j].render(700*widthRatio, 100*heightRatio);
    break;
  case 11:
    innit11();
    i++;
    if (battleLost)
    {
      main.x=210*widthRatio;
      main.y=20*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : route3.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route3.renderTerrain();
    if (!route3.canMoveLeft())
      main.isMovingLeft = false;
    if (!route3.canMoveRight())
      main.isMovingRight = false;
    if (!route3.canMoveUp())
      main.isMovingUp = false;
    if (!route3.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y < 0)
    {
      switchValMain=8;
      main.x=860*widthRatio;
      main.y=590*heightRatio;
      //ambianceState=1;
      //send();
    }
    if (main.x>1100*widthRatio)
    {
      main.x=20*widthRatio;
      main.y=330*heightRatio;
      switchValMain++;
    }
    hitr3 = hitTrainer(route3);
    if (hitr3 != null)
      if (!hitr3.defeated)
      {
        startBattle = new Battle(mainT, hitr3, desBack);
        switchValMainTemp=11;
        switchValMain=7;
      }
    break;
  case 12:
    innit12();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y=330*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : route4.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route4.renderTerrain();
    if (!route4.canMoveLeft())
      main.isMovingLeft = false;
    if (!route4.canMoveRight())
      main.isMovingRight = false;
    if (!route4.canMoveUp())
      main.isMovingUp = false;
    if (!route4.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 340*heightRatio;
      switchValMain--;
    }

    if (main.y > 650*heightRatio)
    {
      main.x=190*widthRatio;
      main.y=20*heightRatio;
      switchValMain++;
    }

    hitr4 = hitTrainer(route4);
    if (hitr4 != null)
      if (!hitr4.defeated)
      {
        startBattle = new Battle(mainT, hitr4, desBack);
        switchValMainTemp=12;
        switchValMain=7;
      }
    break;
  case 13:
    innit13();
    i++;
    if (battleLost)
    {
      main.x=180*widthRatio;
      main.y=20*heightRatio;
      mainT.reset();
      // send();
      battleLost=false;
      for (TrainerHit trainer : route5.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route5.renderTerrain();
    if (!route5.canMoveLeft())
      main.isMovingLeft = false;
    if (!route5.canMoveRight())
      main.isMovingRight = false;
    if (!route5.canMoveUp())
      main.isMovingUp = false;
    if (!route5.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y < -45*heightRatio)
    {
      main.x=760*widthRatio;
      main.y = 600*heightRatio;
      switchValMain--;
    }
    if (main.x>1100*widthRatio)
    {
      main.x=20*widthRatio;
      main.y=355*heightRatio;
      if (!pickedThird)
      {
        switchValMain++;
      } else
      {
        if (cellTower)
          switchValMain=17;
        else 
        switchValMain=16;
      }
    }
    hitr5 = hitTrainer(route5);
    if (hitr5 != null)
      if (!hitr5.defeated)
      {
        startBattle = new Battle(mainT, hitr5, desBack);
        switchValMainTemp=13;
        switchValMain=7;
      }
    break;
  case 14:
    innit14();
    switch(switchVal2)
    {
    case 0:
      background(0, 0, 0);
      image(preschooler, 430*widthRatio, 195*heightRatio);
      Dialogue helpKid = new Dialogue("Hey! { Hey you!!!! { Please help me! { I was playing with my little Pokémon infront of the big tower over there and a lot of big and scary people came and I think they were trying to attack the tower. I don't know what is going on but I am so little and I am so scared!! { Please help!!");
      dialogueReturn=helpKid.render(dialogueCounter);
      if (dialogueReturn)
      {
        switchVal2++;
        dialogueCounter=0;
      }
      break;
    case 1:
      background(0, 0, 0);
      image(chris, 430*widthRatio, 195*heightRatio);
      Dialogue chrisWorried = new Dialogue("Oh no, this is not good. { That child must be talking about the cell tower up on the next route! { Those big and scary people have to be Zane and his goons. { The cell tower is home for all broadcasting and cell service in the Hack Region, so there is no telling what Zane will do there, but it can't be good. { Get in there and find out whats going on! { Also, here... { Take another Pokémon to help you out!");
      dialogueReturn=chrisWorried.render(dialogueCounter);
      if (dialogueReturn)
      {
        switchValMain++;
        dialogueCounter=0;
        switchVal2=0;
        j=0;
        arrowCounter=27;
      }
    }
    break;
  case 15:
    innit15();
    background(0, 0, 0);
    fill(255);
    text("Gyarados", 30*widthRatio, 45*heightRatio);
    text("Flygon", 30*widthRatio, 115*heightRatio);
    text("Shiftry", 30*widthRatio, 185*heightRatio);
    text("Conkeldurr", 30*widthRatio, 255*heightRatio);
    text("Manetric", 30*widthRatio, 325*heightRatio);
    text("Lucario", 30*widthRatio, 395*heightRatio);
    text("Blissy", 30*widthRatio, 465*heightRatio);
    text("Florges", 30*widthRatio, 535*heightRatio);
    text("Pidgeot", 30*widthRatio, 605*heightRatio);
    image(arrow, 7*widthRatio, arrowCounter*heightRatio);
    image(chris, 700*widthRatio, 350*heightRatio);
    thirdList[j].render(700*widthRatio, 100*heightRatio);
    break;
  case 16:
    innit16();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y=355*heightRatio;
      mainT.reset();
      // send();
      battleLost=false;
      for (TrainerHit trainer : route6a.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route6a.renderTerrain();
    if (!route6a.canMoveLeft())
      main.isMovingLeft = false;
    if (!route6a.canMoveRight())
      main.isMovingRight = false;
    if (!route6a.canMoveUp())
      main.isMovingUp = false;
    if (!route6a.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 315*heightRatio;
      switchValMain=13;
    }
    if (main.y < 442*heightRatio && main.x <= 587*widthRatio && main.x >= 508*widthRatio)
    {
      switchValMain=18; 
      main.x=515*widthRatio;
      main.y=600*heightRatio;
    }

    hitr5 = hitTrainer(route6a);
    if (hitr5 != null)
      if (!hitr5.defeated)
      {
        startBattle = new Battle(mainT, hitr5, desBack);
        switchValMainTemp=16;
        switchValMain=7;
      }
    break;
  case 17:
    innit17();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y=355*heightRatio;
      mainT.reset();
      battleLost=false;
      for (TrainerHit trainer : route6b.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route6b.renderTerrain();
    if (!route6b.canMoveLeft())
      main.isMovingLeft = false;
    if (!route6b.canMoveRight())
      main.isMovingRight = false;
    if (!route6b.canMoveUp())
      main.isMovingUp = false;
    if (!route6b.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 315*heightRatio;
      switchValMain=13;
    }
    if (main.y < 442*heightRatio && main.x <= 587*widthRatio && main.x >= 508*widthRatio)
    {
      switchValMain=25; 
      main.x=515*widthRatio;
      main.y=600*heightRatio;
    }
    if (main.x > 1100*widthRatio)
    {
      main.x=20*widthRatio;
      main.y=265*heightRatio;
      switchValMain=30;
    }
    hitr5 = hitTrainer(route6a);
    if (hitr5 != null)
      if (!hitr5.defeated)
      {
        startBattle = new Battle(mainT, hitr5, desBack);
        switchValMainTemp=17;
        switchValMain=7;
      }
    break;
  case 18:
    innit18();
    i++;
    if (battleLost)
    { 
      main.x=515*widthRatio;
      main.y=600*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : celltower1b.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    celltower1b.renderTerrain();
    if (!celltower1b.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower1b.canMoveRight())
      main.isMovingRight = false;
    if (!celltower1b.canMoveUp())
      main.isMovingUp = false;
    if (!celltower1b.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y>650*heightRatio)
    {
      main.x=525*widthRatio;
      main.y=450*heightRatio;
      if (cellTower)
        switchValMain=17;
      else 
      switchValMain=16;
    }
    if (main.y < -45*heightRatio)
    {
      main.x=134*widthRatio;
      main.y=580*heightRatio;
      if (cellTower)
        switchValMain=999;
      else 
      switchValMain=19;
    }
    hitct1 = hitTrainer(celltower1b);
    if (hitct1 != null)
      if (!hitct1.defeated)
      {
        startBattle = new Battle(mainT, hitct1, facBack);
        switchValMainTemp=18;
        switchValMain=7;
      }
    break;
  case 19:
    innit19();
    i++;
    if (battleLost)
    {
      main.x=134*widthRatio;
      main.y=580*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : celltower2b.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    celltower2b.renderTerrain();
    if (!celltower2b.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower2b.canMoveRight())
      main.isMovingRight = false;
    if (!celltower2b.canMoveUp())
      main.isMovingUp = false;
    if (!celltower2b.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y>650*heightRatio)
    {
      main.x=500*widthRatio;
      main.y=30*heightRatio;
      if (cellTower)
        switchValMain=999;
      else 
      switchValMain=18;
    }
    if (main.x>1060*widthRatio)
    {
      main.x=42*widthRatio;
      main.y=485*heightRatio;
      if (cellTower)
        switchValMain=999;
      else 
      switchValMain=20;
    }
    hitct2 = hitTrainer(celltower2b);
    if (hitct2 != null)
      if (!hitct2.defeated)
      {
        startBattle = new Battle(mainT, hitct2, facBack);
        switchValMainTemp=19;
        switchValMain=7;
      }
    break;
  case 20:
    innit20();
    i++;
    if (battleLost)
    {
      main.x=42*widthRatio;
      main.y=485*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : celltower3b.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    celltower3b.renderTerrain();
    if (!celltower3b.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower3b.canMoveRight())
      main.isMovingRight = false;
    if (!celltower3b.canMoveUp())
      main.isMovingUp = false;
    if (!celltower3b.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x<-45*widthRatio)
    {
      main.x=965*widthRatio;
      main.y=265*heightRatio;
      if (cellTower)
        switchValMain=999;
      else 
      switchValMain=19;
    }
    if (main.y<-45*heightRatio)
    {
      main.x=530*widthRatio;
      main.y=565*heightRatio;
      if (cellTower)
        switchValMain=999;
      else 
      switchValMain=21;
    }
    hitct3 = hitTrainer(celltower3b);
    if (hitct3 != null)
      if (!hitct3.defeated)
      {
        startBattle = new Battle(mainT, hitct3, facBack);
        switchValMainTemp=20;
        switchValMain=7;
      }
    break;
  case 21:
    innit21();
    i++;
    if (battleLost)
    {
      main.x=530*widthRatio;
      main.y=565*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : celltower4b.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    celltower4b.renderTerrain();
    if (!celltower4b.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower4b.canMoveRight())
      main.isMovingRight = false;
    if (!celltower4b.canMoveUp())
      main.isMovingUp = false;
    if (!celltower4b.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y > 650*heightRatio)
    {
      main.x=765*widthRatio;
      main.y=95*heightRatio;
      if (cellTower)
        switchValMain=999;
      else 
      switchValMain=20;
    }
    if (main.y < -45*heightRatio)
    {
      main.x=526*widthRatio;
      main.y=301*heightRatio;
      if (cellTower)
        switchValMain=999;
      else 
      switchValMain=22;
    }
    hitct4 = hitTrainer(celltower4b);
    if (hitct4 != null)
      if (!hitct4.defeated)
      {
        startBattle = new Battle(mainT, hitct4, facBack);
        switchValMainTemp=21;
        switchValMain=7;
      }
    break;
  case 22: 
    innit22();
    cellTower5b.renderTerrain();
    if (battleLost)
    {
      mainT.reset();
      //send();
      switchValMain++;
    }
    Dialogue zaneMonologue = new Dialogue("So... { We finally meet. { You must be the person Chris sent after me... { It's a true shame to tell you that you are too late. I stole the Arduinos for a reason you know. { Ancient legends tell of a mythical Pokémon that lived in the Hack region that has never been beaten in battle. This Pokémon goes by the name of Genesect. { Genesect has said to be dormant for over 1000 years! Legend says in order to summon Genesect, you must go to a very high point in the Hack region and unleash a large amount of electricity. { That is where the Arduinos came in. { So that brings us here... { I'm sorry you missed the light show, but you showed up a bit too late... { GENESECT ATTACK!!");
    dialogueReturn=zaneMonologue.render(dialogueCounter);
    if (dialogueReturn)
    {
      startBattle = new Battle(mainT, zaneOP, facBack);
      switchValMainTemp=22;
      switchValMain=7;
      dialogueCounter=0;
    }
    break;
  case 23:
    //startBattle.song.sto/
    //menu.stop();
    //if(!chrisS.isPlaying())
    //  chrisS.play();
    switch(switchVal2)
    {
    case 0:
      background(0, 0, 0);
      image(loadImage("ZaneC.png"), 430*widthRatio, 195*heightRatio);
      Dialogue helpKid = new Dialogue("HAHAHAHAH!!! { You really thought you could stop me. With Genesect, the whole Hack Region will bow to me!! { Now all I have to do is go town to town showing my strength until I reach the Dark Cave where my plan will fully be complete! { I would recommend you go home and stay out of my way!");
      dialogueReturn=helpKid.render(dialogueCounter);
      if (dialogueReturn)
      {
        switchVal2++;
        dialogueCounter=0;
      }
      break;
    case 1:
      background(0, 0, 0);
      image(chris, 430*widthRatio, 195*heightRatio);
      Dialogue chrisWorried = new Dialogue("... { Are you okay?? { Oh my goodness, this is not good... { I have only heard legends of Genesect, but I didn't think they were true. { If Zane's bond with Genesect stays, we are in great danger... I don't know what Zane's plans are, but they can't be good. { You need to get to the Dark Cave and stop whatever he has been planning... { Here, take another Pokémon to help you in your journey to the Dark Cave.");
      dialogueReturn=chrisWorried.render(dialogueCounter);
      if (dialogueReturn)
      {
        switchValMain++;
        dialogueCounter=0;
        switchVal2=0;
        j=0;
        arrowCounter=27;
      }
    }
    break;
  case 24:
    innit24();
    background(0, 0, 0);
    fill(255);
    text("Mamoswine", 30*widthRatio, 45*heightRatio);
    text("Umbreon", 30*widthRatio, 115*heightRatio);
    text("Altaria", 30*widthRatio, 185*heightRatio);
    text("Greninja", 30*widthRatio, 255*heightRatio);
    text("Luxray", 30*widthRatio, 325*heightRatio);
    text("Haxorus", 30*widthRatio, 395*heightRatio);
    text("Nidoking", 30*widthRatio, 465*heightRatio);
    text("Milotic", 30*widthRatio, 535*heightRatio);
    text("Talonflame", 30*widthRatio, 605*heightRatio);
    image(arrow, 7*widthRatio, arrowCounter*heightRatio);
    image(chris, 700*widthRatio, 350*heightRatio);
    fourthList[j].render(700*widthRatio, 100*heightRatio);
    break;
  case 25:
    innit25();
    i++;
    celltower1a.renderTerrain();
    if (!celltower1a.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower1a.canMoveRight())
      main.isMovingRight = false;
    if (!celltower1a.canMoveUp())
      main.isMovingUp = false;
    if (!celltower1a.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y>650*heightRatio)
    {
      main.x=525*widthRatio;
      main.y=450*heightRatio;
      switchValMain=17;
    }
    if (main.y < -45*heightRatio)
    {
      main.x=134*widthRatio;
      main.y=580*heightRatio;
      switchValMain=26;
    }
    break;
  case 26:
    innit26();
    i++;
    celltower2a.renderTerrain();
    if (!celltower2a.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower2a.canMoveRight())
      main.isMovingRight = false;
    if (!celltower2a.canMoveUp())
      main.isMovingUp = false;
    if (!celltower2a.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y>650*heightRatio)
    {
      main.x=500*widthRatio;
      main.y=30*heightRatio;
      switchValMain=25;
    }
    if (main.x>1060*widthRatio)
    {
      main.x=42*widthRatio;
      main.y=485*heightRatio;
      switchValMain=27;
    }
    break;
  case 27:
    innit27();
    i++;
    celltower3a.renderTerrain();
    if (!celltower3a.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower3a.canMoveRight())
      main.isMovingRight = false;
    if (!celltower3a.canMoveUp())
      main.isMovingUp = false;
    if (!celltower3a.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x<-45*widthRatio)
    {
      main.x=965*widthRatio;
      main.y=265*heightRatio;
      switchValMain=26;
    }
    if (main.y<-45*heightRatio)
    {
      main.x=530*widthRatio;
      main.y=565*heightRatio;
      switchValMain=28;
    }
    break;
  case 28:
    innit28();
    i++;
    celltower4a.renderTerrain();
    if (!celltower4a.canMoveLeft())
      main.isMovingLeft = false;
    if (!celltower4a.canMoveRight())
      main.isMovingRight = false;
    if (!celltower4a.canMoveUp())
      main.isMovingUp = false;
    if (!celltower4a.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y > 650*heightRatio)
    {
      main.x=765*widthRatio;
      main.y=95*heightRatio;
      switchValMain=27;
    }
    if (main.y < -45*heightRatio)
    {
      main.x=530*widthRatio;
      main.y=565*heightRatio;
      switchValMain=29;
    }
    break;
  case 29:
    innit29();
    i++;
    cellTower5a.renderTerrain();
    if (!cellTower5a.canMoveLeft())
      main.isMovingLeft = false;
    if (!cellTower5a.canMoveRight())
      main.isMovingRight = false;
    if (!cellTower5a.canMoveUp())
      main.isMovingUp = false;
    if (!cellTower5a.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y > 650*heightRatio)
    {
      main.x=530*widthRatio;
      main.y=110*heightRatio;
      switchValMain=28;
    }
    break;
  case 30:
    innit30();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y=265*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : route7.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route7.renderTerrain();
    if (!route7.canMoveLeft())
      main.isMovingLeft = false;
    if (!route7.canMoveRight())
      main.isMovingRight = false;
    if (!route7.canMoveUp())
      main.isMovingUp = false;
    if (!route7.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 355*heightRatio;
      switchValMain=17;
    }
    if (main.x > 1100*widthRatio)
    {
      main.x=20*widthRatio;
      main.y = 355*heightRatio;
      switchValMain=31;
    }
    hitr7 = hitTrainer(route7);
    if (hitr7 != null)
      if (!hitr7.defeated)
      {
        startBattle = new Battle(mainT, hitr7, treeBack);
        switchValMainTemp=30;
        switchValMain=7;
      }
    break;
  case 31:
    innit31();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y = 355*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : route8.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route8.renderTerrain();
    if (!route8.canMoveLeft())
      main.isMovingLeft = false;
    if (!route8.canMoveRight())
      main.isMovingRight = false;
    if (!route8.canMoveUp())
      main.isMovingUp = false;
    if (!route8.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 265*heightRatio;
      switchValMain=30;
    }
    if (main.y < -45*heightRatio)
    {
      main.x=215*widthRatio;
      main.y = 600*heightRatio;
      switchValMain=32;
    }
    hitr8 = hitTrainer(route8);
    if (hitr8 != null)
      if (!hitr8.defeated)
      {
        startBattle = new Battle(mainT, hitr8, treeBack);
        switchValMainTemp=31;
        switchValMain=7;
      }
    break;
  case 32:
    innit32();
    i++;
    if (battleLost)
    {
      main.x=215*widthRatio;
      main.y = 600*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : route9.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route9.renderTerrain();
    if (!route9.canMoveLeft())
      main.isMovingLeft = false;
    if (!route9.canMoveRight())
      main.isMovingRight = false;
    if (!route9.canMoveUp())
      main.isMovingUp = false;
    if (!route9.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y > 650*heightRatio)
    {
      main.x=870*widthRatio;
      main.y = 10*heightRatio;
      switchValMain=31;
    }
    if (main.x > 1100*widthRatio)
    {
      main.x=20*widthRatio;
      main.y = 350*heightRatio;
      switchValMain=33;
    }
    hitr9 = hitTrainer(route9);
    if (hitr9 != null)
      if (!hitr9.defeated)
      {
        startBattle = new Battle(mainT, hitr9, treeBack);
        switchValMainTemp=32;
        switchValMain=7;
      }
    break;
  case 33:
    innit33();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y = 350*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : route10.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    route10.renderTerrain();
    if (!route10.canMoveLeft())
      main.isMovingLeft = false;
    if (!route10.canMoveRight())
      main.isMovingRight = false;
    if (!route10.canMoveUp())
      main.isMovingUp = false;
    if (!route10.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 255*heightRatio;
      switchValMain=32;
    }
    if (main.x > 1080*widthRatio)
    {
      main.x=80*widthRatio;
      main.y = 430*heightRatio;
      if (pickedFifth)
      {
        switchValMain=36;
      } else
      {
        switchValMain=34;
      }
    }
    hitr10 = hitTrainer(route10);
    if (hitr10 != null)
      if (!hitr10.defeated)
      {
        startBattle = new Battle(mainT, hitr10, treeBack);
        switchValMainTemp=33;
        switchValMain=7;
      }
    break;
  case 34:
    //startBattle.song.stop();
    //grassS.stop();
    //if(!chrisS.isPlaying())
    //  chrisS.play();
    background(0, 0, 0);
    image(chris, 430*widthRatio, 195*heightRatio);
    Dialogue caveEnter = new Dialogue("Pssst... { Hey, its me Chris { You are about to enter the Dark Cave! { Team Proto have already made it here and are causing havoc! { It's all over the news! { Apparently, whatever Zane has planned is causing the whole region to go out of whack. { This could only mean one thing... { and its not good. { The Dark Cave is rumored to be the gateway between our world and the spirit world. { In the spirit world, the God of all Pokémon, Arceus, lives. { It was told that the only Pokémon to ever rival Arceus was Genesect! { Somehow, Zane is trying to use Genesect to capture Arceus... If this happens... { Oh my! I couldn't even imagine what would happen. { The whole region could crumble! { You have to put a stop to this! { I have gathered help from people all over the region to lend you a choice between the strongest of Pokémon! Here, take your pick.");
    dialogueReturn=caveEnter.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMain++;
      dialogueCounter=0;
    }
    break;
  case 35:
    innit35();
    background(0, 0, 0);
    fill(255);
    text("Dragonite", 30*widthRatio, 45*heightRatio);
    text("Tyranitar", 30*widthRatio, 115*heightRatio);
    text("Salamence", 30*widthRatio, 185*heightRatio);
    text("Metagross", 30*widthRatio, 255*heightRatio);
    text("Garchomp", 30*widthRatio, 325*heightRatio);
    text("Hydreigon", 30*widthRatio, 395*heightRatio);
    text("Volcarona", 30*widthRatio, 465*heightRatio);
    text("Goodra", 30*widthRatio, 535*heightRatio);
    text("Noivern", 30*widthRatio, 605*heightRatio);
    image(arrow, 7*widthRatio, arrowCounter*heightRatio);
    image(chris, 700*widthRatio, 350*heightRatio);
    fifthList[j].render(700*widthRatio, 100*heightRatio);
    break;
  case 36:
    innit36();
    i++;
    if (battleLost)
    {
      main.x=80*widthRatio;
      main.y = 430*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : darkCave1.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    darkCave1.renderTerrain();
    if (!darkCave1.canMoveLeft())
      main.isMovingLeft = false;
    if (!darkCave1.canMoveRight())
      main.isMovingRight = false;
    if (!darkCave1.canMoveUp())
      main.isMovingUp = false;
    if (!darkCave1.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < 25*widthRatio)
    {
      main.x=1000*widthRatio;
      main.y = 350*heightRatio;
      switchValMain=33;
    }
    if (main.x > 1100*widthRatio)
    {
      main.x=20*widthRatio;
      main.y = 435*heightRatio;
      switchValMain=37;
    }
    hitdc1 = hitTrainer(darkCave1);
    if (hitdc1 != null)
      if (!hitdc1.defeated)
      {
        startBattle = new Battle(mainT, hitdc1, caveBack);
        switchValMainTemp=36;
        switchValMain=7;
      }
    break;
  case 37:
    innit37();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y = 435*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : darkCave2.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    darkCave2.renderTerrain();
    if (!darkCave2.canMoveLeft())
      main.isMovingLeft = false;
    if (!darkCave2.canMoveRight())
      main.isMovingRight = false;
    if (!darkCave2.canMoveUp())
      main.isMovingUp = false;
    if (!darkCave2.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 160*heightRatio;
      switchValMain=36;
    }
    if (main.y < -45*heightRatio)
    {
      main.x=245*widthRatio;
      main.y = 600*heightRatio;
      switchValMain=38;
    }
    hitdc2 = hitTrainer(darkCave2);
    if (hitdc2 != null)
      if (!hitdc2.defeated)
      {
        startBattle = new Battle(mainT, hitdc2, caveBack);
        switchValMainTemp=37;
        switchValMain=7;
      }
    break;
  case 38:
    innit38();
    i++;
    if (battleLost)
    {
      main.x=245*widthRatio;
      main.y = 600*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : darkCave3.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    darkCave3.renderTerrain();
    if (!darkCave3.canMoveLeft())
      main.isMovingLeft = false;
    if (!darkCave3.canMoveRight())
      main.isMovingRight = false;
    if (!darkCave3.canMoveUp())
      main.isMovingUp = false;
    if (!darkCave3.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.y > 650*heightRatio)
    {
      main.x=835*widthRatio;
      main.y = 10*heightRatio;
      switchValMain=37;
    }
    if (main.x > 1100*widthRatio)
    {
      main.x=20*widthRatio;
      main.y = 375*heightRatio;
      switchValMain=39;
    }
    hitdc3 = hitTrainer(darkCave3);
    if (hitdc3 != null)
      if (!hitdc3.defeated)
      {
        startBattle = new Battle(mainT, hitdc3, caveBack);
        switchValMainTemp=38;
        switchValMain=7;
      }
    break;
  case 39:
    innit39();
    i++;
    if (battleLost)
    {
      main.x=20*widthRatio;
      main.y = 375*heightRatio;
      mainT.reset();
      //send();
      battleLost=false;
      for (TrainerHit trainer : darkCave4.trainers)
      {
        trainer.trainer.softReset();
      }
    }
    darkCave4.renderTerrain();
    if (!darkCave4.canMoveLeft())
      main.isMovingLeft = false;
    if (!darkCave4.canMoveRight())
      main.isMovingRight = false;
    if (!darkCave4.canMoveUp())
      main.isMovingUp = false;
    if (!darkCave4.canMoveDown())
      main.isMovingDown = false;
    main.moveLeft();
    main.moveRight();
    main.moveUp();
    main.moveDown();
    if (main.x < -45*widthRatio)
    {
      main.x=1050*widthRatio;
      main.y = 155*heightRatio;
      switchValMain=38;
    }
    if (main.y < -45*heightRatio)
    {
      main.x=515*widthRatio;
      main.y = 340*heightRatio;
      switchValMain=40;
      main.isMovingUp = false;
    }
    hitdc4 = hitTrainer(darkCave4);
    if (hitdc4 != null)
      if (!hitdc4.defeated)
      {
        startBattle = new Battle(mainT, hitdc4, caveBack);
        switchValMainTemp=39;
        switchValMain=7;
      }
    break;
  case 40: 
    innit40();
    finalA.renderTerrain();
    startBattle = new Battle(mainT, zane, caveBack);
    if (startBattle.battleWon())
    {
      switchValMain=42;
    }
    Dialogue zaneMonologue2 = new Dialogue("Well then... { I thought I told you to not follow me! { You shouldn't have come here... { Your a smart guy, I bet you already know my plan... With Arceus at my command, I could tear down the Hack Region and shape it into a society ruled by Team Proto! No one will ever stand in our way and true power will be mine! Now Genesect! Use your power to summon { Arceus! { GENESECT! { BOOM!!");
    dialogueReturn=zaneMonologue2.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMain++;
      switchVal2=0;
      dialogueCounter=0;
      if (!addArceus)
      {
        mainT.addPoke(arceus);  
        addArceus=true;
      }
    }
    break;
  case 41: 
    innit41();
    if (startBattle.battleWon())
    {
      switchValMain++;
    }
    if (battleLost)
    {
      mainT.reset();
      //send();
      battleLost=false;
      zane.reset();
      switchValMain=40;
    }
    finalB.renderTerrain();
    Dialogue zaneMonologue4 = new Dialogue("... { ARCEUS!! { *Arceus seems to want to help you defeat Zane* { ARCEUS!! { WHAT!! { Arceus how dare you help this scum! { Fine then, I'll have to do this the hard way. { Bring it on!");
    dialogueReturn=zaneMonologue4.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMainTemp=41;
      switchValMain=7;
      dialogueCounter=0;
    }
    break;
  case 42:
    innit42();
    background(0, 0, 0);
    image(loadImage("ZaneC.png"), 430*widthRatio, 195*heightRatio);
    Dialogue zaneEnd = new Dialogue("NO!! { This can't be!! { How did you do it? { All my plans... { RUINED!!!!");
    dialogueReturn=zaneEnd.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMain++;
      dialogueCounter=0;
    }
    break;
  case 43: 
    //startBattle.song.stop();
    //if(!caveS.isPlaying())
    //  caveS.play();
    finalC.renderTerrain();
    Dialogue chrisFinal = new Dialogue("Well Done! { I knew I could count on you to put a stop to Zane! You did a great service to the region and every is very thankful! Zane will be locked up and stripped of his Pokémon for a very long time for what he tried to do. { As for Arceus and Genesect, Arceus has already left for the spirit world and took Genesect with him to be locked up. { Well done trainer, you truly made the Hack Region proud!");
    dialogueReturn=chrisFinal.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMain++;
      dialogueCounter=0;
    }
    break;
  case 44:
    //startBattle.song.stop();
    //if(!caveS.isPlaying())
    //  caveS.play();
    background(0, 0, 0);
    Dialogue credits = new Dialogue("Thank you so much for playing Pokémon Hack Version! This game was made by Riley Croker for his final project in Physical Computing. { He would like to make sure to shout out the Pokémon Company for using/altering a lot of their sprites. Thank you for playing!");
    dialogueReturn=credits.render(dialogueCounter);
    if (dialogueReturn)
    {
      switchValMain++;
      dialogueCounter=0;
    }
    break;
  case 45:
    //startBattle.song.stop();
    //if(!caveS.isPlaying())
    //  caveS.play();
    background(0, 0, 0);
    break;
  }
}

//void send()
//{
//  message = "[" + outgoingBattleState1 + "," + outgoingBattleState2 + "," + outgoingBattleState3 + "," + outgoingBattleState4 + "," + outgoingBattleState5 + "," + outgoingBattleState6 + "," + ambianceState + "]\n";  
//  port.write(message);
//  println("message is: " + message);
//}

void mousePressed()
{
  switch(switchValMain)
  {
  case 0:
    switchValMain++;
    break;
  case 1:
    switchValMain++;
    break;
  case 2:
    switchValMain++;
    mainT = new Trainer("Main", grassy, new Dialogue(" "), starterList[j].copyPok());
    break;
  case 3: 
    switchValMain++;
    break;
  case 4:
    switchValMain++;
    break;
  case 5:
    switchValMain++;
    break;
  case 6:
    switchValMain+=2;
    break;
  case 8:
    switchValMain++;
    break;
  case 9:
    switchValMain++;
    break;
  case 11:
    switchValMain++;
    break;
  case 12:
    switchValMain++;
    break;
  case 13:
    switchValMain++;
    break;
  case 14:
    switchValMain++;
    break;
  case 16:
    switchValMain=18;
    break;
  case 18:
    switchValMain=19;
    break;
  case 19:
    switchValMain=20;
    break;
  case 20:
    switchValMain=21;
    break;
  case 21:
    switchValMain=22;
    main.x=530;
    main.y=301;
    break;
  case 22:
    switchValMain=23;
    break;
  case 23:
    switchValMain=24;
    break;
  case 17:
    switchValMain=30;
    break;
  case 30:
    switchValMain=31;
    break;
  case 31:
    switchValMain=32;
    break;
  case 32:
    switchValMain=33;
    break;
  case 33:
    switchValMain=34;
    break;
  case 34:
    switchValMain=35;
    break;
  case 36:
    switchValMain=37;
    break;
  case 37:
    switchValMain=38;
    break;
  case 38:
    switchValMain=39;
    break;
  case 39:
    main.x=525;
    main.y = 340;
    switchValMain=40;
    break;
  case 40:
    switchValMain=41;
    break;
  case 41:
    switchValMain=42;
    break;
  }
}


void keyPressed()
{
  switch(switchValMain)
  {
  case 0:
    if (key == 'c')
    {
      switchValMain++;
    }
    break;
  case 1:
    switch(switchVal2)
    {
    case 0:
      if (key == 'c')
        dialogueCounter++; //intro
      break;
    case 1:
      if (key == 'c')
        dialogueCounter++; //intro 2
      break;
    }
    break;
  case 2:
    if (key =='w' && arrowCounter > 27)
    {
      j--;
      arrowCounter-=70;
    }
    if (key =='s' && arrowCounter <= 580)
    {
      j++;
      arrowCounter+=70;
    }
    if (key=='c')
    {
      mainT = new Trainer("Main", grassy, new Dialogue(" "), starterList[j].copyPok());
      startBattle = new Battle(mainT, chrisT, facBack);
      switchValMainTemp=3;
      switchValMain=7;
    }
    break;
  case 3:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  case 4: case 5: case 6: case 8: case 11: case 12: case 13: case 16: case 17: case 18: case 19: case 20: case 21: case 25: case 26: case 27: case 28: case 29: case 30: case 31: case 32: case 33: case 36: case 37: case 38: case 39:
    if (switchValMain==4) curRoute=lab;
    else if (switchValMain==5) curRoute=route0;
    else if (switchValMain==6) curRoute=route1;
    else if (switchValMain==8) curRoute=route2;
    else if (switchValMain==11) curRoute=route3;
    else if (switchValMain==12) curRoute=route4;
    else if (switchValMain==13) curRoute=route5;
    else if (switchValMain==16) curRoute=route6a;
    else if (switchValMain==17) curRoute=route6b;
    else if (switchValMain==18) curRoute=celltower1b;
    else if (switchValMain==19) curRoute=celltower2b;
    else if (switchValMain==20) curRoute=celltower3b;
    else if (switchValMain==21) curRoute=celltower4b;
    else if (switchValMain==25) curRoute=celltower1a;
    else if (switchValMain==26) curRoute=celltower2a;
    else if (switchValMain==27) curRoute=celltower3a;
    else if (switchValMain==28) curRoute=celltower4a;
    else if (switchValMain==29) curRoute=cellTower5a;
    else if (switchValMain==30) curRoute=route7;
    else if (switchValMain==31) curRoute=route8;
    else if (switchValMain==32) curRoute=route9;
    else if (switchValMain==33) curRoute=route10;
    else if (switchValMain==36) curRoute=darkCave1;
    else if (switchValMain==37) curRoute=darkCave2;
    else if (switchValMain==38) curRoute=darkCave3;
    else if (switchValMain==39) curRoute=darkCave4;
    if (key == 'a')
    {
      if (main.isMovingLeft && !curRoute.canMoveLeft())
        main.isMovingLeft = false;
      if (curRoute != null && curRoute.canMoveLeft()) 
        main.isMovingLeft = true;
      i++;
      if (i>50)
        i=0;
      if (i<25)
        main.setCurrImage(main.leftW1);
      else if (i>=25)
        main.setCurrImage(main.leftW2);
    } else if (key == 'd')
    {
      if (curRoute != null && curRoute.canMoveRight()) 
        main.isMovingRight = true;
      i++;
      if (i>50)
        i=0;
      if (i<25)
        main.setCurrImage(main.rightW1);
      else if (i>=25)
        main.setCurrImage(main.rightW2);
    } else if (key == 'w')
    {
      if (curRoute != null && curRoute.canMoveUp())
        main.isMovingUp = true;
      i++;
      if (i>50)
        i=0;
      if (i<25)
        main.setCurrImage(main.backW1);
      else if (i>=25)
        main.setCurrImage(main.backW2);
    } else if (key == 's')
    {
      if (curRoute != null && curRoute.canMoveDown()) 
        main.isMovingDown = true;
      i++;
      if (i>50)
        i=0;
      if (i<25)
        main.setCurrImage(main.frontW1);
      else if (i>=25)
        main.setCurrImage(main.frontW2);
    }
    break;
  case 7:
    if (battleStart)
    {
      switch(battleCounter)
      {
      case 0:
        if (key=='d')
          battleCounter++;
        else if (key=='c')
        {
          battleCounter+=2;
          arrowCordAtk=247*heightRatio;
        }
        break;
      case 1:
        if (key=='a')
          battleCounter--;
        else if (key=='c')
        {
          battleCounter+=2;
          arrowCordSwt=247*heightRatio;
        }
        break;
      case 2:
        if (key=='x')
          battleCounter-=2;
        else if (key=='w' && int(arrowCordAtk)>int(247*heightRatio))
          arrowCordAtk-=70*heightRatio;
        else if (key=='s' && int(arrowCordAtk)<int(457*heightRatio))
          arrowCordAtk+=70*heightRatio;
        else if (key=='c' && int(arrowCordAtk)==int(247*heightRatio) && startBattle.mainCurr.move1.ppLeft>0)
        {
          battleTurn1(startBattle, startBattle.mainCurr.move1, startBattle.enemyCurr.useRandomMove());
        } else if (key=='c' && int(arrowCordAtk)==int(317*heightRatio) && startBattle.mainCurr.move2.ppLeft>0)
        {
          battleTurn1(startBattle, startBattle.mainCurr.move2, startBattle.enemyCurr.useRandomMove());
        } else if (key=='c' && int(arrowCordAtk)==int(387*heightRatio) && startBattle.mainCurr.move3.ppLeft>0)
        {
          battleTurn1(startBattle, startBattle.mainCurr.move3, startBattle.enemyCurr.useRandomMove());
        } else if (key=='c' && int(arrowCordAtk)==int(457*heightRatio) && startBattle.mainCurr.move4.ppLeft>0)
        {
          battleTurn1(startBattle, startBattle.mainCurr.move4, startBattle.enemyCurr.useRandomMove());
        }
        break;
      case 3:
        if (key=='x')
          battleCounter-=2;
        else if (key=='w' && int(arrowCordSwt)>int(247*heightRatio)) {
          arrowCordSwt-=45*heightRatio;
          println(arrowCordSwt/heightRatio);
        } else if (key=='s' && int(arrowCordSwt)<int(472*heightRatio)) {
          arrowCordSwt+=45*heightRatio;
          println(arrowCordSwt/heightRatio);
        } else if (key=='c' && int(arrowCordSwt)==int(247*heightRatio) && !mainT.returnPos(1).fainted)
        {
          startBattle.switchMon(1);
          battleCounter-=3;
        } else if (key=='c' && int(arrowCordSwt)==int(292*heightRatio) && !mainT.returnPos(2).fainted)
        {
          startBattle.switchMon(2);
          battleCounter-=3;
        } else if (key=='c' && int(arrowCordSwt)==int(337*heightRatio) && !mainT.returnPos(3).fainted)
        {
          startBattle.switchMon(3);
          battleCounter-=3;
        } else if (key=='c' && int(arrowCordSwt)==int(382*heightRatio) && !mainT.returnPos(4).fainted)
        {
          startBattle.switchMon(4);
          battleCounter-=3;
        } else if (key=='c' && int(arrowCordSwt)==int(427*heightRatio) && !mainT.returnPos(5).fainted)
        {
          startBattle.switchMon(5);
          battleCounter-=3;
        } else if (key=='c' && int(arrowCordSwt)==int(472*heightRatio) && !mainT.returnPos(6).fainted)
        {
          startBattle.switchMon(6);
          battleCounter-=3;
        }
      case 4:
        if (key == ENTER)
        {
          startBattle.main.checkIfDefeated();
          if (startBattle.main.defeated)
            return;
          arrowCordSwt=247*heightRatio;
          battleCounter=3;
          renderBattle(battleCounter, startBattle);
        } else if (battleCounter==4)
        { 
          Dialogue mainFainted = new Dialogue("Your " + startBattle.mainCurr.name + " has fainted, Press Enter to Continue");
          mainFainted.render(0);
          //send();
        }
        break;
      case 5:
        if (key == ENTER)
        {
          startBattle.enemy.checkIfDefeated();
          if (startBattle.enemy.defeated)
            return;
          startBattle.sendRandPok();
          battleCounter=0;
        } else
        {
          Dialogue enemyFainted = new Dialogue("Enemy " + startBattle.enemyCurr.name + " has fainted, Press Enter to Continue");
          enemyFainted.render(0);
        }
        break;
      case 6:
        if (int(arrowCordAtk)==int(247*heightRatio))
        {
          battleTurn2(startBattle, startBattle.mainCurr.move1, startBattle.enemyCurr.useRandomMove());
        } else if (int(arrowCordAtk)==int(317*heightRatio))
        {
          battleTurn2(startBattle, startBattle.mainCurr.move2, startBattle.enemyCurr.useRandomMove());
        } else if (int(arrowCordAtk)==int(387*heightRatio))
        {
          battleTurn2(startBattle, startBattle.mainCurr.move3, startBattle.enemyCurr.useRandomMove());
        } else if (int(arrowCordAtk)==int(457*heightRatio))
        {
          battleTurn2(startBattle, startBattle.mainCurr.move4, startBattle.enemyCurr.useRandomMove());
        }
        break;
      case 7:
        if (key=='c')
          battleCounter = 0;
        break;
      case 8:
        if (key=='c')
          battleDone1=true;
        break; 
      case 9:
        if (key=='c')
        {
          battleCounter=10;
          //send();
        }
        break;
      case 10:
        if (key=='c')
          battleCounter=0;
        break;
      case 11:
        if (key=='c')
        {
          battleDone=true;
        }
        break;
      }  
      break;
    }
  case 9:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  case 10:
    if (key =='w' && arrowCounter > 27)
    {
      j--;
      arrowCounter-=70;
    }
    if (key =='s' && arrowCounter <= 580)
    {
      j++;
      arrowCounter+=70;
    }
    if (key=='c')
    {
      mainT.addPoke(secondaryList[j]);
      pickedSecond = true;
      main.isMovingLeft = false;
      main.isMovingRight = false;
      main.isMovingUp = false;
      main.isMovingDown = false;
      switchValMain++;
      main.x=210*widthRatio;
      main.y=20*heightRatio;
    }
    break;
  case 14:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  case 15:
    if (key =='w' && arrowCounter > 27)
    {
      j--;
      arrowCounter-=70;
    }
    if (key =='s' && arrowCounter <= 580)
    {
      j++;
      arrowCounter+=70;
    }
    if (key=='c')
    {
      mainT.addPoke(thirdList[j]);
      pickedThird = true;
      main.isMovingLeft = false;
      main.isMovingRight = false;
      main.isMovingUp = false;
      main.isMovingDown = false;
      switchValMain++;
    }
    break;
  case 22:
    if (key == 'c')
      dialogueCounter++; 
    break;
  case 23:
    if (key == 'c')
      dialogueCounter++; 
    break;
  case 24:
    if (key =='w' && arrowCounter > 27)
    {
      j--;
      arrowCounter-=70;
    }
    if (key =='s' && arrowCounter <= 580)
    {
      j++;
      arrowCounter+=70;
    }
    if (key=='c')
    {
      mainT.addPoke(fourthList[j]);
      main.isMovingLeft = false;
      main.isMovingRight = false;
      main.isMovingUp = false;
      main.isMovingDown = false;
      switchValMain=17;
      main.x=20*widthRatio;
      main.y=355*heightRatio;
      cellTower=true;
    }
    break;
  case 34:
    if (key == 'c')
      dialogueCounter++; 
    break;
  case 35:
    if (key =='w' && arrowCounter > 27)
    {
      j--;
      arrowCounter-=70;
    }
    if (key =='s' && arrowCounter <= 580)
    {
      j++;
      arrowCounter+=70;
    }
    if (key=='c')
    {
      mainT.addPoke(fifthList[j]);
      pickedFifth=true;
      main.isMovingLeft = false;
      main.isMovingRight = false;
      main.isMovingUp = false;
      main.isMovingDown = false;
      main.x=80*widthRatio;
      main.y = 430*heightRatio;
      switchValMain=36;
    }
    break;
  case 40:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  case 41:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  case 42:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  case 43:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  case 44:
    if (key == 'c')
      dialogueCounter++; //intro 2
    break;
  }
}


void keyReleased()
{
  switch(switchValMain)
  {
  case 4: case 5: case 6: case 8: case 11: case 12: case 13: case 16: case 17: case 18: case 19: case 20: case 21: case 25: case 26: case 27: case 28: case 29: case 30: case 31: case 32: case 33: case 36: case 37: case 38: case 39:
    if (key == 'a')
    {
      main.isMovingLeft = false;
      main.setCurrImage(main.leftS);
    } else if (key == 'd')
    {
      main.isMovingRight = false;
      main.setCurrImage(main.rightS);
    } else if (key == 'w')
    {
      main.isMovingUp = false;
      main.setCurrImage(main.backS);
    } else if (key == 's')
    {
      main.isMovingDown = false;
      main.setCurrImage(main.frontS);
    }
    break;
  }
}

void waitD()
{
  int i = millis();
  while (millis()-i<1000)
  {
  }
}

Trainer hitTrainer(Terrain aTerrain)
{
  for (TrainerHit trainerHit : aTerrain.trainers)
  {
    if (trainerHit.hitTrainer(main.x, main.y))
      return trainerHit.trainer;
  }
  return null;
}

void battleTurn1(Battle aBattle, Move myMove, Move enemyMove)
{
  if (aBattle.mainCurr.speed >= aBattle.enemyCurr.speed)
  {
    if (myMove.useMove())
    {
      move = new Dialogue("Your " + aBattle.mainCurr.name + " used " + myMove.name);
      move.render(0);
      boolean faint = startBattle.myTurn(myMove);
      if (faint)
        battleCounter=5;
      else
        battleCounter=6;
    } else 
    {
      move = new Dialogue("Your " + aBattle.mainCurr.name + " used " + myMove.name + ", but it missed!");
      move.render(0);
      battleCounter=6;
    }
  } else
  {
    if (enemyMove.useMove())
    {
      move = new Dialogue("Enemy " + aBattle.enemyCurr.name + " used " + enemyMove.name);
      move.render(0);
      boolean faint = startBattle.enemyTurn(enemyMove);
      if (faint)
        battleCounter=4; 
      else
        battleCounter=6;
    } else
    {
      move = new Dialogue("Enemy " + aBattle.enemyCurr.name + " used " + enemyMove.name + ", but it missed!");
      move.render(0);
      battleCounter=6;
    }
  }
}
void battleTurn2(Battle aBattle, Move myMove, Move enemyMove)
{

  if (aBattle.mainCurr.speed < aBattle.enemyCurr.speed)
  {
    if (myMove.useMove())
    {
      move = new Dialogue("Your " + aBattle.mainCurr.name + " used " + myMove.name);
      move.render(0);
      boolean faint = startBattle.myTurn(myMove);
      if (faint)
        battleCounter=5;
      else
        battleCounter=7;
    } else 
    {
      move = new Dialogue("Your " + aBattle.mainCurr.name + " used " + myMove.name + ", but it missed!");
      move.render(0);
      battleCounter=7;
    }
  } else
  {
    if (enemyMove.useMove())
    {
      move = new Dialogue("Enemy " + aBattle.enemyCurr.name + " used " + enemyMove.name);
      move.render(0);
      boolean faint = startBattle.enemyTurn(enemyMove);
      if (faint)
        battleCounter=4; 
      else
        battleCounter=7;
    } else
    {
      move = new Dialogue("Enemy " + aBattle.enemyCurr.name + " used " + enemyMove.name + ", but it missed!");
      move.render(0);
      battleCounter=7;
    }
  }
}

void renderBattle(int aBattleCounter, Battle battle)
{
  battleStart=true;
  switch(aBattleCounter)
  {
  case 0:
    battle.renderNormAtk();
    battle.enemy.renderPokeLeft(50*widthRatio, 210*heightRatio);
    break;
  case 1:
    battle.renderNormSwt();
    battle.enemy.renderPokeLeft(50*widthRatio, 210*heightRatio);
    break;
  case 2:
    battle.renderMoveSelect();
    image(arrowBlack, 558*widthRatio, arrowCordAtk);
    battle.enemy.renderPokeLeft(50*widthRatio, 210*heightRatio);
    break;
  case 3:
    battle.renderPokemonSwitch();
    image(arrowBlack, 558*widthRatio, arrowCordSwt);
    Dialogue switchDi = new Dialogue("Send in a new pokemon!");
    switchDi.render(0);
    battle.enemy.renderPokeLeft(50*widthRatio, 210*heightRatio);
    break;
  case 9:
    startBattle.renderBegin();
    break;
  case 10:
    startBattle.renderBegin();
    break;
  }
}
