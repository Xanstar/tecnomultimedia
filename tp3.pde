PImage[] imagenes =  new PImage[17]; 
String[] historia = new String[15]; 

int estado;
boolean espacioDelRect;
PFont fuente,titulo;

void setup(){
  size(600,600);
  estado=0;
  fuente=loadFont("NirmalaUI-Bold-48.vlw");
  titulo=loadFont("SonsofPainM.C.-48.vlw");
  
  for( int i = 0 ; i < 17 ; i++ ){
    imagenes[i] = loadImage( "fotos/pantalla" + i + ".jpg" );  
  }
  
   historia = loadStrings("texto/historia.txt");
  for( int i = 0 ; i < 16 ; i++ ){
    println( i + ": " + historia[15] );
  }
}


void draw(){
 
  
  switch(estado){
    case 0://menu
      image(imagenes[0],0,0);
          textFont(titulo);
          textSize(70);
          fill(227,222,131);
          text("Robin Hood",130,100);
          textFont(fuente);
          textSize(27);
          noStroke();
          fill(92,56,22);
          rect( 240, 250, 160, 60,10);
          fill(255);
          text("¡Comenzar!",249,287); 

          textSize(27);
          noStroke();
          fill(10,131,0);
          rect( 240, 360, 160, 60,10 );
          fill(255);
          text("Créditos",270,400);
     
    break;
    
    case 1://creditos
      image(imagenes[1],0,0);
      botonvolveralmenu();
      
      textFont(titulo);
          textSize(60);
          fill(227,222,131);
          text("Hecho por",160,100);
          fill(247,245,192);
          text("Trevisan Joaquin",80,300);
          textSize(50);
           fill(137, 128, 45);
          text("92714/5",250,350);
          
    break;
    
    case 2://episodio 1 - presentación de Robin Hood
     image(imagenes[2],0,0);
      botonsiguiente();
      textFont(fuente);
      fill(1,142,9);
      rect(10,5,580,130,10);
      textSize(20);
      fill(255);
      text( historia[0], 40, 20, 510, 300 ); 
    break;
    
    case 3://episodio 2 - el encuentro con el pobre campesino
       image(imagenes[3],0,0);
        botonsiguiente();
        fill(113,113,133);
        rect(10,5,580,100,10);
        textSize(18);
        fill(255);
        text( historia[1], 40, 15, 510, 300 ); 
    break;
    
    case 4://episodio 3 - el enfrentamiento con el sheriff de Nottingham
     image(imagenes[4],0,0);
      botonsiguiente();
       fill(3,93,8);
      rect(10,5,580,150,10);
      textSize(20);
      fill(255);
      text( historia[2], 40, 20, 510, 300 ); 
    break;
    
    case 5://episodio 4 - el torneo de arqueria + PRIMERA DECISION
     image(imagenes[5],0,0);
     pushStyle();//boton A
        if(botonredondo(100,270)<=100/2){
        noStroke();
          fill(255,90);
          circle(100,270,100);
         
        }
      popStyle();
      
       pushStyle();//boton A
        if(botonredondo(535,300)<=85/2){
        noStroke();
          fill(255,90);
          circle(535,300,80);
        }
      popStyle();
      fill(7,100,12);
       rect(110,155,410,40,10);
       fill(255);
       textSize(18);
       text("elije un globo y este determinara tu destino",130,180);
       fill(1,142,9);
       rect(10,5,580,140,10);
       textSize(20);
       fill(255);
      text( historia[3], 20, 15, 560, 300 ); 
     
    break;
    
    case 6://episodio 5 - la traición del principe Juan (OPCION IZQUIERDA)
     image(imagenes[6],0,0);
     botonsiguiente();
      fill(3,93,8);
      rect(10,5,580,130,10);
      textSize(17);
      fill(255);
      text( historia[4], 15, 20, 570, 300 ); 
    break;
    
    case 7://episodio 6 - el regreso del rey Ricardo
     image(imagenes[7],0,0);
     botonsiguiente();
      fill(43,185,156);
      rect(10,410,580,100,10);
      textSize(17);
      fill(255);
      text( historia[5], 20, 420, 560, 300 ); 
    break;
    
    case 8://episodio 7 - el sacrificio de Robin + SEGUNDA DECISION
     image(imagenes[8],0,0);
     pushStyle();//boton A
        if(botonredondo(300,100)<=55/2){
        noStroke();
          fill(93, 250, 131,80);
          circle(300,100,65);
        }
      popStyle();
       pushStyle();//boton A
        if(botonredondo(510,90)<=55/2){
        noStroke();
          fill(255,0,0,80);
          circle(510,90,65);
        }
      popStyle();
      fill(155);
      rect(250,435,340,150,10);
      textSize(17);
      fill(255);
      text( historia[6], 260, 450, 320, 230 ); 
      fill(100);
      rect(320,160,220,60,10);
      fill(255);
      text("Elije un bando \n(selecciona sobre la cara)",330,185);
    break;
    
    case 9://episodio 8 - la ejecución de Robin (OPCION IZQUIERDA)
     image(imagenes[9],0,0);
     botonsiguiente();
     fill(150);
      rect(20,5,540,130,10);
      textSize(20);
      fill(255);
      text( historia[7], 40, 20, 510, 300 ); 
    break;
    
    case 10://episodio 9 - luto y desesperanza (PRIMER FINAL)
     image(imagenes[10],0,0);
     botonvolveralmenu();
      fill(98);
      rect(10,5,580,200,10);
      textSize(17);
      fill(255);
      text( historia[8], 20, 20, 540, 300 ); 
      text( historia[9], 20, 115, 540, 300 ); 
    break;
    
    case 11://episodio 8 - la liberacion y el nuevo lider (OPCION DERECHA)
     image(imagenes[11],0,0);
     botonsiguiente();
      fill(40);
      rect(10,405,580,120,10);
      textSize(15);
      fill(255);
      text( historia[10], 20, 420, 560, 300 ); 
    break;
    
    case 12://episodio 9 - el regreso del rey y la recompensa
     image(imagenes[12],0,0);
     botonsiguiente();
      fill(70);
      rect(10,5,580,100,10);
      textSize(17);
      fill(255);
      text( historia[11], 20, 15, 560, 300 ); 
    break;
    
    case 13://episodio 10 - un reino justo y pacifico (SEGUNDO FINAL)
     image(imagenes[13],0,0);
     botonvolveralmenu();
      textSize(20);
      fill(30);
      text( historia[12], 320,210, 260, 500 ); 
    break;
    
    case 14://episodio 5 - el rescate de los prisioneros (OPCION DERECHA)
     image(imagenes[14],0,0);
     botonsiguiente();
      fill(30);
      rect(10,5,580,130,10);
      textSize(18);
      fill(255);
      text( historia[13], 20, 20, 560, 300 ); 
    break;
    
    case 15://episodio 6 - el regreso del rey Ricardo
     image(imagenes[15],0,0);
     botonsiguiente();
      fill(43,185,156);
      rect(10,410,580,100,10);
      textSize(17);
      fill(255);
      text( historia[14], 20, 420, 560, 300 ); 
    break;
    
    case 16://episodio 7 - la despedida de Robin (TERCER FINAL)
     image(imagenes[16],0,0);
     botonvolveralmenu();
      textSize(20);
      text( historia[15], 40, 20, 510, 300 ); 
     
    break;
  }
}


