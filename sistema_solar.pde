
float ang,angMer, angVen, angTierra, angMarte, angJup, angNep, angLuna;
float posYmercurio, posYvenus, posYtierra, posYmarte, posYjupiter, posYneptuno, posYluna;
PShape sol, mercurio, venus, tierra, marte, jupiter, luna, neptuno;
PImage space;


void setup()
{
  fullScreen(P3D);
  stroke(0);
  space = loadImage("data/espacio.jpg");
  //Inicializamos el PShape del sol
  sol =createShape(SPHERE,150);
  createPlanet(sol,"data/sol.jpg");
  //Inicializamos mercurio
  mercurio = createShape(SPHERE,20);
  createPlanet(mercurio, "data/mercurio.jpg");
  //Inicializamos venus
  venus = createShape(SPHERE,35);
  createPlanet(venus, "data/venus.jpg");
  //Inicializa la tierra
  tierra = createShape(SPHERE, 37);
  createPlanet(tierra, "data/tierra.jpg");
  //Inicializa Marte
  marte = createShape(SPHERE,28);
  createPlanet(marte, "data/marte.jpg");
  //Inicializa Jupiter
  jupiter = createShape(SPHERE,70);
  createPlanet(jupiter, "data/jupiter.jpg");
  //Inicializa Neptuno
  neptuno = createShape(SPHERE,45);
  createPlanet(neptuno, "data/neptuno.jpg");
  ang=0;
  angMer=0; angVen = 0; angTierra = 0; angMarte = 0; angJup = 0; angLuna=0; angNep = 0;
  //Inicializamos diferentes posiciones Y
  posYmercurio = random(-height/6,height/6); posYvenus = random(-height/5,height/5); posYtierra = random(-height/5,height/5); posYmarte = random(-height/5,height/5);
  posYjupiter = random(-height/5,height/5); posYneptuno = random(-height/5,height/5);
}


void draw()
{
  background(space);
  drawControl();
  showSol();
  
  //Resetea tras giro completo del sol
  ang=ang+0.25;
  if (ang>360)
    ang=0;
    
  //Mostramos los planetas del sistema solar
  showPlanet(0.9,0.1, posYmercurio,mercurio, 0);
  showPlanet(0.5,0.14,posYvenus,venus,1);
  showPlanet(0.3, 0.22,posYtierra,tierra,2);
  showPlanet(0.25, -0.3,posYmarte,marte,3);
  showPlanet(0.10, 0.4,posYjupiter,jupiter,4);
  showPlanet(0.05, -0.55,posYneptuno,neptuno,5);
    
}

void showSol(){
  translate(width/2, height/2, 0);
  rotateX(radians(-45));
  pushMatrix();
  rotateY(radians(ang));
  shape(sol);
  popMatrix();
}

void showPlanet(float angOrb, float posX, float posY, PShape planet, int index){
  pushMatrix();
  rotateY(radians(getAngPlanet(index)));
  translate(-width*posX,posY,0);
  shape(planet);
  popMatrix();
  
  //Resetea tras giro completo de la orbita
  addAngOrbita(index,angOrb);
}

float getAngPlanet(int index){
  float res = 0;
  switch(index) {
    case 0: 
      return angMer;
    case 1: 
      return angVen;
    case 2:
      return angTierra;
    case 3:
      return angMarte;
    case 4:
      return angJup;
    case 5:
      return angNep;
  }
  return res;
}

void addAngOrbita(int index, float angOrb){
  switch(index) {
    case 0: 
      angMer=angMer+angOrb;
      if(angMer>360)
        angMer=0;
      break;
    case 1: 
      angVen=angVen+angOrb;
      if(angVen>360)
        angVen=0;
      break;
    case 2:
      angTierra=angTierra+angOrb;
      if(angTierra>360)
        angTierra=0;
      break;
    case 3:
      angMarte=angMarte+angOrb;
      if(angMarte>360)
        angMarte=0;
      break;
    case 4:
      angJup=angJup+angOrb;
      if(angJup>360)
        angJup=0;
      break;
    case 5:
      angNep=angNep+angOrb;
      if(angNep>360)
        angNep=0;
      break;
  }
}

void createPlanet(PShape planet , String URLtextura){
  beginShape();
  planet.setStroke(255);
  planet.setTexture(loadImage(URLtextura));
  endShape(CLOSE);
}

void drawControl(){
  textAlign(LEFT);
  textSize(20);
  fill(255);
  text("Pulsa ESC para cerrar el programa",50,50);
  textAlign(RIGHT);
  text("© Eduardo Maldonado Fernández",width,height);
}
