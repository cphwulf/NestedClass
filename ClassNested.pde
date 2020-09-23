int pixSize; //<>//
PFont f;
int margen;
int[][] myMultArr;

void setup() {
  size(100, 100);
  myMultArr = new int[height][width];
  initMultArr(myMultArr);
  pixSize=width/15;
  margen=width/20;
  f = loadFont("Serif-48.vlw");
}


void initMultArr(int[][] multArr) {
  println(multArr[0].length);
  for (int y=0; y<multArr.length; y++) {
    for (int x=0; x<multArr[0].length; x++) {
      multArr[y][x]=x*y;
    }
  }
}

void draw() {

  textFont(f, 12);
  textSize(pixSize/4);
  background(120);
  rectMode(CENTER);
  for (int y=0; y<myMultArr.length; y++) {
    for (int x=0; x<myMultArr[0].length; x++) {
      println("Val: " + myMultArr[y][x]);
      /*
      textFont(f,16);  
       fill(255);
       text((x+1)*y, (x+2)*pixSize-margen/2, y*pixSize );
       noFill();
       //fill(120,10,0);
       rect(y*pixSize+margen, (x+1)*pixSize, pixSize, pixSize);
       */
    }
  }
  noLoop();
}
