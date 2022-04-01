class Terrain
{
  PImage image;
  Player player;
  Wall[] walls;
  TrainerHit[] trainers;
  SoundFile thud = new SoundFile(PokemonGameRas.this,"thud.mp3");
  
  Terrain(PImage anImage, Player p, Wall[] aWalls)
  {
      image = anImage;
      player = p;
      walls = aWalls;
      trainers = new TrainerHit[0];
  }
  
  Terrain(PImage anImage, Player p, Wall[] aWalls, TrainerHit[] aTrainers)
  {
      image = anImage;
      player = p;
      walls = aWalls;
      trainers = aTrainers;
  }
  
  boolean canMoveUp()
  {
    if(walls != null)
      for(Wall wall : walls)
      {
        if(wall.hitWall(player.x,player.y-4*heightRatio) || wall.hitWall(player.x+48*widthRatio,player.y-4*heightRatio) || wall.hitWall(player.x+24*widthRatio,player.y-4*heightRatio))
        {
          if(player.isMovingUp)
            if(!thud.isPlaying())
              thud.play();  
          return false;
        }
      }
    return true;
  }
  
  boolean canMoveDown()
  {
    if(walls != null)
      for(Wall wall : walls)
      {
        if(wall.hitWall(player.x,player.y+52*heightRatio) || wall.hitWall(player.x+48*widthRatio,player.y+52*heightRatio) || wall.hitWall(player.x+24*widthRatio,player.y+52*heightRatio))
        {
          if(player.isMovingDown)
            if(!thud.isPlaying())
              thud.play();
          return false;
        }
      }
    return true;
  }
  
  boolean canMoveLeft()
  {
    if(walls != null)
      for(Wall wall : walls)
      {
        if(wall.hitWall(player.x-4*widthRatio,player.y) || wall.hitWall(player.x-4*widthRatio,player.y+48*heightRatio) || wall.hitWall(player.x-4*widthRatio,player.y+24*heightRatio))
        {
          if(player.isMovingLeft)
            if(!thud.isPlaying())
              thud.play();
          return false;
        }
      }
    return true;
  }
  
  boolean canMoveRight()
  {
    if(walls != null)
      for(Wall wall : walls)
      {
        if(wall.hitWall(player.x+52*widthRatio,player.y) || wall.hitWall(player.x+52*widthRatio,player.y+48*heightRatio) || wall.hitWall(player.x+52*widthRatio,player.y+24*heightRatio))
        {
          if(player.isMovingRight)
            if(!thud.isPlaying())
              thud.play();
          return false;
        }
      }
    return true;
  }
  
  void renderTerrain()
  {
    image(image,0,0);  
    player.render();
  }
}
