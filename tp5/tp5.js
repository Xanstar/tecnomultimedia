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
//Trevisan Joaquin video:https://youtu.be/4wrLqTX2zU4
