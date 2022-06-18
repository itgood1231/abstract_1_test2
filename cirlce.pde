class Circle extends Shape {
  //Global Variables
  color colourDayMode, resetNightMode;
  float ballSpeedX, ballSpeedY, directionX=0, directionY=0, ballMoveX, ballMoveY;
  Boolean ballLXGoal,ballRXGoal;
  
  
  //Constructor
  Circle(float x, float y, float w, float h, color colourDayParameter, color resetNightParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;
    this.resetNightMode = resetNightParameter;
    this.ballSpeedX = ballRandomChooser(); //Best practice
    this.ballSpeedY = ballRandomChooser(); 
    this.ballLXGoal = false;
      this.ballRXGoal = false;
  
  while ( directionX == 0 ) {
      this.directionX = int (random (-2, 2) );
    }//End WHILE
    while ( directionY == 0 ) {
      this.directionY = int (random (-2, 2) );
      
    }
  }//End Constructor
  
 
  //Methods
  void draw() {
    fill(colourDayMode);
    ellipse(x, y, w, h);
    fill(resetNightMode);
    //Bstart ();
    ballPlay();
  }//End draw
//  void Bstart(){
////  background(0);
  
//  rect(width/2,height,2,100,50);
//}
  
//}
void moouseover(int x,int y,int w,int h){
if(mouseX>=x&&mouseY<=x+w && mouseY>=y&&mouseY<=y+h){


}
}

 // boolean left;
  int ballRandomChooser() {
    return int( random (1, 5) );
  }//End ballRandomChooser
  //
  void ballPlay() {
    
      fill(255);
  textSize(32);
  text(LSCORE, 32, 40);
  text(RSCORE, width-64, 40);
    // if (left==true){
    //LSCORE++;
    //}else if(left==true){
    //  LSCORE++;
    
    //}
   
    while ( directionX == 0 ) {
      this.directionX = int (random (-2, 2) );
    }//End WHILE
    while ( directionY == 0 ) {
      this.directionY = int (random (-2, 2) );
      
    }//end
  //  boolean left;
    
    
    if ( x < (width*0)+w || x > width - w) {
      //Net Detection
     this.directionY = int (random (-2, 2) );
     this.directionX = int (random (-2, 2) );
      ballLXGoal = true;
    //float LSCORE;
     RSCORE++;
    // LSCORE--;
      if (x < (width*0)+w ) { //Goal for left player
   //  left=true; 
     
   //   }
   //if (left==true){
   // LSCORE++;
   // }
   
      }//x < (width*0)+w ||
      if ( x > width - w) { //Goal for right player
      
       this.directionY = int (random (-2, 2) );
     this.directionX = int (random (-2, 2) );
      ballRXGoal = true;
  
  LSCORE++;
  RSCORE--;
         if (x < (width*0)+w ) {
      
      }
    } //End Net Detection
 //   reset(){
 }
 

  
 
 
    //
    //Top and Bottom Boundary Bounce, accounting for increased ball movement per "step"
    // Bounce of Top and Bottom: bounce is a range and we move the ball if out-of-bounds
    if ( (y >= height*0 && y <= height*0+w) || ( y <= height && y >= height-w ) ) directionY =  directionY * (-1);
    if ( y < 0 || y > height ) {
      directionY =  directionY * (-1);
      if (y < 0) y = height*0 - (w/2);
      if (y > height) y = height - (w/2);
    }
    //
    //Ball "Step"
    if (ballRXGoal == true) { //right
      x = appWidth*1/2;y= appHeight*1/2;
        
      this.ballRXGoal = false;
     
      
    }if (ballLXGoal == true) { //left 
      x = appWidth*1/2;y= appHeight*1/2;
   this.ballLXGoal = false;
     
      
    }  else { //left 
      ballMoveX = ballSpeedX*directionX;
      ballMoveY = ballSpeedY*directionY;
      x += ballMoveX;
      y += ballMoveY;
  
}
while ( ballRXGoal == true||ballLXGoal == true){

this.directionX = int (random (-2, 9) );
    this.directionY = int (random (-2, 9) );   
 ballMoveX = ballSpeedX*directionX;
      ballMoveY = ballSpeedY*directionY;
}

   
  }//End ballPlay()
  //
  //Getters
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
  //
//  Setters
  void paddleBounceLeft(float paddleX, float paddleY, float paddleWidth, float paddleHeight) {
    if (x<=paddleX+paddleWidth+w*1/2 && y>=paddleY && y<=paddleY+paddleHeight) directionX *= (-1);
  }
  void paddleBounceRight(float paddleX, float paddleY, float paddleHeight) {
    if (x>=paddleX-w*1/2 && y>=paddleY && y<=paddleY+paddleHeight) directionX *= (-1);
  }
  
  

}//End Circle
