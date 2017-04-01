class Walker { 
  
  int xPos;
  int yPos;
  color dotColor;
  
  Walker() { 
  // Walker's x and y coordinates. 
  xPos = width/2;
  yPos = height/2;
  dotColor = color(255);
  }
  
  //Displays the walker on-screen
  void display() { 
  noStroke();
  fill(dotColor);
  ellipse(xPos,yPos,15,15);
  }
  
  void move() {
    
    /* To move the walker, move() chooses a integer between 0 and 3. 
    Depending on the integer, the walker will move up, down left and 
    right and become a color. All integers have an equal chance of 
    being chosen. 
    */
    int direction = (int(random(4)));       // Chooses an integer between 0 and 3.
    if ((xPos > width) || (yPos > height) || (xPos < 0) || (yPos < 0)){ 
      
      /* Before the walker moves, move() checks whether the walker's is within the 
      display window. If it is, move() will move the walker. If not, this method 
      manipulates either the walker's x or y- coorindates until the walker's 
      inside the display window. 
      */

      if (xPos > width) {
        xPos--;
      }
      else if (yPos > height) {
        yPos--;
      }
      
      else if (xPos < 0) {
        xPos++;
      }
      else {
        yPos++;
      }
      
    } else {
    //The walker's color depends on the direction. Colors are shades of pink. 
    if (direction == 0){                  // Move up 
      yPos--;
      dotColor = color(#DF678A);
    } else if (direction == 1){           // Down
       yPos++;
       //print("down ");
       dotColor = color(#C84B77);
    } else if (direction == 2){          // Left
      xPos--;
      dotColor = color(#F0828B);        
      //print("left ");
    } else { 
      xPos++;                            // Right
      dotColor = color(#EFA6B9);
    }
    }
    
  }
}