ArrayList<Firework> fireworks;
PVector gravity = new PVector(0, 0.2);
//boolean left;
ArrayList<Shape> shapes = new ArrayList<Shape>();
int LSCORE;
int RSCORE;
Boolean instructionsOn=false;
String gameState;

void setup(){
 size(displayWidth, displayHeight);//displayWidth, displayHeight
  frameRate(60);
   gameState="start";
  startGame();
 //stGame();
fireworks = new ArrayList<Firework>();
  //
  //Reminder: all local objects are deleted, "Garbage Heap Collected"
}//End setup

void draw() {
  
  
  background(0);
  //
  int instructionElement = 0;
  int paddleLeftElement = 1;
  int paddleRightElement = 2;
  int ballElement = 3;
  //
  if ( instructionsOn==true ) shapes.get(instructionElement).draw(); //Annonymous Class
  
   text("- ", width/2, height/2-50);
  //bottom
  textSize(18);
  fill(255, 0, 0);
  if ( instructionsOn==false ) {
    shapes.get(ballElement).paddleBounceLeft( shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter() );
    shapes.get(ballElement).paddleBounceRight( shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).hGetter() );
    //Drawing where tokens should be
    /*for ( Shape s : shapes ) {
     s.draw();
     }
     */
    //Note: repeats basic FOR-Each like belowss
    for ( int i=1; i<shapes.size(); i++ ) {
      shapes.get(i).draw();
    //  println("here", i);
    }
  }
    if (random(1) < 0.08) {
      fireworks.add(new Firework());
    }//End instructionsOn==false
   fill(51, 50);
    noStroke();
    rect(0, 0, width, height);
    for (int i = fireworks.size()-1; i >= 0; i--) {
      Firework f = fireworks.get(i);
      f.run();
      if (f.done()) {
        fireworks.remove(i);
      }
    }
  }
  
  
 //End draw
//void stGame() {

//background(122);
//}
void startGame() {
    display(); //Landscape manditory
  //
  //Local Variables & Object Setup
 
  //Instructions, Features, and Hints for Easter Eggs
  shapes.add(instructions); //Elememt 0
  //
 
  //Paddles and Ball
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/90; //ballsize 
  int rectWidth = appWidth*1/90;   //pad width
  int rectHeight = appHeight*1/2; //pad size
  
  int colourDayRectLeft = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightRectLeft = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  int colourDayRectRight = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightRectRight = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  int colourDayBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  
  Rectangle rHexLeft = new Rectangle(appWidth*1/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectLeft, colourNightRectLeft);
  Rectangle rHexRight = new Rectangle(appWidth*38/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectRight, colourNightRectRight);
  Circle cHex = new Circle(appWidth*1/2, appHeight*1/3, xDiameter, yDiameter, colourDayBall, colourNightBall);
//new Circle(appWidth*1/2, appHeight*1/3, xDiameter, yDiameter, colourDayBall, colourNightBall);
  //
  //Shapes Global Variable, Shapes will not change
  shapes.add(rHexLeft); //Element 1, Left Paddle
  shapes.add(rHexRight); //Element 2, Right Paddle
  shapes.add(cHex); //Element 3, Pong BALL
   int ballElement = 3;
    shapes.add(ballElement, cHex);
  
  //background(0);
  //textAlign(CENTER);
  //textSize(18);
  //fill(255, 0, 0);
  //text("Pong WS YH to move, ", width/2, height/2-50);
  
  
  //textSize(18);
  //fill(255, 0, 0);
  //text(" press q  to play easy,s for medium,and 3 for hard!", width/2, height/2);
  //textSize(14);
  //fill(0, 0, 255);
  //text("first ball is always slow", width/2, height/2+30);
  ////look for the click
}










