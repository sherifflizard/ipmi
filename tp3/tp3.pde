// Rossi Francisca, comi 
//Link de youtube 1: https://www.youtube.com/watch?v=DrOq9FPl7IU&ab_channel=FranciscaRossi
//Link de youtube 2: https://youtu.be/pYuhT9ZjnAA
//------------------------------------

void setup() {
  size(800, 400);
  background(0);

  obra = loadImage("op-art.jpeg");
  azul = color(37, 40, 183);
  negro = color(6, 13, 29);
  trans = 0.0;
}
void draw() {
  background (0);


  grilla (3, 133);

  //OJITO
  if (cosomouse (400)) {
    float circlX = map(mouseX, 0, width, 546, 626);
    float circlY = map(mouseY, 0, height, 186, 227);
    circle (circlX, circlY, 80);
    fill (azul);
    circle (circlX, circlY, 40);
  }

  // condiciona el lerpcolor
  if (luminosidad) {
    cambiluminosidad();
  } else {
    negro = color(6, 13, 29);
  }

  if (luminosidad2) {
    cambiluminosidad2(color(random(255), random(255), random(255)));
  } else {
    azul = color(37, 40, 183);
  }

  // imagen
  image(obra, 0, 0);
}

void keyPressed () {
  if (keyCode == 'V' || keyCode == 'v') {
    luminosidad = !luminosidad;
    println("Tecla 'v' funca. Estado de luminosidad: " + luminosidad);
  }
  if (keyCode == 'x' || keyCode == 'X') {
    luminosidad2 = !luminosidad2;
    println("Tecla 'x funca. Estado de luminosidad2: " + luminosidad2);
  }

  if (keyCode == 'r' || keyCode == 'R') {
    luminosidad2 = false;
    luminosidad = false;
    mouseX = 0;
    mouseY = 0;
    invert = false ;
    println("reset :)" );
  }
}

void mousePressed() {
  invert = !invert;
  println("invertido :O");
}
