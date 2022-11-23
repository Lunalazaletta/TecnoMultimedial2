boolean verbose = false; // print console debug messages
boolean callback = true; // updates only after callbacks

float xPuntero0, yPuntero0;
float xPuntero1, yPuntero1;
float xPuntero2, yPuntero2;
float xPuntero3, yPuntero3;
float xPuntero4, yPuntero4;
float xPuntero5, yPuntero5;
float xPuntero6, yPuntero6;
float xPuntero7, yPuntero7;
float xPuntero8, yPuntero8;
float xPuntero9, yPuntero9;
float xPuntero10, yPuntero10;
float xPuntero11, yPuntero11;

float angulo0;
float angulo1;
float angulo2;
float angulo3;
float angulo4;
float angulo5;
float angulo6;
float angulo7;
float angulo8;
float angulo9;
float angulo10;
float angulo11;

int id0 = 0;
int id1 = 1;
int id2 = 2;
int id3 = 3;
int id4 = 4;
int id5 = 5;
int id6 = 6;
int id7 = 7;
int id8 = 8;
int id9 = 9;
int id10 = 10;
int id11 = 11;

boolean id0Presente = false;
boolean id1Presente = false;
boolean id2Presente = false;
boolean id3Presente = false;
boolean id4Presente = false;
boolean id5Presente = false;
boolean id6Presente = false;
boolean id7Presente = false;
boolean id8Presente = false;
boolean id9Presente = false;
boolean id10Presente = false;
boolean id11Presente = false;


