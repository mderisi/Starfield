class Particle{
  double moveX, moveY, mySpeed, myAngle;
  double x, y;
  int myColor;
  Particle(){
    x = y = 400;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*200)+100, (int)(Math.random()*200)+100, (int)(Math.random()*200)+100);
    stroke(myColor);
    moveX = (Math.cos(myAngle)) * mySpeed;
    moveY = (Math.sin(myAngle)) * mySpeed;
}
  
  void move(){
    x = x + moveX;
    y = y + moveY;
    
  }
  
  void show(){
    stroke(myColor);
    line(400, 400, (float)x, (float)y);
    
    
  }
  
}
  

class OddBallParticle extends Particle{
  OddBallParticle(){
    myColor = color((int)(Math.random()*200)+100, (int)(Math.random()*200)+100, (int)(Math.random()*200)+100);
    stroke(myColor);
    mySpeed = 1;
    x = (int)(Math.random()*400)-200;
    y = (int)(Math.random()*400)-200;
  }
}


Particle[]parts = new Particle[50];
boolean start = false;

void setup(){
  size(800, 800);
  background(256, 256, 256);

  for(int i = 0; i < parts.length; i++)
    parts[i] = new Particle();
  parts[0] = new OddBallParticle();
  parts[10] = new OddBallParticle();
}


void draw(){

  //OddBallParticle.move();
  for (int i = 0; i< parts.length; i++) {
     parts[i].move();
     parts[i].show();
  }
}



