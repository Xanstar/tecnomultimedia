class pj{
constructor(tam){
  this.x=300;
  this.y=550;
  this.t=tam;
  this.player = loadImage("assets/personaje.png");
}
 dibujarpersonaje(){
  //noStroke();
  //fill(255,0,0);
  //ellipse(this.x,this.y,this.t);
  image(this.player,this.x,this.y);
 }
moverteclas(tecla,arriba,abajo,izquierda,derecha){
  if( tecla == arriba ){
      this.y = this.y - this.t;
    }else if( tecla == abajo ){
      this.y += this.t;
    }else if( tecla == izquierda ){
      this.x -= this.t;
    }else if( tecla == derecha ){
      this.x += this.t;
    }
}



}
