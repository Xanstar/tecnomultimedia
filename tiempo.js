function tiempoM(){
  tiempo-=1/60;
  if(round(tiempo)==0 && vida==0)
    {
      pantalla = 3;
      tiempo=10;
      vida=5;
    }
    else if(vida==0)
    {
      pantalla = 3;
      tiempo=10;
      vida=5;
    }
   else if(round(tiempo)== 0 && vida>=1)
    {
      pantalla = 4;
      tiempo=10;
      vida=5;
    }
}
