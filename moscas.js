function moscas() {
  for ( let i=0; i<cantidad; i++ ) {
    //dibujo
    push();
    noStroke()
    translate(mosquix[i], mosquiy[i]);
    image(mosquita,0,0);
    
    pop();
  }
}

function movimientoMosqui() {
  for ( let i=0; i<cantidad; i++ ) {
    mosquix[i]+=mosquimovx[i];
    mosquiy[i]+=mosquimovy[i];
    
    if ( mosquiy[i] >= height-mosquit[i] ) {
      mosquiy[i] = height-mosquit[i];
      mosquimovy[i] = -mosquimovy[i];
    }
    if ( mosquiy[i] <= 0+mosquit[i] ) {
      mosquiy[i] = 0+mosquit[i];
      mosquimovy[i] = -mosquimovy[i];
    }
    
    if ( mosquix[i] > width+mosquit[i]  ) {
      mosquix[i] = 0-mosquit[i];
    }
    if ( mosquix[i] < 0-mosquit[i] ) {
      mosquix[i] = width+mosquit[i];
    }
  }
}

function actualizarMosqui() {
  movimientoMosqui();
  moscas();
}

function iniciarmosqui() {
  for ( let i=0; i<cantidad; i++ ) {
    mosquit[i] = 20;
    mosquix[i] = random( mosquit[i], width-mosquit[i] );
    mosquiy[i] = random( mosquit[i], height/2 );
    mosquimovx[i] = random(-1, 4);
    mosquimovy[i] = random(-1, 4);
  }
}

function problema() {
  for ( let i=0; i<cantidad; i++ ) {
    if(dist(cacaX,cacaY,mosquix[i],mosquiy[i])<mosquit[i]){
      mosquix[i]=random(mosquit[i], width-mosquit[i]);
      mosquiy[i]=random(mosquit[i], height-mosquit[i]);
      vida-=1;
    }
  }

}
