
class vec2 {
  float x, y;
};

vec2 pos = new vec2();
vec2 dpos = new vec2();

vec2 scl = new vec2();
vec2 dscl = new vec2();

float oldt = 0.0;
float nowt = 0.0;

void setup() {
  /** screen size setting */
  size(640, 360);
  
  /** outline setting */
  noStroke();
  
  /** object color */
  fill(255,255,0);
  
  pos.x = 640 / 2;
  pos.y = 360 / 2;

  dpos.x = 640 / 2 + 100.0;
  dpos.y = 360 / 2 - 100.0;
  
  scl.x = 1.0;
  scl.y = 1.0;
  
  dscl.x = 0.0;
  dscl.y = 0.0;
  
  //ellipseMode(CENTER);
  background(51);
  nowt = millis() * 0.01;
  oldt = millis() * 0.01;
}

void draw() {
  nowt = millis() * 0.01;
  float dt = nowt - oldt;
  oldt = nowt;
  
  pos.x += (dpos.x - pos.x) * dt * 0.5;
  pos.y += (dpos.y - pos.y) * dt * 0.1;
  
  scl.x += (dscl.x - scl.x) * dt * 0.1;
  scl.y += (dscl.y - scl.y) * dt * 0.1;
  
  translate(pos.x, pos.y);
  scale(scl.x, scl.y);
  
  ellipse(0, 0, 20, 20);   
}