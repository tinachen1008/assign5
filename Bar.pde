class Bar{
  float x;
  float y;
  float len;
  
  void move(){
    x = mouseX;
    if (x-len/2<0){
      x=len/2;
    }
    if(x+len/2>640){
      x=width-len/2;
    }
  }
  void display(){
    rectMode(CENTER);
    rect(x,y,len,10);
    fill(255);
    stroke(255);
    smooth(255);
  }
  
  Bar(float len){
    this.y = height-10;
    this.len = len;
  }
}