Shape instructions = new Shape (0, 0, 300, 300) { //These hardcoded variables are minimum display, here
  //Global Variables
  color colourDayMode, resetNightMode;
  //No Constructor Needed
  void draw() {
    //fill(#FFFFFF); //White, not night mode compatible due to BLUE
    rect(x, y, w, h); //background for instructions menu
    //Text Code Here
    fill(#FFFFFF); //Reset White, from colours of ink
  }
  //Methods for Possible Text Drawing
  //
  //Common Metods
  void paddleBounceLeft( float x, float y, float w, float h ) {
  }
  void paddleBounceRight( float x, float y, float h ) {
  }
  float xGetter() {
    return x;
  }
  float yGetter() {
    return y;
  }
  float wGetter() {
    return w;
  }
  float hGetter() {
    return h;
  }
  color colourDayModeGetter() {
    return colourDayMode;
  }
  color resetNightModeGetter() {
    return resetNightMode;
  }
}
; //


//



  
void keyPressed(){
      int paddleLeftElement = 1;
  int paddleRightElement = 2;
  // float movePaddleSTOP; 


  //Instructions: Instructions, Features, and Hints for Easter Eggs

  if ( key == CODED && key == 'I' || key == 'i' ) {
    if ( instructionsOn==true ) {
      instructionsOn=false;
    } else {
      instructionsOn=true;
    }
  }//End instructions
  //Note: .remove & .add combined in .set
  //
  //Left Paddle
  //Note: shapes.get(paddleLeftElement).movePaddleUp()

//  void keyReleased() {
//  paddleLeft.move(0);
//  right.move(0);
//}
  

  
  
  
  if ( key == CODED && key == 'W' || key == 'w' ) {
    shapes.get(paddleLeftElement);
    Rectangle paddleLeft = new Rectangle (shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter(), shapes.get(paddleLeftElement).colourDayModeGetter(), shapes.get(paddleLeftElement).resetNightModeGetter());
    paddleLeft.movePaddleUP(); //Changes the y-variable, compared to shapes.get(paddleLeftElement)
  shapes.set(paddleLeftElement, paddleLeft);
}//End W Key
  
  
  
  if ( key == CODED && key == 'S' || key == 's' ) {
    Rectangle paddleLeft = new Rectangle (shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter(), shapes.get(paddleLeftElement).colourDayModeGetter(), shapes.get(paddleLeftElement).resetNightModeGetter());
    paddleLeft.movePaddleDOWN(); //Changes the y-variable, compared to shapes.get(paddleLeftElement)
    shapes.set(paddleLeftElement, paddleLeft);
  }//End S Key
  if ( key == CODED && key == 'D' || key == 'd' ) {
    Rectangle paddleLeft = new Rectangle (shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter(), shapes.get(paddleLeftElement).colourDayModeGetter(), shapes.get(paddleLeftElement).resetNightModeGetter());
    paddleLeft.movePaddleSTOP(); //Changes the y-variable, compared to shapes.get(paddleLeftElement)
    shapes.set(paddleLeftElement, paddleLeft);
  }//End D Key
  //
  //Right Paddle
 
  
  //******
  
  if ( key == CODED && keyCode == UP ) {
    Rectangle paddleRight = new Rectangle (shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).wGetter(), shapes.get(paddleRightElement).hGetter(), shapes.get(paddleRightElement).colourDayModeGetter(), shapes.get(paddleRightElement).resetNightModeGetter());
    paddleRight.movePaddleUP(); //Changes the y-variable, compared to shapes.get(paddleRightElement)
  
    shapes.set(paddleRightElement, paddleRight);
  }//End UP Key
  if ( key == CODED && keyCode == DOWN ) {
    Rectangle paddleRight = new Rectangle (shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).wGetter(), shapes.get(paddleRightElement).hGetter(), shapes.get(paddleRightElement).colourDayModeGetter(), shapes.get(paddleRightElement).resetNightModeGetter());
    paddleRight.movePaddleDOWN(); //Changes the y-variable, compared to shapes.get(paddleRightElement)
    shapes.set(paddleRightElement, paddleRight);
  }//End DOWN Key
  if ( key == CODED && keyCode == LEFT ) {
    Rectangle paddleRight = new Rectangle (shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).wGetter(), shapes.get(paddleRightElement).hGetter(), shapes.get(paddleRightElement).colourDayModeGetter(), shapes.get(paddleRightElement).resetNightModeGetter());
    paddleRight.movePaddleSTOP(); //Changes the y-variable, compared to shapes.get(paddleRightElement)
    shapes.set(paddleRightElement, paddleRight);
  }//End LEFT Key
 }
void mousePressed() {
   if(LSCORE>12 ||RSCORE>12){

  //    int rectWidth = appWidth*1/90;   //pad width
  //int rectHeight = appHeight*1/2; //pad size
    
    //shapes.get(ballElement).paddleBounceLeft( shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter() );
    //shapes.get(ballElement).paddleBounceRight( shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).hGetter() );
    
    //Bstart ();
    //ballPlay();

  
  int ballElement = 3;

  
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/90;
  int colourDayBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  Circle cHex = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourDayBall, colourNightBall);
  //
  shapes.add(ballElement, cHex); //Replace BALL Element Hardcoded into void draw()
  //
}}//End mousePressed

 
 
 void  keyReleased() {
      int paddleLeftElement = 1;
  int paddleRightElement = 2;

     Rectangle paddleRight = new Rectangle (shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).wGetter(), shapes.get(paddleRightElement).hGetter(), shapes.get(paddleRightElement).colourDayModeGetter(), shapes.get(paddleRightElement).resetNightModeGetter());
    paddleRight.movePaddleSTOP(); //Changes the y-variable, compared to shapes.get(paddleRightElement)
    shapes.set(paddleRightElement, paddleRight);

 shapes.get(paddleLeftElement);
    Rectangle paddleLeft = new Rectangle (shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter(), shapes.get(paddleLeftElement).colourDayModeGetter(), shapes.get(paddleLeftElement).resetNightModeGetter());
    paddleLeft.movePaddleSTOP(); //Changes the y-variable, compared to shapes.get(paddleLeftElement)
  shapes.set(paddleLeftElement, paddleLeft);




}
 // }



  


//}

//
//End MAIN (Driver) Program
