class Brick{
  int bX;
  int bY;
  int size=30;
  
  void display(){
    rectMode(CENTER);
    rect(bX,bY,size,size);
    
  }
  
  Brick(int x,int y){
    bX=x;
    bY=y;
  }
}

