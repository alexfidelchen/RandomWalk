
/* The Walker class moves randomly around the display window to create a grid-like
  structure. 
  */
class Walker { 
  
  int xPos;
  int yPos;
  int diameter;             // Walker's diameter
  color dotColor;           
  
  Walker() { 
  xPos = width/2;          // Walker's x and y coordinates
  yPos = height/2;
  diameter = 6;
  color(0);
  }
  
  void move() {
  /* To move the walker, move() chooses two random integers between -1 
  and 1. Depending on the chosen integers, the walker will move in a specific
  direction and become a certain color. The color is dependent on the chosen
  direction. Each number has an equal chance of being chosen. 
  */
  
    int stepX = (int(random(3))-1);
    int stepY = (int(random(3))-1);
    
    if ((xPos > width) || (yPos > height) || (xPos < 0) || (yPos < 0)) { 
      
      /* Before the walker moves, the if statement above checks whether the walker
      is in the display window.  If the walker is not, then the if statements
      below manipulate the walker's x and y coordinates until the walker is back
      in the window. 
      */
      
      // Width is the right edge of the display window.
      if (xPos > width) { 
        xPos--; 
      //The height is the BOTTOM edge of the display window.
      } else if (yPos > height) { 
        yPos--;
      } else if (xPos < 0) {
        xPos++;
      } else {
        yPos++;
      }
    } else { 
      /* The else statement determines which direction the walker will 
      move in and which color the walker becomes. The walker either 
      moves in a up, down, left of right, or diagonally ( upper-right, 
      upper-left, etc...). The walker becomes different shades of blue
      if the walker moves up, down, etc... and shades of red if the 
      walker moves diagonally. 
      */
        if ((stepX == 0) || (stepY == 0)) { /*If Either stepX or stepY is 0, 
        then the step's direction .
        */
        
            if ((stepX == 0) && (stepY == -1)) {              // Step up
              dotColor= color(#009ED8);
            }
             else if ((stepX == 0) && (stepY == 1)) {        // Step down
              dotColor = color(#0078AA); 
            }
            else if ((stepX == -1) && (stepY == 0)) {        // Left
              dotColor = color(#3CAEC9); 
            } else {
              dotColor = color(#46C7E4);                     // Right
            }

    }else{ 
            //Diagonal movement
            if ((stepX == -1) && (stepY == 1)) {
              dotColor = color(#DF678A);                     // Upper-left
            }
            else if ((stepX == 1) && (stepY == 1)) {         // Upper right
              dotColor = color(#C84B77);
            }
            else if ((stepX == -1) && (stepY == -1)) { 
              dotColor = color(#F0828B);                     // Lower-left
            }
            else{
              dotColor = color(#EFA6B9);                     // Lower-right
            }
        }
      //  When the Walker changes location, the walker makes a "step"
      xPos = xPos + diameter * stepX;                       
      yPos = yPos + diameter * stepY;
    } 
  }
  //Displays the walker.
  void display() { 
  noStroke();
  fill(dotColor);
 /* The walker's path creates a grid-like mosaic when each step equals the walker's diameter. 
      */
  ellipse(xPos,yPos,diameter,diameter); 
  }
  
}