
class Battle
{
  PImage arrow = loadImage("ArrowBlack.png");
  Trainer main;
  Trainer enemy;
  Pokemon mainCurr;
  Pokemon enemyCurr;
  PImage background;
  Dialogue missed = new Dialogue("Your attack missed!");
  Dialogue missedE = new Dialogue("Your enemy's attack missed!");
  PImage mainP = loadImage("MainBattle.png");
  Dialogue move;
  
  Battle(Trainer aMain,Trainer aEnemy,PImage back)
  {
    main = aMain;
    enemy = aEnemy;
    mainCurr = main.slot1;
    enemyCurr = enemy.slot1;
    background = back;
  }
  
  void renderNormAtk()
  {
      image(background,0,0);
      enemyCurr.render(750*widthRatio,100*heightRatio);
      enemyCurr.renderBattleBox(50*widthRatio,50*heightRatio);
      Dialogue battletext = new Dialogue("Choose an Action:");
      battletext.render(0);
      mainCurr.renderBack(170*widthRatio,368*heightRatio);
      mainCurr.renderBattleBox(520*widthRatio,350*heightRatio);
      fill(0);
      textSize(30*((widthRatio+heightRatio)/2));
      text("Attack           Switch",580*widthRatio,577*heightRatio);
      image(arrow,550*widthRatio,560*heightRatio);
  }
  
  void renderBegin()
  {
    image(background,0,0); 
    image(enemy.trainPic,750*widthRatio,100*heightRatio);
    image(mainP,150*widthRatio,380*heightRatio);
  }
  
  void renderNormSwt()
  {
      image(background,0,0);
      enemyCurr.render(750*widthRatio,100*heightRatio);
      enemyCurr.renderBattleBox(50*widthRatio,50*heightRatio);
      Dialogue battletext = new Dialogue("Choose an Action:");
      battletext.render(0);
      mainCurr.renderBack(170*widthRatio,368*heightRatio);
      mainCurr.renderBattleBox(520*widthRatio,350*heightRatio);
      fill(0);
      textSize(30*((widthRatio+heightRatio)/2));
      text("Attack           Switch",580*widthRatio,577*heightRatio);
      image(arrow,750*widthRatio,560*heightRatio);
  }
  
  void renderMoveSelect()
  {
      image(background,0,0);
      enemyCurr.render(750*widthRatio,100*heightRatio);
      enemyCurr.renderBattleBox(50*widthRatio,50*heightRatio);
      Dialogue battletext = new Dialogue("Choose an Action:");
      battletext.render(0);
      mainCurr.renderBack(170*widthRatio,368*heightRatio);
      mainCurr.renderBattleBox(520*widthRatio,350*heightRatio);
      fill(0);
      textSize(30*((widthRatio+heightRatio)/2));
      text("Attack           Switch",580*widthRatio,577*heightRatio);
      image(arrow,550*widthRatio,560*heightRatio);
      mainCurr.renderMoveBox(550*widthRatio,215*heightRatio);
  }
  
  void renderPokemonSwitch()
  {
      main.renderSwitchBox(550*widthRatio,215*heightRatio);
  }
  
  void switchMon(int i)
  {
    if(main.returnPos(i).name != "None")
      mainCurr = main.returnPos(i);
  }
  
  void enemySwitchMon(int i)
  {
    enemyCurr = enemy.returnPos(i);
  }
  
  void sendRandPok()
  {
    int i = 0;
    while(enemy.returnPos(i).fainted)
    {
        i = int(random(0,7));
    }
    enemyCurr=enemy.returnPos(i);
  }
  
  boolean myTurn(Move myMove)
  {
     enemyCurr.useMoveOn(myMove,mainCurr);
     enemyCurr.checkIfFainted();
     if(enemyCurr.fainted)
        return true;
     return false;
  }
  
  boolean enemyTurn(Move enemyMove)
  {
     mainCurr.useMoveOn(enemyMove,enemyCurr);
     mainCurr.checkIfFainted();
     if(mainCurr.fainted)
        return true;
     return false;
  }
  
  boolean battleWon()
  {
    enemy.checkIfDefeated();
    return enemy.defeated;
  }
  
  boolean battleLost()
  {
    main.checkIfDefeated();
    return main.defeated;
  }
  
  void waitD()
  {
    int i = millis();
    while(millis()-i<1000)
     {
     }  
  }
  
  
}
