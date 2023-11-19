let j;

function setup(){
   createCanvas(600,600);
   j= new juego();//clase madre
}
function draw(){
  j.dibujar();
  j.actualizar();
}
function mousePressed(){
  j.activarboton();
}
function keyPressed(){
  j.teclado();
}
