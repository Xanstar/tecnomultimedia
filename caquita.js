function caca()
{
    //caca
    push();
      noStroke();
      image(caquita,cacaX,cacaY);
      if(mouseX >=40 && mouseX <=width-40)
      {
        cacaX=mouseX;
      }
      if(mouseY >=40 && mouseY <=height-40)
      {
        cacaY=mouseY;
      }  
    pop();
}
