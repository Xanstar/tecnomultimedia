int cant = 20;
color g,c,k;
PImage arte;
int j,i;

void setup()
{
  size (800,400);
  
  /*para modificar el lugar donde dibujo los rectangulos y circulos */
  rectMode(RADIUS); 
  ellipseMode(RADIUS);
  
  /*genero 3 colores alateorios para jugar con la figura mas tarde*/
  g= color(random(255),random(255),random(255));
  c= color(random(255),random(255),random(255));
  k= color(random(255),random(255),random(255));
  arte = loadImage("figura.jpg"); //cargo la imagen
  noStroke();
}
/* creo funciones que me van a devolver un valor para luego utilizarlo en la creacion de la figura*/
float calculo1()
{
  /*aca queria que el radio sea exponecial para que mientras las figuras se vayan alejando o abriendo del centro sean mas finas, entonces elevo al cuadrado j e i y le digo que recorra desde el 0 a la cantidad al cuadrado */
  float radioa = map(j*j, 0,cant*cant,200,10);  
  return radioa;
}

float calculo2()
{
  float radiob = map(i*i, 0,cant*cant,200,10); // funciona igual que radioa simplemente lo utilizo para imprimir otra figura primaria, creo otra porque si utilizo la misma  genera un error
  return radiob;
}

/*funcion que dibuja la figura de forma estatica como si fuera una imagen*/
void estatic()
{
    background(255);
    blendMode(DIFFERENCE); //lo utilizo para cambiar los valores cuando se  sobrepone el mismo color, es decir si entra blanco y ya hay blanco va a salir negro
    for( j = 0 ; j <=cant ; j++) //posiciono a j en 0 y le digo que viaje hasta que sea  menor o igual a la cantidad
    {  
      ellipse(600,height/2,calculo1(),calculo1()); // ubico el ellipse sobre el cuadrante derecho y lo dibujo  de forma exponcial 
      blendMode(DIFFERENCE);
     
      for ( i= 0; i<=cant; i++) //posiciono a i en 0 y le digo que viaje hasta que sea  menor o igual a la cantidad
      {
        rect(width,height/2,width/2,calculo2()); //ubico el rectangulo sobre el cuadrante derecho y lo dibujo  de forma exponcial 
      }
      
    }
}
// la figura la vuelvo movible es decir deja de ser estatica
void cinetic()
{
  background(255);
  blendMode(DIFFERENCE);
    
  for (int i= 0; i<=cant; i++)
  {
   float radioa =map(log(i),0,log(cant),200, 1); // aca genere una variable que sea logaritmica es decir agarra logaritmo en base E o natural de i y recorre desde el 0 a el logaritmo natural de 20 que es la cantidad
   float radiob = map(i*i, 0,cant*cant,200,10);
   float radio = map (mouseY,0,height,radiob,radioa); // cree una variable que haga que mouseY viaje entre 0 y el height y los expreso entre ambos radios haciendo el efecto de desplazamiento
    
    rect(width,height/2,width/2,radio);
    ellipse(600,height/2,radio,radio);
    /*aca asigno condiciones que dicen que cuando el mouse se posione en determinadas cordenadas cambie su color   para agregar un efecto muy bueno*/
     if(mouseY<200)
     {
       fill(g);
     }
     else
     { 
     fill(c);
     }
     if(mouseX<600)
     {
       fill(k);
     }
  }
}

void figura()// funcion que genera la figura final en la cual condicionando la posicion del mouse esta se vuelva estatica o movil
{
   if(mouseX<=400)
   {
     fill(255);
     estatic();
   }
   else if(mouseY>=390)
   {
    fill(255);
    estatic();
   }
   else if(mouseY<=10)
   {
    fill(255);
    estatic();
   }
   else if(mouseX>=790)
   {
    fill(255);
    estatic();
   }
   else
   {
     cinetic();
   }
}
 
void reinicio() //reinicio la figura siempre y cuando el mouse este presionado 
{ 
   if(mousePressed == true)
   {
     fill(255);
     estatic();
   }
}


void draw()
{
 figura();
 reinicio();
 image(arte,0,0);
}

void keyPressed() 
{
  setup(); // cuando presione una tecla del teclado se reinician a los valores globales del programa a como estaban en el  setup  logrando que se cambien los colores de la figura nuevamente agregando otro efecto visual 
}
