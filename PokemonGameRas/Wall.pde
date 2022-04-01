class Wall
{
  float x;
  float y;
  float h;
  float w;
  
  Wall(float aX,float aY, float aH, float aW)
  {
    x = aX;
    y = aY;
    h = aH;
    w = aW;
  }
  
  boolean hitWall(float xCheck, float yCheck)
  {
     if(xCheck >= x && xCheck <= (x+w) && yCheck >= y && yCheck <= (y+h))
     { 
       println("wall hit");
       return true;
     }
     return false;
  }
}
