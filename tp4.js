let pantalla; 
let cantidad=12,vida=3,tiempo=10;
let mosquix=[], mosquiy=[], mosquimovy=[],mosquimovx=[], mosquit=[];
let cacaX,cacaY;
let caquita,mosquita,fondo;


function setup() {
  createCanvas(400,400);
  pantalla=0;
  iniciarmosqui();
  imageMode(CENTER);
  
}
//( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto);
function preload(){
caquita = loadImage("assets/caquita.png");
mosquita = loadImage("assets/mosquita.png");
fondo = loadImage("assets/fondo.jpg");


}

function btnVolver(){ 
  push();//volver
      fill(0);
      rect(10,8,60,25);
      fill(255);
      textSize(15);
      text("Volver",18,25);
   pop();
}

function draw() {
  if(pantalla==0){//inicio
    background(197,250,124);
    cursor();
    textSize(40);
    text(" MS CAQUITA", 85,50,360,100);
    push();//jugar
      fill(0);
      rect(120,130,150,50);
      fill(255);
      textSize(30);
      text("Jugar",155,163);
    pop();
    
    push();//instrucciones
      fill(0);
      rect(92,230,225,50);
      fill(255);
      textSize(30);
      text("¿Cómo jugar?",110,262);
    pop();
    
  }
  else if(pantalla==1){//juego
    image(fondo,0,0);
    fill(100,90);
    rect(0,0,400,400);
    btnVolver();
    noCursor();
    
    caca();
    tiempoM();
    problema();
    actualizarMosqui();
    textSize(20);
    
    fill(105,12,167);
    rect(0,360,400,40);
    fill(234,228,12);
    text("Tiempo:"+round(tiempo)+ " ",229,385);
    text("Vida:"+vida,95,385);
    pop();
    
    
    
  }
  else if(pantalla==2){//instrucciones
    background(232,188,105);
    textSize(30);
    text("Esquiva las mosquitas para que tu caquita sobreviva, mueve el mouse por cualquier lugar de la pantalla", 40,70,300,300);
    btnVolver();
    
  }
  else if(pantalla==3){//perder
    background(232,105,175);
    cursor();
    push();
      fill(0);
      rect(100,175,195,40);
      textSize(25);
      fill(255);
      text("Jugar de nuevo",110,200);
      fill(0);
      rect(130,242,140,40);
      fill(255);
      text("Créditos",150,270);
      fill(0);
      rect(100,312,192,40);
      fill(255);
      text("Volver al inicio",115,340);
      textSize(20);
      textAlign(CENTER);
    text("FUISTE COMIDO POR LAS MALVADAS MOSQUITAS Y TU CAQUITA A MUERTO", 10,50,360,100);
    pop();
    
  }
  else if(pantalla==4){//ganar
    background(105,232,191);
    cursor();
    push();
      fill(0);
      rect(100,175,195,40);
      textSize(25);
      fill(255);
      text("Jugar de nuevo",110,200);
     pop();
     
     push();
      fill(0);
      rect(130,242,140,40);
      textSize(25);
      fill(255);
      text("Créditos",150,270);
     pop();
     
     push();
      fill(0);
      rect(100,312,192,40);
      textSize(25);
      fill(255);
      text("Volver al inicio",115,340);
      fill(0);
      textSize(20);
      textAlign(CENTER);
    text(" FELICITACIONES SOBREVIVISTE A LAS MOSQUITAS SOS UNA CAQUITA MUY ASTUTA ", 10,50,360,100);
     pop();
  }
  
  else if(pantalla==5){//creditos
    background(179,232,105);
    textSize(40);
    fill(0);
    text("Realizado por:\nTrevisan Joaquin 92714/5", 40,120,400,300);
    btnVolver();
  }
  
}
