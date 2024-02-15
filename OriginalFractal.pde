void setup() {
  size(500, 500);
}

public void draw(){
  background(0);
  noFill();
  for(int i = 0; i < width; i += 100){
    for(int j = 0; j < height; j += 100){
      beginShape();
        for(float a = 0; a < 2*PI; a+= 0.01){
          float siz = 3;
          float x = siz*16*pow(sin(a), 3);
          float y = -siz*(13*cos(a) - 5*cos(2*a) - 2*cos(3*a) - cos(4*a));
          vertex(50 + x + i, 50 + y + j);
        }
      endShape();
    }
  }
  myHeart(width/2, height/2, 10, 0);
}

public void myHeart(float x, float y, float siz, float d){
  fill(255, 0, 0);
  stroke(255);
  beginShape();
  for(float a = 0; a < 2*PI; a+= 0.01){
    float b = siz*16*pow(sin(a), 3);
    float c = -siz*(13*cos(a) - 5*cos(2*a) - 2*cos(3*a) - cos(4*a));
    if(d == 0)
      vertex(b+x, c+y);
    else if(d == 1)
      vertex(-c+x, b+y);
    else if(d == 2)
      vertex(-b+x, -c+y);
    else
      vertex(c+x, -b+y);
  }
  endShape();

  if(siz >= 1){
    for(int i = 0; i < 4; i++){
      myHeart(width/2, height/2, siz/2, i);
    }
  }
}
