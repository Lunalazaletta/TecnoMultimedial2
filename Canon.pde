class Canon {

  float tam;
  FWorld mundo;
  float angulo;
  color col;
  PImage balaImg;

  //--------Constructor: inicializo la bala, cargo como parámetros el mundo y el tamaño
  //--------de la bala.
  Canon(FWorld w, float t, color c, boolean rojo) {
    mundo = w;
    tam = t;
    col = c;
    if (rojo) {
      balaImg = loadImage("balaRoja.png");
      balaImg.resize(int(tam), 0);
    } else {
      balaImg = loadImage("balaAzul.png");
      balaImg.resize(int(tam), 0);
    }
  }

  void impulsar(FBody b) {
    //----setVelocity: mueve el FCircle bala a una cierta velocidad en x e y
    //usando seno y coseno hacemos que la velocidad dada sea hacia el angulo que usamos como
    //parametro.
    b.setVelocity(cos(angulo)*1500, sin(angulo)*1500);
  }

  void (float posX, float posY, float obj, ArrayList bal) {
    FCircle bala;
    bala = new FCircle(tam);
    bala.setDensity(1500);
    bala.setRestitution(0.5);
    bala.setBullet(true);
    bala.setName("bala");
    bala.setNoStroke();
    bala.attachImage(balaImg);
    //calculamos el angulo de 
    angulo = obj - PI;
    //movemos la bala a la posición de la que sale (40 pixeles fuera del centro de la ficha)
    bala.setPosition(posX+(40*cos(angulo)), posY+(40*sin(angulo)));
    //le damos velocidad a la bala
    impulsar(bala);
    bal.add(bala);
    mundo.add(bala);
  }
}
