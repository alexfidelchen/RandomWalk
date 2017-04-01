
/* Random Walk
   A random walk simulation by Alex Chen. 
   
   Random Walk simulates a walker creating a path by moving in seemingly random
   directions and changing color. The walker's direction is determined with
   Processing's random() function. The walker is represented as a dot. It can
   move up, down, left and right. 
   
*/

Walker walker1;

void setup() {
  size(900,300); 
  background(255);
  walker1= new Walker();

}

void draw() {
  walker1.move();
  walker1.display();
}