// --------------------------------------------------------------
void addTuioObject(TuioObject tobj) {

  //pregunto por la identidad del objeto de TUIO
  if ( tobj.getSymbolID() == id1 ) {
    //cargo las coordenadas (de normalizadas a dimensiones de la pantalla)
    xPuntero1 = tobj.getX() * width;
    yPuntero1 = tobj.getY() * height;
    angulo1 = tobj.getAngle();
    id1Presente = true;
  } else if ( tobj.getSymbolID() == id2 ) {
    xPuntero2 = tobj.getX() * width;
    yPuntero2 = tobj.getY() * height;
    angulo2 = tobj.getAngle();
    id2Presente = true;
  }else if ( tobj.getSymbolID() == id3 ) {
    xPuntero3 = tobj.getX() * width;
    yPuntero3 = tobj.getY() * height;
    angulo3 = tobj.getAngle();
    id3Presente = true;
  }else if ( tobj.getSymbolID() == id4 ) {
    xPuntero4 = tobj.getX() * width;
    yPuntero4 = tobj.getY() * height;
    angulo4 = tobj.getAngle();
    id4Presente = true;
  }else if ( tobj.getSymbolID() == id5 ) {
    xPuntero5 = tobj.getX() * width;
    yPuntero5 = tobj.getY() * height;
    angulo5 = tobj.getAngle();
    id5Presente = true;
  }else if ( tobj.getSymbolID() == id6 ) {
    xPuntero6 = tobj.getX() * width;
    yPuntero6 = tobj.getY() * height;
    angulo6 = tobj.getAngle();
    id6Presente = true;
  } else if ( tobj.getSymbolID() == id7 ) {
    xPuntero7 = tobj.getX() * width;
    yPuntero7 = tobj.getY() * height;
    angulo7 = tobj.getAngle();
    id7Presente = true;
  }else if ( tobj.getSymbolID() == id8 ) {
    xPuntero8 = tobj.getX() * width;
    yPuntero8 = tobj.getY() * height;
    angulo8 = tobj.getAngle();
    id8Presente = true;
  }else if ( tobj.getSymbolID() == id9 ) {
    xPuntero9 = tobj.getX() * width;
    yPuntero9 = tobj.getY() * height;
    angulo9 = tobj.getAngle();
    id9Presente = true;
  }else if ( tobj.getSymbolID() == id10 ) {
    xPuntero10 = tobj.getX() * width;
    yPuntero10 = tobj.getY() * height;
    angulo10 = tobj.getAngle();
    id10Presente = true;
  }else if ( tobj.getSymbolID() == id11 ) {
    xPuntero11 = tobj.getX() * width;
    yPuntero11 = tobj.getY() * height;
    angulo11 = tobj.getAngle();
    id11Presente = true;
  }else if ( tobj.getSymbolID() == id0 ) {
    xPuntero0 = tobj.getX() * width;
    yPuntero0 = tobj.getY() * height;
    angulo0 = tobj.getAngle();
    id0Presente = true;
  }
}
void updateTuioObject (TuioObject tobj) {

  //actualizo las posiciones en X e Y de los fiduciales
  if ( tobj.getSymbolID() == id1 ) {
    xPuntero1 = tobj.getX() * width;
    yPuntero1 = tobj.getY() * height;
    angulo1 = tobj.getAngle();
  } else if ( tobj.getSymbolID() == id2 ) {
    xPuntero2 = tobj.getX() * width;
    yPuntero2 = tobj.getY() * height;
    angulo2 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id3 ) {
    xPuntero3 = tobj.getX() * width;
    yPuntero3 = tobj.getY() * height;
    angulo3 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id4 ) {
    xPuntero4 = tobj.getX() * width;
    yPuntero4 = tobj.getY() * height;
    angulo4 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id5 ) {
    xPuntero5 = tobj.getX() * width;
    yPuntero5 = tobj.getY() * height;
    angulo5 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id6 ) {
    xPuntero6 = tobj.getX() * width;
    yPuntero6 = tobj.getY() * height;
    angulo6 = tobj.getAngle();
  } else if ( tobj.getSymbolID() == id7 ) {
    xPuntero7 = tobj.getX() * width;
    yPuntero7 = tobj.getY() * height;
    angulo7 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id8 ) {
    xPuntero8 = tobj.getX() * width;
    yPuntero8 = tobj.getY() * height;
    angulo8 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id9 ) {
    xPuntero9 = tobj.getX() * width;
    yPuntero9 = tobj.getY() * height;
    angulo9 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id10 ) {
    xPuntero10 = tobj.getX() * width;
    yPuntero10 = tobj.getY() * height;
    angulo10 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id11 ) {
    xPuntero11 = tobj.getX() * width;
    yPuntero11 = tobj.getY() * height;
    angulo11 = tobj.getAngle();
  }else if ( tobj.getSymbolID() == id0 ) {
    xPuntero0 = tobj.getX() * width;
    yPuntero0 = tobj.getY() * height;
    angulo0 = tobj.getAngle();
  }
}
void removeTuioObject(TuioObject tobj) {
  if ( tobj.getSymbolID() == id1 ) {
    id1Presente = false;
  } else if ( tobj.getSymbolID() == id2 ) {
    id2Presente = false;
  } else if ( tobj.getSymbolID() == id3 ) {
    id3Presente = false;
  } else if ( tobj.getSymbolID() == id4 ) {
    id4Presente = false;
  } else if ( tobj.getSymbolID() == id5 ) {
    id5Presente = false;
  } else if ( tobj.getSymbolID() == id6 ) {
    id6Presente = false;
  }else if ( tobj.getSymbolID() == id7 ) {
    id7Presente = false;
  } else if ( tobj.getSymbolID() == id8 ) {
    id8Presente = false;
  } else if ( tobj.getSymbolID() == id9 ) {
    id9Presente = false;
  } else if ( tobj.getSymbolID() == id10 ) {
    id10Presente = false;
  } else if ( tobj.getSymbolID() == id11 ) {
    id11Presente = false;
  } else if ( tobj.getSymbolID() == id0 ) {
    id0Presente = false;
  }

}
// --------------------------------------------------------------
void addTuioCursor(TuioCursor tcur) {
}
void updateTuioCursor (TuioCursor tcur) {
}
void removeTuioCursor(TuioCursor tcur) {
}
// --------------------------------------------------------------
void addTuioBlob(TuioBlob tblb) {
}
void updateTuioBlob (TuioBlob tblb) {
}
void removeTuioBlob(TuioBlob tblb) {
}
// --------------------------------------------------------------
void refresh(TuioTime frameTime) {
  if (verbose) println("frame #"+frameTime.getFrameID()+" ("+frameTime.getTotalMilliseconds()+")");
  if (callback) redraw();
}
