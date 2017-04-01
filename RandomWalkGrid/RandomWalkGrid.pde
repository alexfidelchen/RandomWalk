
/* Random Walk Grid
   A random walk simulation by Alex Chen. 
   
   RandomWalkGrid is a variation of the RandomWalk. The walker in RandomWalkGrid
   can move in 8 directions and its path creates a mosaic. 
   
*/
Walker walker1;

void setup() {
  size(900,300);
  frameRate(10000);
  background(#F1F0DB);
  walker1 = new Walker();
}

void draw() {
  walker1.move();
  walker1.display();
}