void botonsiguiente(){
          
          textFont(fuente);
          noStroke();
          textSize(23);
          fill(205,180,2); 
          rect( 420, 540, 160, 40,10 );
          fill(255);
          text("¡Siguiente!",440,567); 
   }
   void botonvolveralmenu(){
   textSize(27);
   textFont(fuente);
          noStroke();
          fill(0); 
          textSize(20);
          rect( 215, 540, 200, 40,15);
          fill(255);
          text("¡Volver al Menu!",235,567); 
   }
   
float botonredondo(float x, float y){
  float distancia= dist(mouseX,mouseY,x,y);
  return distancia;

}

boolean redondoaccion( int x, int y, int t ){  
  return dist(mouseX, mouseY, x, y) <= t/2;
}

void mousePressed(){  
                    // valores para delimitar donde tocar y pasar de pantalla
  if( estado == 0 && ( mouseX >240 ) && ( mouseX < 240+160) && ( mouseY > 360) && ( mouseY < 360+60)){
    estado = 1; 
  }
  else if( estado == 0 && ( mouseX >240 ) && ( mouseX < 240+160) && ( mouseY > 250) && ( mouseY < 250+60)){
    estado = 2;
  }
  else if( estado == 2 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 3;
  }
  else if( estado == 3 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 4;
  }
  else if( estado == 4 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 5;
  }
   else if(estado == 5 && redondoaccion(100,270,65)){
    estado = 6; 
  }
   else if(estado == 5 && redondoaccion(535,300,55)){
    estado = 14; 
  }
  else if( estado == 14 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 15;
  }
  else if( estado == 15 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 16;
  }
  else if( estado == 16 && ( mouseX >215 ) && ( mouseX < 215+200) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 0;
  }
  else if( estado == 1 && ( mouseX >215 ) && ( mouseX < 215+200) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 0;
  }
  else if( estado == 6 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 7;
  }
  else if( estado == 7 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 8;
  }
  else if(estado == 8 && redondoaccion(300,100,65)){
    estado = 11; 
  }
  else if(estado == 8 && redondoaccion(510,90,65)){
    estado = 9; 
  }
  else if( estado == 9 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 10;
  }
  else if( estado == 10 && ( mouseX >215 ) && ( mouseX < 215+200) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 0;
  }
  else if( estado == 11 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 12;
  }
  else if( estado == 12 && ( mouseX >420 ) && ( mouseX < 420+160) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 13;
  }
  else if( estado == 13 && ( mouseX >215 ) && ( mouseX < 215+200) && ( mouseY > 540) && ( mouseY < 540+40)){
    estado = 0;
  }
  
}
