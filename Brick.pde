class Brick{
  float bX;
  float bY;
  float size=30;
  
  void display(){
    rectMode(CENTER);
    rect(bX,bY,size,size);
    
  }
  
  Brick(int x,int y){
    bX=x;
    bY=y;
  }
}

