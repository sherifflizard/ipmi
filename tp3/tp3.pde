// Rossi Francisca, comi 2, 
//Link de youtube: https://youtu.be/DrOq9FPl7IU?si=3DGngdeMNPwROYMf


// Variables
//--------------------------
PImage obra;
int cant;
float tam;
color azul;
color negro;
boolean invertir = false;
boolean cambioTamActivo = false;
boolean luminosidad =false;
float trans;
boolean aumento;

//---------------------------

void setup() {
  size(800, 400);
  background(0); // Inicializa el fondo negro al inicio
  obra = loadImage("op-art.jpeg");

  // Asignaciones de variables
  cant = 3; // Número para hacerlo más grande
  tam = (width / 2) / cant; // Tamaño de grilla como float asi circuko quea bien
  azul = color(37, 40, 183);
  negro = color(6, 13, 29);
  trans = 0.0;
  image(obra, 0, 0);
}

void draw() {
  background (0);
  println(mouseX + "/" + mouseY);
  
 if (luminosidad){
   if (aumento){
     trans += 0.01;
     
     if (trans>=1.0){
       trans=1.0;
       aumento= false;
       
     }
   }else{
     trans -=0.01;
     if (trans<=0.0){
       trans =0.0;
       aumento=true;
     }
   }
   negro=lerpColor (color (6,13,29),color (255),trans);
   
 }else{
   negro= color (6,13,29);
 }
  
  
  
  // Esto invierte los colores
  color color1 = invertir ? negro : azul;
  color color2 = invertir ? azul : negro;

  // hacer que circulos crezcan con el mouse ;)
  if (cambioTamActivo) {
    float circl = map(mouseX, 0, width, tam * 1, tam * 2);

    // For para la grilla 2
    for (int x = 0; x < width / tam; x++) {
      for (int y = 0; y < cant; y++) {
        if ((x + y) % 2 == 0) {
          fill(color1);
        } else {
          fill(color2);
        }
        circle((x * tam) + tam / 2, y * tam + tam / 2, circl);
        rect(x * tam + 400, y * tam, tam, tam);
      }
    }
  } else {
    //circulos normales
    float circl = tam * 1;

    // For para la grilla
    for (int x = 0; x < width / tam; x++) {
      for (int y = 0; y < cant; y++) {
        if ((x + y) % 2 == 0) {
          fill(color1);
        } else {
          fill(color2);
        }

        circle((x * tam) + tam / 2, y * tam + tam / 2, circl);
        rect(x * tam + 400, y * tam, tam, tam);
      }
    }
  }

  image(obra, 0, 0);
}

void mousePressed() {
  invertir = !invertir;
}

void keyPressed() {
  if (key == '+') {
    cant++;
    tam = (width / 2.0) / cant;
  } else if (key == '-') {
    cant--;
    if (cant < 1) {
      cant = 1;
    }
    tam = (width / 2.0) / cant;
  } else if (key == 'c') {
    cambioTamActivo = !cambioTamActivo; // Activa/desactiva 
  } else if (key == 'v') {
    luminosidad = !luminosidad; 
  }
}
