// Imagen de fondo referencia
PImage bg;
//Traer fuente
PFont fuentemedium;

//características rectángulo con frase construct
int xRecConst = 0;
int yRecConst = -72;
int widthxRecConst = 400;
int heightxRecConst = 81;
float rotationForthyFive = PI/4.0;

//características rectángulo con palabra THE y FROM THE
int widthThe = 290;
int heightThe = 42;

//características rectángulo con palabra FUTURE
int widthFuture = 316;

// Imagenes de rayos
PImage rayoBeish;
PImage rayoRojo;

//Imágenes engranajes
PImage ERojoOscuro;
PImage ERojoClaro;
PImage ECafe;

//Imágenes edificios
PImage EIzquierda;
PImage EDerecha;

void setup(){
  size(450,696);
  bg = loadImage("future.jpg");//cargar imagen de referencia para el fondo

  //Cargar fuente
  fuentemedium = loadFont("Teko-Medium-100.vlw");
  
  //Cargar imágenes de edificios
  EIzquierda = loadImage("edificiosIzquierda.png");
  EDerecha = loadImage("edificiosDerecha.png");
  
  //Cargar Imágenes de rayos
  rayoBeish = loadImage("rayoBeish.png");
  rayoRojo = loadImage("rayoRojo.png");
  
  //Cargar engranajes
  ERojoOscuro = loadImage("engranajeRojoOscuro.png");
  ERojoClaro = loadImage("engranajeRojoClaro.png");
  ECafe = loadImage("engranajeCafe.png");
}

void draw(){
 // background(bg);//fondo imagen de referencia
  
  //Fondo de color Beish
  background(218,191,144);  
  
  //Dibujo rectánguo con palabra Construct
  noStroke();
  fill(33,26,21);
  rotate(rotationForthyFive);
  rect(xRecConst,yRecConst,widthxRecConst,heightxRecConst);
  
  //Dibujo de áñabra CONSTRUCT
  fill(242,223,186);
  textFont(fuentemedium,90);
  text("CONSTRUCT", 50, -3);
  
  //Dibujo de edificio central
  fill(157,141,125);
  rect(255,-188,67,4);
  
  fill(113,95,73);
  noStroke();
  rect(256,-185,65,15);
  //lineas seccion superior)
  stroke(211,194,164);
  for(int i=0; i<=6; i+=3){
  line(257,-181+i,320,-181+i);
  }
  
  fill(157,141,125);
  rect(256,-170,65,80);
  //Lineas ventanas
  
  stroke(113,95,73);
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-168,260+i,-162);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-159,260+i,-155);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-152,260+i,-148);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-145,260+i,-141);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-138,260+i,-134);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-131,260+i,-127);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-124,260+i,-120);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-117,260+i,-113);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-110,260+i,-106);
  }  
  for(int i=0; i<=57.5; i+=2.5){
  line(260+i,-103,260+i,-99);
  }
  
  fill(82,69,53);
  noStroke();
  rect(254,-90,68,3);
  
  fill(157,141,125);
  rect(257,-87,63,15);
  
  fill(82,69,53);
  for(int i = 0; i <= 54; i+=6){
  rect(259+i,-85,5,13);
  }
  
  //Dibujo rectángulo con palabra THE
  noStroke();
  fill(88,30,25);
  rect(-8,9,widthThe,heightThe);
  
   //Dibujo de palabra THE
  fill(242,223,186);
  textFont(fuentemedium,50);
  text("THE", 220, 46);
  
  //Dibujo de rectángulo con frase FROM THE
  fill(73,61,49);
  noStroke();
  rect(399,9,widthThe,heightThe);
  
   //Dibujo de frase FROM THE
  fill(242,223,186);
  textFont(fuentemedium,50);
  text("FROM THE", 400, 46);  
  
  //Dibujo de rectángulo con palabra POWER
  fill(20);
  noStroke();
  rect(399,50,widthThe,118);
  
   //Dibujo de palabra POWER
  fill(236,57,22);
  textFont(fuentemedium,124);
  text("POWER", 399, 145);
 
  //Dibujo de rectángulo con palabra PAST
  fill(159,51,26);
  noStroke();
  rect(515,168,widthThe,195);
  
   //Dibujo de palabra PAST
  fill(10);
  rotate(2*(-rotationForthyFive));
  textFont(fuentemedium,124);
  text("PAST", -367, 600);
 
  //Dibujo de rectángulo con palabra FUTURE
  fill(236,57,22);
  noStroke();
  //stroke(255);
  //noFill();
  rect(-325,281,widthFuture,118);
  
   //Dibujo de palabra FUTURE
  fill(10);
  textFont(fuentemedium,130);
  text("FUTURE", -320, 380);
  
  //Dibujo de rectángulo con frase OF THE
  fill(126,105,88);
  noStroke();
  rect(-484,399,widthFuture,116);
  
   //Dibujo de frase OF THE
  fill(255,247,217);
  textFont(fuentemedium,54);
  rotate(2*(rotationForthyFive));
  text("OF THE", 398, 212);
  
  //Dibujo de rectángulo con rayo
  fill(209,53,24);
  noStroke();
  rect(400,-307,141,widthFuture);
  
  //Dibujo de engranaje Rojo Oscuro
  rotate(-rotationForthyFive);
  image(ERojoOscuro,270,183);
  
  //Dibujo engranaje cafe
  image(ECafe,0,155);
  
  //Dibujo engranaje rojo claro
  image(ERojoClaro,183,582);
  
  //Dibujo de rayo Beish
  image(rayoBeish,326,138);
  
  //Dibujo de rayo Rojo
  image(rayoRojo,0,428);
  
  //Dibujo Edificios dizquierda
  image(EIzquierda,163,2);
  
  //Dibujo Edificios derecha
  image(EDerecha,276,93);
}
