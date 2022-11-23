class Jugador {

  FWorld mundo;
  SoundFile laser;
  Ficha c1, c2, c3, c4, c5, c6;
  Ficha[] fichas = new Ficha[6];
  Base base;
  ArrayList <FCircle> balas;
  float sel = 0;
  float adelanto;
  color jugadorCol;
  boolean j1;
  boolean posicionando = false;  //variable para decidir si estamos en instacia de posicionar o no
  boolean apuntar = false;       //variable para decidir si estamos en instancia de apuntar
  boolean etapaPos = false;

  Jugador(PApplet app, FWorld w, float px, float py, float objX, float objY, float a, float bPos, boolean j) {
    mundo = w;
    laser = new SoundFile(app, "lasers.wav", false);
    adelanto = a;
    j1 = j;
    if (j1) {
      jugadorCol = color(255, 0, 0);
      posicionando = true;
      etapaPos = true;
    } else {
      jugadorCol = color(0, 0, 255);
      posicionando = true;
      etapaPos = true;
    }
    c1 = new Ficha(mundo, px, py, objX, objY, jugadorCol, false);
    c2 = new Ficha(mundo, px, py, objX, objY, jugadorCol, false);
    c3 = new Ficha(mundo, px, py, objX, objY, jugadorCol, false);
    c4 = new Ficha(mundo, px, py, objX, objY, jugadorCol, true);
    c5 = new Ficha(mundo, px, py, objX, objY, jugadorCol, true);
    c6 = new Ficha(mundo, px, py, objX, objY, jugadorCol, true);
    fichas[0] = c1;
    fichas[1] = c2;
    fichas[2] = c3;
    fichas[3] = c4;
    fichas[4] = c5;
    fichas[5] = c6;
    base = new Base(mundo, bPos, height/2, 5, jugadorCol);
    balas = new ArrayList<FCircle>();
  }

  void dibujar() {
    if (frameCount%1200 == 0) {
      if (j1) {
        if (!etapaPos) {
          posicionando = false;
          apuntar = false;
          select (c1, false);
          select (c2, false);
          select (c3, false);
          select (c4, false);
          select (c5, false);
          select (c6, false);
        } else {
          posicionando = true;
          apuntar = true;
          select (c1, true);
          select (c2, true);
          select (c3, true);
          select (c4, true);
          select (c5, true);
          select (c6, true);
        }
      } else {
        posicionando = false;
        apuntar = false;
      }
      if (!j1) {
        if (!etapaPos) {
          posicionando = false;
          apuntar = false;
          select (c1, false);
          select (c2, false);
          select (c3, false);
          select (c4, false);
          select (c5, false);
          select (c6, false);
        } else {
          posicionando = true;
          apuntar = true;
          select (c1, true);
          select (c2, true);
          select (c3, true);
          select (c4, true);
          select (c5, true);
          select (c6, true);
        }
      } else {
        posicionando = false;
        apuntar = false;
      }
    }

    c1.dibujar(jugadorCol);
    c2.dibujar(jugadorCol);
    c3.dibujar(jugadorCol);
    c4.dibujar(jugadorCol);
    c5.dibujar(jugadorCol);
    c6.dibujar(jugadorCol);
    base.actualizar();
    if (j1) {
      base.dibujarVida(width/20, height/2, jugadorCol);
    } else {
      base.dibujarVida(width-width/20, height/2, jugadorCol);
    }
    if (!etapaPos && frameCount%180 == 0) {
      disparar();
    }
  }

  void cambioEtapa() {
    etapaPos = !etapaPos;
  }

  void cambioEtapa(boolean b) {
    etapaPos = b;
  }

  void reinicioFichas() {
    c1.reiniciar();
    c2.reiniciar();
    c3.reiniciar();
    c4.reiniciar();
    c5.reiniciar();
    c6.reiniciar();
    posicionando = true;
  }

  void disparar() {
    c1.disparo(balas);   //disparar la ficha 1
    c2.disparo(balas);   //disparar la ficha 2
    c3.disparo(balas);   //disparar la ficha 3
    if (laser.isPlaying() == false) {
      laser.play();
    }
  }

  void select(Ficha c, boolean sel) {    //función para seleccionar/deseleccionar fichas
    if (sel) {
      c.seleccionar();
    } else {
      c.deSeleccionar();
    }
  }

  void deSeleccionar() {
    select(c1, false);
    select(c2, false);
    select(c3, false);
    select(c4, false);
    select(c5, false);
    select(c6, false);
    posicionando = false;
    apuntar = false;
  }

  boolean frenado() {
    return (etapaPos);
  }

  void click() {
    if(conTuio){
      if(id0Presente && posicionando){
        if(j1 && xPuntero0< width/2){
            c1.setPos(xPuntero0, yPuntero0); 
            c1.apuntarAngulo(angulo0 + PI/2);
        }
      }
      if(id1Presente && posicionando){
        if(j1 && xPuntero1< width/2){
            c2.setPos(xPuntero1, yPuntero1); 
            c2.apuntarAngulo(angulo1 + PI/2);
        }
      }
       if(id2Presente && posicionando){
        if(j1 && xPuntero2< width/2){
            c3.setPos(xPuntero2, yPuntero2); 
            c3.apuntarAngulo(angulo2 + PI/2);
        }
       }
      if(id3Presente && posicionando){
        if(!j1 && xPuntero3< width/2){
            c4.setPos(xPuntero3, yPuntero3);
            c4.apuntarAngulo(angulo3 + PI/2);
        }
      }
    if(id4Presente && posicionando){
        if(!j1 && xPuntero4< width/2){
            c5.setPos(xPuntero4, yPuntero4); 
            c5.apuntarAngulo(angulo4 + PI/2);
        }
    }
    if(id5Presente && posicionando){
        if(!j1 && xPuntero5< width/2){
            c6.setPos(xPuntero5, yPuntero5); 
            c6.apuntarAngulo(angulo5 + PI/2);
        }
      }
      if(id6Presente && posicionando){
        if(j1 && xPuntero6> width/2){
            c1.setPos(xPuntero6, yPuntero6); 
            c1.apuntarAngulo(angulo6 + PI/2);
        }
      }
      if(id7Presente && posicionando){
        if(j1 && xPuntero7> width/2){
            c2.setPos(xPuntero7, yPuntero7); 
            c2.apuntarAngulo(angulo7 + PI/2);
        }
      }
       if(id8Presente && posicionando){
        if(j1 && xPuntero8> width/2){
            c3.setPos(xPuntero8, yPuntero8); 
            c3.apuntarAngulo(angulo8 + PI/2);
        }
       }
      if(id9Presente && posicionando){
        if(!j1 && xPuntero9> width/2){
            c4.setPos(xPuntero9, yPuntero9);
            c4.apuntarAngulo(angulo9 + PI/2);
        }
      }
    if(id10Presente && posicionando){
        if(!j1 && xPuntero10> width/2){
            c5.setPos(xPuntero10, yPuntero10); 
            c5.apuntarAngulo(angulo10 + PI/2);
        }
    }
    if(id11Presente && posicionando){
        if(!j1 && xPuntero11> width/2){
            c6.setPos(xPuntero11, yPuntero11); 
            c6.apuntarAngulo(angulo11 + PI/2);
        }
      }
    }else{
    if (posicionando && sel == 3) {        //si estoy en etapa de posición y con la pieza 3 seleccionada
      if ((j1 && mouseX < width/2) || (!j1 && mouseX > width/2)) {
        c3.setPos(mouseX, mouseY);       //posicionar sobre el mouse
      }
    } else if (posicionando && sel == 2) { //si estoy en etapa de posición y con la pieza 2 seleccionada
      if ((j1 && mouseX < width/2) || (!j1 && mouseX > width/2)) {
        c2.setPos(mouseX, mouseY);           //posicionar sobre el mouse
      }
    } else if (posicionando && sel == 1) { //si estoy en etapa de posición y con la pieza 1 seleccionada
      if ((j1 && mouseX < width/2) || (!j1 && mouseX > width/2)) {
        c1.setPos(mouseX, mouseY);           //posicionar sobre el mouse
      }
    } else {
      //c1.disparo();      //no usar de esta forma, era una prueba
      //c2.disparo();      //no usar de esta forma, era una prueba
      //c3.disparo();      //no usar de esta forma, era una prueba
    }}
    if (apuntar && sel == 3) {        //si estoy en etapa de apuntado y con la pieza 3 seleccionada
      c3.apuntar(mouseX, mouseY);       //apuntar hacia el mouse
    } else if (apuntar && sel == 2) { //si estoy en etapa de apuntado y con la pieza 2 seleccionada
      c2.apuntar(mouseX, mouseY);       //apuntar hacia el mouse
    } else if (apuntar && sel == 1) { //si estoy en etapa de apuntado y con la pieza 1 seleccionada
      c1.apuntar(mouseX, mouseY);       //apuntar hacia el mouse
    }
  }

  /*void tecla(FWorld w, char tecla, char p, char a, char x) {
    if (etapaPos) {
      if (tecla == p) {
        posicionando = true;
        apuntar = false;
      } else if (tecla == a) {
        posicionando = false;
        apuntar = true;
      } else if (tecla == x) {
        if (posicionando || apuntar) {
          if (sel==1) {
            c1.cambioFicha(w);
          }
          if (sel==2) {
            c2.cambioFicha(w);
          }
          if (sel==3) {
            c3.cambioFicha(w);
          }
        }
      }
    }
  }

  void teclaSel(char tecla) {
    //-------------si estoy posicionando---------
    if (posicionando || apuntar) {
      //-----------y presiono la tecla 1-----------
      if (tecla == '1') {
        //-----------selecciono la ficha c1 y deselecciono las otras---------
        sel = 1;
        select(c1, true);
        select(c2, false);
        select(c3, false);
      }
      //-----------y presiono la tecla 2----------
      if (tecla == '2') {
        //-----------selecciono la ficha c2 y deselecciono las otras---------
        sel = 2;
        select(c1, false);
        select(c2, true);
        select(c3, false);
      }
      //-----------y presiono la tecla 3----------
      if (tecla == '3') {
        //-----------selecciono la ficha c3 y deselecciono las otras---------
        sel = 3;
        select(c1, false);
        select(c2, false);
        select(c3, true);
      }
    }
  }*/

  Ficha[] getFichas() {
    return fichas;
  }

  float vida() {
    return base.vida();
  }

  ArrayList balas() {
    return balas;
  }
}
