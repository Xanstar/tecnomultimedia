class boton{
  constructor(){
  this.x=0;
  this.y=1;
  this.ancho=60;
  this.alto=60;
  }
  dibujarboton(posX,posY,an,al,tex1,texto,text2){
  noStroke();
  fill(255,255,0);
  rect(this.x=posX,this.y=posY,this.ancho=an,this.alto=al,20);
  fill(0);
  textSize(30);
  text(tex1,texto,text2);
  } 
}
