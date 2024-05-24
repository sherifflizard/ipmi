// VARIABLES 

PFont fuente;

String estados;

PImage[] imagenes;

boolean botonnewgame;
boolean botoncamara;
boolean botoncamara2;
boolean botoncamara3;
boolean botoncamara4;

int tiempoEspera2 = 5 * 60;
int tiempoEspera = 10 * 60;
int diariotrans = 12 * 60;

// textos 
float x, y; 
int alpha;
color relleno;
boolean mostrarTexto;
boolean calavera2;

//calavera movimiento 1 y 2
float Cposy;
float vely;
float texttam;

//---------------------------------------------
void setup() {
  size(640, 480);
  
  // Declaración de imágenes
  imagenes = new PImage[10]; 
  imagenes[0] = loadImage("pantallainicio.gif");
  imagenes[1] = loadImage("oficina.jpg");
  imagenes[2] = loadImage("botoncamaraa.png");
  imagenes[3] = loadImage("cam1.png");
  imagenes[4] = loadImage("cam2b.png");
  imagenes[5] = loadImage("diario.png");
  imagenes[9] = loadImage ("ultimapantalla.png");
  
  imagenes[0].resize(640, 480);
  imagenes[1].resize(640, 480);
  imagenes[2].resize(640, 480);
  imagenes[3].resize(640, 480);
  imagenes[4].resize(640, 480);
  imagenes[5].resize(640, 480);
    imagenes[9].resize(640, 480);
  //personaje//
  imagenes[6] = loadImage("calaveranormal.png");
  imagenes[7] = loadImage("calaverafeliz.png");
  imagenes[8] = loadImage("calaverasorpresa.png");
  imagenes[6].resize(136, 116);
  imagenes[7].resize(136, 116);
  imagenes[8].resize(136, 116);
  
  // movimiento de calavera 1,2,3
  Cposy = 19.5;
  vely = 0.5; 

  // Configuración de texto
  fuente = loadFont("Consolas-48.vlw");
  textFont(fuente);
 
  alpha = 10;
  relleno = color(200, 50, 200);

  mostrarTexto = false;
  y = 400;

texttam = 1; 

  estados = "menu";
}

//--------------------------------------------

