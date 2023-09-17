function mousePressed(){
  //pantalla inico
  //juego 120,130,150,50
   if(pantalla==0 && ( mouseX > 120 ) && ( mouseX < 120+150 ) && ( mouseY > 130) && ( mouseY < 130+50))
   { 
     pantalla=1;
   }
   
   //instrucciones 92,230,225,50
   if(pantalla==0 && ( mouseX > 92 ) && ( mouseX < 92+225 ) && ( mouseY > 230) && ( mouseY < 230+50))
   { 
     pantalla=2;
   }
   
   
   //pantalla juego
   //volver al inicio 10,8,60,25
   if(pantalla==1 && ( mouseX > 10 ) && ( mouseX < 10+60 ) && ( mouseY > 8) && ( mouseY < 8+25))
   { 
     pantalla=0;
     vida=3;
     tiempo=15;
   }
   
   //reiniciar 10,360,80,25
   if(pantalla==1 && ( mouseX > 10 ) && ( mouseX < 10+360 ) && ( mouseY > 80) && ( mouseY < 80+25))
   { 
     iniciarmosqui();
     vida=3;
     tiempo=10;
   }
   
   //pantalla instrucciones
   //volver de las instrucciones al inicio 10,8,60,25
   if(pantalla==2 && ( mouseX > 10 ) && ( mouseX < 10+60 ) && ( mouseY > 8) && ( mouseY < 8+25))
   { 
     pantalla=0;
   }
   
   //pantalla creditos
   //volver de los creditos al inicio 10,8,60,25
   if(pantalla==5 && ( mouseX > 10 ) && ( mouseX < 10+60 ) && ( mouseY > 8) && ( mouseY < 8+25))
   { 
     pantalla=0;
   }
   
   //pantalla perder
   //jugar de nuevo 100,175,195,40
   if(pantalla==3 && ( mouseX > 100 ) && ( mouseX < 100+195 ) && ( mouseY > 175) && ( mouseY < 175+40))
   { 
     pantalla=1;
     iniciarmosqui();
     vida=3;
     tiempo=10;
   }
   //creditos 130,242,140,40
   if(pantalla==3 && ( mouseX > 130 ) && ( mouseX < 130+140 ) && ( mouseY > 242) && ( mouseY < 242+40))
   { 
     pantalla=5;
   }
   //volver al inicio 100,312,192,40
   if(pantalla==3 && ( mouseX > 100 ) && ( mouseX < 100+192 ) && ( mouseY > 312) && ( mouseY < 312+40))
   { 
     pantalla=0;
   }
   
   
   //pantalla ganar
   //jugar de nuevo 100,175,195,40
   if(pantalla==4 && ( mouseX > 100 ) && ( mouseX < 100+195 ) && ( mouseY > 175) && ( mouseY < 175+40))
   { 
     
     iniciarmosqui();
     pantalla=1;
     vida=3;
     tiempo=10;
   }
   //creditos 130,242,140,40
   if(pantalla==4 && ( mouseX > 130 ) && ( mouseX < 130+140 ) && ( mouseY > 242) && ( mouseY < 242+40))
   { 
     pantalla=5;
   }
   //volver al inicio 100,312,192,40
   if(pantalla==4 && ( mouseX > 100 ) && ( mouseX < 100+192 ) && ( mouseY > 312) && ( mouseY < 312+40))
   { 
     pantalla=0;
     vida=3;
     tiempo=10;
   }
}
