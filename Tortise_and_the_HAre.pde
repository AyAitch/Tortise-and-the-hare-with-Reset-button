//adds the shortcut for the dog
PImage dog;
//adds the shortcut for the cat
PImage cat;

//dog starting position
int dogY=25;
//cats starting position
int catY=25;

void setup(){
  size(800,800);
  //dog picture
  dog=loadImage("dog-sitting-silhouette-18.png");
  //cat picture
  cat=loadImage("drawing-a-cat-006.jpg");
}

void draw()
{
  //Set the text size
  textSize(40);
  text("Reset",685,765);
  //adds cat image 
  image(cat,50,catY, 50, 50);
  //adds dog image 
  image(dog,0,dogY, 50, 50);
  
  if(dogY>=750)
{
    //if the dog wins display this text
    text("Dog Wins!!",400,400);
}
  if(catY>=300)
  {
    //if cat wins display this text
    text("Cat Wins!!!!",400,400);
  }
}

//movement
void keyPressed()
{
  
  if(key=='c')
  //Cat Movement
  {
    catY=catY+12;
    //refreshes the cat so it doesnt leave a trail
    background(155);
  }
  //Dog Movement
  if(key=='o')
  {
    dogY=dogY+50;
     //refreshes the dog so it doesnt leave a trail
    background(155);
  }
}


void mouseClicked()
{
  if( mouseX > 750 && mouseX < 800 && mouseY > 750 && mouseY < 800)
  {
    catY = 0;
    dogY = 0;
    fill(255,160,0);
    rect(750,800,700,80);
    fill(0);
    image(cat,50,catY, 50, 50);
    image(dog,0,dogY, 50, 50);
    background(155);
  }
}
