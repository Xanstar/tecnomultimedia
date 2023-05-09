PFont fuente;
PImage pic1;
PImage pic2;
PImage pic3;

int marcaEnElTiempo;
int pantalla; 
float opacidad;
float movimientoY = 490;
float movimientoX = 650;
int textX = -200;
int textY = -90;


void setup(){
  size(640,480);
 
  
 fuente = loadFont("CoolveticaRg-Regular-48.vlw");
 pantalla = 0; 
 pic1=loadImage("pic1.jpeg");
 pic2=loadImage("pic2.jpeg");
 pic3=loadImage("pic3.jpeg");

}


void draw(){
   textFont(fuente);
  int diferenciaTemporal = millis() - marcaEnElTiempo;
  println(diferenciaTemporal +"/"+ millis() +"/" + marcaEnElTiempo);
  
   //pantalla principal 
   if(pantalla == 0 )
   { 
     background(0);
     fill(255,opacidad);
     textAlign(CENTER,CENTER);
     text("Hola,\n hoy les voy a presentar\n a mis mascotas,\n que lo disfruten",310,220);
     if(opacidad<=255){
       opacidad++;
        } 
    if(diferenciaTemporal >= 5000){
     opacidad = 0;
    pantalla = 1; 
    marcaEnElTiempo = millis();
    
        }
    }
    //pantalla 1
   else if(pantalla == 1){
   image(pic1,0,movimientoY);
   textSize(25);
   text("Hola soy ana, \n una gata tricolor,\n me escapo por las noches de lluvia \n y vuelvo a casa con mucho barro \n a descansar durante el dia",200,textY);
   if(movimientoY >=0){
   movimientoY = movimientoY - 1;
   
   }
   
   if(movimientoY<=1)
   {
     if(textY <=400)
    {
      textY = textY +1;
    }
   }
   
   
    
   if(diferenciaTemporal >= 20000){
   movimientoY = 490;
   textY = -90;
   pantalla = 2;
   marcaEnElTiempo = millis();
                                 }   
   }
   //pantalla 2
    else if(pantalla == 2)
    {
      image(pic2,movimientoX,0);
      if(movimientoX >=0)
      {
      movimientoX = movimientoX - 1;
      }
          textSize(25);
           text("Hola soy chiqui, \n una parra muy glotona,\n me gusta dormir \n y las tormentas \n me asustan mucho",textX,240);
   
              if(movimientoX<=1)
               {
                 if(textX <=150)
                {
                  textX = textX +1;
                }
               }
                  
                  
      if(diferenciaTemporal >= 20000)
      {
      movimientoX = 650;
      textX = -200;
      pantalla = 3;
      marcaEnElTiempo = millis();
      }
    }
 
   else if(pantalla == 3)
   {
    image(pic3,movimientoX,movimientoY);
    if(movimientoX >=0)
    {
    movimientoX = movimientoX - 1.32;
    }
    if(movimientoY >=0)
    {
      movimientoY = movimientoY -1;
    }
     textSize(25);
           text("Hola soy berni, \n una perra guardiana,\n me gusta ladrar a desconocidos \n pero soy \n muy amorosa con mi familia",textX,textY);
   
              if(movimientoX<=1)
               {
                 if(textX <=180)
                {
                  textX = textX +1;
                }
               }
               if(movimientoY<=1)
                   {
                     if(textY <=250)
                    {
                      textY = textY +1;
                    }
                   }
          if(diferenciaTemporal > 22000)
          {
            movimientoX = 650;
            movimientoY = 490;
            textX = -200;
            textY = -90;
            pantalla = 4;
            marcaEnElTiempo = millis();
          }
   }
   else if(pantalla == 4){
   noStroke();
   fill(0,opacidad);
   rect(0,0,640,480);
   fill(255,opacidad);
   text("Puedes volver a ver \nsobre mis mascotas \n en el botón de abajo",320,200);

   opacidad = opacidad + 1;
      int x=640/2, y=350, d=70;
       color bg=color (255);
       float distancia, radio;
       int colorBtn;
       distancia = dist(x, y, mouseX, mouseY);
       radio = d / 2;
  
      //color_boton = mouseOver
      if ( distancia < radio ) 
      {
        colorBtn = 50;
        if ( mousePressed ) 
        {
          colorBtn = 255;
        }
      } 
      
      else 
      {
        colorBtn = 255;
      }
    
      //boton
      fill( colorBtn );
      circle( x, y, d );
      line( x, y, mouseX, mouseY );
   
   }
   
 }//fin del draw
 
 void mousePressed() {
  if( pantalla == 4){
      pantalla = 0 ;
  }
}  