void draw() {
  background(0);
  println(mouseX + "/" + mouseY);

  // Estado: menu
  if (estados.equals("menu")) { 
    image(imagenes[0], 0, 0);
    botonnewgame = (mouseX > 50 && mouseY > 267 && mouseX < 194 && mouseY < 292);
    noFill();
    rect(50, 267, 144, 25);
   
    // Transparencia de todo 
    if (alpha < 255) {
      alpha += 2; 
    }
    fill(relleno, alpha); 
    rect(221, 19, 412, 115);
    image(imagenes[6], 519, Cposy);
    fill(0, 200, 200, alpha);
    rect(219, y, 405, 109);
  
    if (y >= 150) {  // movimiento caja texto
      y -= 1;
    }
  
    fill(0, alpha); 
    textSize(19);
    text("Hola!! hoy para mi trabajo voy \n a hablar del videojuego FNAF 1", 235, 70);
     
    if (frameCount >= 5 * 60) {
      mostrarTexto = true;
    }
    
    if (mostrarTexto) {
      textSize(14);
      text("Five Nights at Freddy's (abreviado como FNAF) es un\n videojuego de terror y supervivencia independiente\n del genero point-and-click desarrollado y publicado \npor Scott Cawthon en el 2014 ", 224, 176, 12);
      mostrarTexto = false;
    }
    if (frameCount >= 8 * 60) {
      mostrarTexto = true;
    }
    
    if (mostrarTexto) {
      rect(218, 261, 410, 53);
      textSize(22);
      fill(200, 200, 0, alpha); 
      text("Presione new game para empezar!!", 234, 287, 16);
      mostrarTexto = false;
    }
    
    if (Cposy >= 19.2) {
      vely = -0.5;
    }
    Cposy += vely;
    
    if (Cposy <= 0) {
      vely = 0.5;
    }
  }
  
  //------------------------------- diario
  else if (estados.equals("diario")) {
    image(imagenes[5], 0, 0);
    calavera2 = true;
 
    // Transparencia 
    if (alpha < 200) {
      alpha += 2; 
    }
    
    if (calavera2) {
      fill(0, 200, 200, alpha);
      rect(37, 30, 490, 110);
      image(imagenes[7], 0, Cposy);
      textSize(15);
      fill(0, alpha); 
      text("En FNAF jugamos como Mike Schmidt, un guardia \n de seguridad nocturno que debe defenderse de los \npersonajes animatronicos del restaurante  \nFreddy Fazbear's Pizza, los cuales son \nextremadamente hostiles.", 113, 61);
      fill(255, alpha);
      text("pantalla automatica de 12 segundos", 350, 468);
    }
    
    if (frameCount >= diariotrans) {
      estados = "juego";
      alpha = 0; 
      frameCount = 0; 
      Cposy = 0;
    }
    
    if (Cposy >= 19.2) {
      vely = -0.5;
    }
    Cposy += vely;
    
    if (Cposy <= 0) {
      vely = 0.5;
    }
  }
  
  //--------------------------------------
  // Estado: juego
  else if (estados.equals("juego")) {
    image(imagenes[1], 0, 0);
    botoncamara = (mouseX > 221 && mouseY > 449 && mouseX < 404 && mouseY < 478);
    image(imagenes[2], 221, 449);
    imagenes[2].resize(183, 29);
    image(imagenes[7], 420, Cposy);
    
    if (alpha < 200) {
      alpha += 2; 
    }
       fill(255,255,0,alpha); 
     rect(74, 173, 496, 98);
    textSize(texttam);
    fill(1); 
    text("Su jugabilidad es simple, para sobrevivir tenemos que \n evitar que los animatrónicas entren a la habitación, \n prendiendo luces, cerrando puertas y revisando cámaras. \ndebemos tener cuidado con no gastar toda la batería.", 104, 200);
    
    if (Cposy >= 22.1) {
      vely = -0.5;
    }
    Cposy += vely;
    
    if (Cposy <= 0) {
      vely = 0.5;
    }

   if (texttam< 15){
      texttam += 0.5;

}
    if (frameCount >= 3 * 60) {
      mostrarTexto = true;
    }
    
    if (mostrarTexto) {
      rect(218, 261, 367, 44);
      textSize(22);
      fill(200, 200, 0, alpha); 
      text("Presione la camara!!", 234, 287, 16);
      mostrarTexto = false;
    }
  }
  // Estado: cam1
  else if (estados.equals("cam1")) {
    image(imagenes[3], 0, 0);
    botoncamara2 = (mouseX > 221 && mouseY > 449 && mouseX < 404 && mouseY < 478);
    image(imagenes[2], 221, 449);
    imagenes[2].resize(167, 32);
    
  if (frameCount >= 1 * 60) {
      mostrarTexto = true;

      
    }
    if (mostrarTexto) {
      textSize(22);
      fill(255,alpha);
      text("Estos son los animatronicos \n Bonnie, chica y Freddy...\nfalta foxy pero ese esta medio escondido... ", 21, 70, 16);
      mostrarTexto = false;
      image(imagenes[7],532,Cposy);
    }
   if (Cposy >= 22.1) {
      vely = -0.5;
    }
    Cposy += vely;
    
    if (Cposy <= 0) {
      vely = 0.5;
    }
   if (alpha < 200) {
      alpha += 2; 
    }
 
   if (frameCount >= tiempoEspera2) {
      estados = "cam2";
      frameCount = 0;
       alpha = 0;
    }
}
  // Estado: cam2
  else if (estados.equals("cam2")) {
    image(imagenes[4], 0, 0);
    imagenes[4].resize(640, 480);
    botoncamara3 = (mouseX > 221 && mouseY > 449 && mouseX < 404 && mouseY < 478);
    image(imagenes[2], 221, 449);
    imagenes[2].resize(183, 29);
    image (imagenes[7],27,Cposy);
    
    
    if (frameCount >= 1 * 60) {
      mostrarTexto = true;
    }
    
    if (mostrarTexto) {
      textSize(22);
      fill(255,alpha);
      text("nada por aca... volvamos a la oficina!!!", 149, 155, 16);
      mostrarTexto = false;
    }
    
     if (Cposy >= 22.1) {
      vely = -0.5;
    }
    Cposy += vely;
    
    if (Cposy <= 0) {
      vely = 0.5;
    }
  
   if (alpha < 200) {
      alpha += 2; 
    }
  
  }else if (estados.equals("pantallaultima")) {
    image (imagenes[9],0,0);
    image (imagenes[8],252,151);
    
     botoncamara4 = (mouseX > 235 && mouseY > 293 && mouseX < 395 && mouseY < 332);
  fill(0,alpha);
    rect(234, 293, 161, 39);
    fill(255,alpha);
    text("reiniciar?",256,315);
    
    
     }
   if (alpha < 200) {
      alpha += 1; 
    }
  
}
    

// BOTONESSSSSSS
void mousePressed() {
  if (estados.equals("menu") && botonnewgame) {
    estados = "diario";
    alpha = 0; 
    frameCount = 0; // Reiniciar frameCount
  } else if (estados.equals("juego") && botoncamara) {
    estados = "cam1";
     alpha = 0; 
    frameCount = 0; // Reiniciar frameCount
  } else if (estados.equals("cam1") && botoncamara2) {
    estados = "juego";
      alpha = 0; 
    frameCount = 0; // Reiniciar frameCount
  } else if (estados.equals("cam2") && botoncamara3) {
    estados = "pantallaultima";
      alpha = 0; 
    frameCount = 0; // Reiniciar frameCount
     } else if (estados.equals("pantallaultima") && botoncamara4) {
    estados = "menu";
      alpha = 0; 
    frameCount = 0; // Reiniciar frameCount
}
}

// m quede dura despues de este tp
