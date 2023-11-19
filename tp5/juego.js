class juego{
    constructor(){
     this.pantalla="inicio";
     this.bg = loadImage("assets/inicio.jpg");
     this.bg1 = loadImage("assets/jugar.jpg");
     this.bg2 = loadImage("assets/ganar.jpg");
     this.bg3 = loadImage("assets/perder.jpg");
     this.b=[]; 
     for(let i=0; i<2; i++){
     this.b.push(new boton());
     }
     this.personaje = new pj(50);
     
     this.enemigo=[];
      for(let i=0; i<4; i++){
       this.enemigo[i]=new guardias(i*100+160,i*120+110);
      }
     
     this.meta= new final();
     
    
    }
    
    actualizar(){
      if(this.pantalla=="juego"){
         for(let i=0; i<4; i++){
           this.enemigo[i].actualizarX();
        }
       this.colision();
      }
      
    }
    
    
    dibujar(){
      if(this.pantalla=="inicio"){
        image(this.bg,0,0);
        this.b[0].dibujarboton(40,200,150,60,'INICIAR',63,240);
      }
      
      else if(this.pantalla=="juego"){
        image(this.bg1,0,0);
        this.personaje.dibujarpersonaje();
        for(let i=0; i<4; i++){
           this.enemigo[i].dibujarX();
        }
        this.meta.dibujarmeta();
         
     
      }
      
      else if(this.pantalla=="ganar"){
        image(this.bg2,0,0);
        this.b[1].dibujarboton(400,520,170,40,'REINICIAR',414,550);
      }
      
      else if(this.pantalla=="perder"){
        image(this.bg3,0,0);
        this.b[1].dibujarboton(400,520,170,40,'REINICIAR',414,550);
      }
    }
    
   pantallas(p1,p2,boton){
     if( this.pantalla == p1 && (mouseX>this.b[boton].x)&&(mouseX<this.b[boton].x+this.b[boton].ancho)&&(mouseY>this.b[boton].y)&&(mouseY<this.b[boton].y+this.b[boton].alto) )
     {
       this.pantalla = p2;
     }
   }
    
  activarboton(){
    this.pantallas("inicio","juego",0);
    this.pantallas("ganar","inicio",1);
    this.pantallas("perder","inicio",1);
  }
  
 
  teclado(){
   this.personaje.moverteclas(keyCode,UP_ARROW,DOWN_ARROW,LEFT_ARROW,RIGHT_ARROW);
  }
  
  colision(){
    push();
     for(let i=0; i<4; i++){
       if(dist(this.personaje.x,this.personaje.y,this.enemigo[i].x,this.enemigo[i].y)<this.personaje.t/2){
         this.pantalla="perder";
         this.personaje.x=300;
         this.personaje.y=560;
       } 
     }
    pop();
    
    if(this.pantalla == "juego" && (this.personaje.x>this.meta.x)&&(this.personaje.x<this.meta.x+this.meta.ancho)&&(this.personaje.y>this.meta.y)&&(this.personaje.y<this.meta.y+this.meta.alto)){
      this.pantalla="ganar";
      this.personaje.x=300;
      this.personaje.y=560; 
    }
    
  }
    
}
   
