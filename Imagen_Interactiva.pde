//IMAGEN INTERACTIVA
//MAIA MORENO ZAMORA

PImage yo;
PImage questionmark1;
PImage questionmark2;
PImage libro1;
PImage libro2;
PImage computadora;
PImage texto;
PImage cerebro;
PImage fondo;

float yoX = 100, yoY = 100;
float questionmark1X = 100, questionmark1Y = 100;
float questionmark2X = 100, questionmark2Y = 100;
float libro1X = 100, libro1Y = 100;
float libro2X = 100, libro2Y = 100;
float computadoraX = 100, computadoraY = 100;
float textoX = 100, textoY = 100;
float cerebroX = 100, cerebroY = 100;

int cualArrastro = 0;
float offsetX, offsetY;

void setup(){
  size(900, 700);

  //imageMode(CENTER);
  fondo = loadImage("fondo.png");
  yo = loadImage("YO.png");
  questionmark1 = loadImage("Signo-de-interrogacion.png");
  questionmark2 = loadImage("signointerrogaciónrojo.png");
  libro1 = loadImage("libro1.png");
  libro2 = loadImage("libro2.png");
  texto = loadImage("texto.png");
  computadora = loadImage("computadora.png");
  cerebro = loadImage("cerebro.png");  
}

void draw() {
  tint(100);
  image(fondo, 0, 0, width, height); 
  
  noTint();
  image(yo, yoX, yoY, 600, 600);
  image(cerebro, cerebroX, cerebroY, 300, 300);
  image(questionmark1, questionmark1X, questionmark1Y, 300, 300);
  image(questionmark2, questionmark2X, questionmark2Y, 300, 300);
  image(libro1, libro1X, libro1Y, 300, 300);
  image(libro2, libro2X, libro2Y, 300, 300);
  image(texto, textoX, textoY, 300, 300);
  image(computadora, computadoraX, computadoraY, 300, 300);
  
}

void mousePressed() { 
  if (mouseX > cerebroX && mouseX < cerebroX + 300 &&
      mouseY > cerebroX && mouseY < cerebroY + 300) {
    cualArrastro = 7;
    offsetX = mouseX - cerebroX;
    offsetY = mouseY - cerebroY;
  }
  
   if (mouseX > questionmark1X && mouseX < questionmark1X + 300 &&
      mouseY > questionmark1Y && mouseY < questionmark1Y + 300) {
    cualArrastro = 1;
    offsetX = mouseX - questionmark1X;
    offsetY = mouseY - questionmark1Y;
  }
  
  if (mouseX > questionmark2X && mouseX < questionmark2X + 300 &&
      mouseY > questionmark2Y && mouseY < questionmark2Y + 300) {
    cualArrastro = 2;
    offsetX = mouseX - questionmark2X;
    offsetY = mouseY - questionmark2Y;
  }
  
  if (mouseX > libro1X && mouseX < libro1X + 300 &&
      mouseY > libro1Y && mouseY < libro1Y + 300) {
    cualArrastro = 3;
    offsetX = mouseX - libro1X;
    offsetY = mouseY - libro1Y;
  }
  
  if (mouseX > libro2X && mouseX < libro2X + 300 &&
      mouseY > libro2Y && mouseY < libro2Y + 300) {
    cualArrastro = 4;
    offsetX = mouseX - libro2X;
    offsetY = mouseY - libro2Y;
  }
  
   if (mouseX > textoX && mouseX < textoX + 300 &&
      mouseY > textoY && mouseY < textoY + 300) {
    cualArrastro = 5;
    offsetX = mouseX - textoX;
    offsetY = mouseY - textoY;
  }
  
   if (mouseX > computadoraX && mouseX < computadoraX + 300 &&
      mouseY > computadoraY && mouseY < computadoraY + 300) {
    cualArrastro = 6;
    offsetX = mouseX - computadoraX;
    offsetY = mouseY - computadoraY;
  }
  
  if (mouseX > yoX && mouseX < yoX + 600 &&
      mouseY > yoY && mouseY < yoY + 600) {
    cualArrastro = 8;
    offsetX = mouseX - yoX;
    offsetY = mouseY - yoY;
  }
}

void mouseDragged() {
 if (cualArrastro == 1) {
    questionmark1X = mouseX - offsetX;
    questionmark1Y = mouseY - offsetY;
  }
  
  if (cualArrastro == 2) {
    questionmark2X = mouseX - offsetX;
    questionmark2Y = mouseY - offsetY;
  }
  
  if (cualArrastro == 3) {
    libro1X = mouseX - offsetX;
    libro1Y = mouseY - offsetY;
  }
  
  if (cualArrastro == 4) {
    libro2X = mouseX - offsetX;
    libro2Y = mouseY - offsetY;
  }
  
  if (cualArrastro == 5) {
    textoX = mouseX - offsetX;
    textoY = mouseY - offsetY;
  }
  
  if (cualArrastro == 6) {
    computadoraX = mouseX - offsetX;
    computadoraY = mouseY - offsetY;
  }
  
  if (cualArrastro == 7) {
    cerebroX = mouseX - offsetX;
    cerebroY = mouseY - offsetY;
  }
  
  if (cualArrastro == 8) {
    yoX = mouseX - offsetX;
    yoY = mouseY - offsetY;
  }
}

void mouseReleased(){
 cualArrastro = 0; 
}
