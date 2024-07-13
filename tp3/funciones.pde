// Variables globales
//--------------------------
PImage obra; // la imagen 

color negro; 
color azul;

boolean luminosidad = false; 
boolean luminosidad2 = false; 

boolean aumento= true ;
float trans;

boolean invert = true;
//---------------------------


// FUNCION QUE NO RETORNA VALOR con parametro. grilla 
void grilla(int cant, float tam) {
  float circl = tam * 1;
  for (int x = 0; x < width/ tam; x++) {
    for (int y = 0; y < cant; y++) {
      if ((x + y) % 2 == 0) {
        fill(invertirColores(azul, negro)); // azul
      } else {
        fill(invertirColores(negro, azul)); //  negro
      }
      circle((x * tam) + tam / 2, y * tam + tam / 2, circl);
      rect(x * tam + 400, y * tam, tam, tam);
    }
  }
}

// FUNCION QUE NO RETORNA VALOR sin parametro cambia el negro a blanco
void cambiluminosidad() {
  if (aumento) {
    trans += 0.01;
    if (trans >= 1.0) {
      trans = 1.0;
      aumento = false;
    }
  } else {
    trans -= 0.01;
    if (trans <= 0.0) {
      trans = 0.0;
      aumento = true;
    }
  }
  // uso de lerpcolor
  negro = lerpColor(color(6, 13, 29), color(255), trans);
}


// FUNCION QUE NO RETORNA VALOR con parametro cambia el azul por colores
void cambiluminosidad2 (color colorAleatorio) {

  if (aumento) {
    trans += 0.01;
    if (trans >= 1.0) {
      trans = 1.0;
      aumento = false;
    }
  } else {
    trans -= 0.01;
    if (trans <= 0.0) {
      trans = 0.0;
      aumento = true;
    }
  }
  // uso de lerpcolor
  azul = lerpColor(colorAleatorio, colorAleatorio, trans);
}



// da vuelta los colores 
color invertirColores(color color1, color color2) {
  return invert ? color2 : color1;
}


// FUNCION QUE RETORNA VALOR con parametros. activa el ojo
boolean cosomouse (int posmou){
  
  if (mouseX > posmou){
    return true;
  } else{
    return false;
  }
  
}
  
 
