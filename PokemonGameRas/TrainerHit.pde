class TrainerHit
{
  float x;
  float y;
  float h;
  float w;
  Trainer trainer;
  
  TrainerHit(float aX,float aY, float aH, float aW, Trainer aTrainer)
  {
    x = aX;
    y = aY;
    h = aH;
    w = aW;
    trainer = aTrainer;
  }
  
  boolean hitTrainer(float xCheck, float yCheck)
  {
     if(xCheck >= x && xCheck <= (x+w) && yCheck >= y && yCheck <= (y+h))
     { 
       println("wall hit");
       return true;
     }
     return false;
  }
}
