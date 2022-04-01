class Move
{
  String name;
  Type type;
  int power;
  int pp;
  int accuracy;
  boolean physical;
  PImage physicalPic = loadImage("Physical.png");
  PImage specialPic = loadImage("Special.png");
  
  int ppLeft;
                                           
  Move(String aName,Type aType, int aPower,int aPP, int aAccuracy, boolean physicalTemp)
  {
    name = aName;
    type = aType;
    power = aPower;
    accuracy=aAccuracy;
    pp = aPP;
    accuracy = aAccuracy;
    physical = physicalTemp;
    ppLeft = pp;
  }
  
  Move copyMove()
  {
    Move move = new Move(name,type,power,pp,accuracy,physical);
    return move;
  }
  
  boolean useMove()
  {
    int r = int(random(0,101));
    ppLeft--;
    if(ppLeft<=0)
      ppLeft=0;
    if(r>accuracy)
      return false;
    return true;
  }
  
  void reset()
  {
    ppLeft = pp;   
  }
  
  void render(float x, float y)
  {
    fill(0);
    textSize(28*((widthRatio+heightRatio)/2));
    text(name + "   " + ppLeft + "/" + pp,x,y);
    if(physical)
      image(physicalPic,x+300*widthRatio,y-20*heightRatio);
    else
      image(specialPic,x+300*widthRatio,y-20*heightRatio);
    //type.render(x+295*widthRatio,y-5*heightRatio);
  }
}
