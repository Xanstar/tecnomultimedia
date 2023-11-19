class guardias{
  constructor(x,y){
   this.x=x;
    this.y=y;
    this.t=50;
    this.vx=10;
    this.soldado = loadImage("assets/soldado.png");
  }
 
  actualizarX(){
     this.x=this.x+this.vx;
    if(this.x>=width-this.t){
      this.x=width-this.t;
      this.vx=-this.vx;
    }
    if(this.x<=0+this.t){
       this.x=0+this.t;
       this.vx=-this.vx;
    }
  }
  dibujarX(){
    push();
    //fill(208);
    //circle(this.x,this.y,this.t);
    image(this.soldado,this.x,this.y);
    pop();
  }
  
  
}
