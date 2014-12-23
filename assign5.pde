Ball myBall;
Bar board;
Brick[]bricks;
int x;
int y;

void setup(){
  size(640,480);
  bricks=new Brick[50];
  for (int i=0; i<bricks.length; i++){
    bricks[i] = new Brick(x,y);
  }
  myBall=new Ball();
  board=new Bar(100);
  
}

void draw(){
  background(30,30,30);
  noStroke();
 /* myBall.move();
  fill(225);
  myBall.display();*/
  board.move();
  board.display();
  for (int i=0; i<bricks.length; i++){
    bricks[i].display();
  }
  brickMaker();
  drawLife();
  fill(225);
  begin();
  shoot();
  
}

void brickMaker() {
  //aList[0]= new Alien(50, 50);
  for(int i=0;i<50;i++){
    int ox=130;
    int oy=50;
    int distanceWidth=40;
    int distanceHeight=40;
    int numInRow=10;
    
    int row=int(i/numInRow);
    int col=int(i%numInRow);
    
    int x = ox + (distanceWidth*col);
    int y = oy + (distanceHeight*row);
   
    bricks[i]= new Brick(x,y);
  }
}

void drawLife(){
  noStroke();
  fill(230,74,96);
  text("LIFE:",10,470);
  textSize(27);
  for(int i=0;i<3;i++){
    ellipse(78+i*25,460,15,15);
    fill(230,74,96);
  }
}

void begin(){

  if (mouseX<50){
    x=50;
    y=height-20;
    ellipse(x,y,10,10);
    }else if(mouseX>590){
    x=590;
    y=height-20;
    ellipse(x,y,10,10);
    }else{
    x=mouseX;
    y=height-20;
    ellipse(x,y,10,10);
    }
}
  
void shoot(){
if(mousePressed&&(mouseButton==RIGHT)){
  myBall.display();
  myBall.move();
}
}
