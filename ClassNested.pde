int pixSize;
PFont f;
int margen;

void setup() {
  size(800, 600);
  pixSize=width/15;
  margen=width/20;
  f = loadFont("Serif-48.vlw");
}

void draw() {

  textFont(f, 12);
  textSize(pixSize/4);
  background(120);
  rectMode(CENTER);
  int x=0;
  for (int y=1; y<=10; y++) {

    fill(123, 123, 0);
    rect(0+margen, y*pixSize, pixSize, pixSize);
    fill(255);
    text(y + " tabel", margen/2, y*pixSize );
    for (x=0; x<10; x++) {
      textFont(f,16);  
      fill(255); //<>//
      text((x+1)*y, (x+2)*pixSize-margen/2, y*pixSize );
      noFill();
      //fill(120,10,0);
      rect(y*pixSize+margen, (x+1)*pixSize, pixSize, pixSize);
    }
  }
}
