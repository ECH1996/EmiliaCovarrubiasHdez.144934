int screen, turn=1, P1, P2;
boolean player1, player2;
float a;
float y;
float x;
float r;
float dx;
float dy;
PER J1, J2;

void setup(){
  size(800,600);
  J1 = new PER(10,100);
  J2 = new PER(10,100);
}

void draw(){
  pantallas();
}

class PER{
  int atack;
  int life;
  
  PER(int atack_, int life_){
    atack = atack_;
    life = life_;
  }
  
  void p1(){
  pushMatrix();
  fill(0);
  noStroke();
  strokeWeight(10);
  triangle (300, 350, 200,550,400,550);
  strokeWeight(10);
  ellipse(300, 300, 200, 170); 
   stroke(0);
  strokeWeight(10);
  triangle(325,285,395,300,395, 180);
  triangle(275,285,205,300,200, 180);
  fill(255);
  noStroke();
  ellipse(355,305,40,35);
  ellipse(240,305,40,35);
  fill(120);
  stroke(120);
  triangle(300,350,310,340,290,340);
  popMatrix();
  }
  
  void p2(){
   pushMatrix();
   fill(#2579AF);
   noStroke();
   strokeWeight(10);
   quad (300, 600, 200,450,300,370,400,450);
   strokeWeight(10);
   ellipse(300, 300, 200, 170); 
   triangle(300, 150, 200, 300, 400, 300);
   triangle(250, 190, 200, 300, 400, 300);
   triangle(350, 190, 200, 300, 400, 300);
   stroke(0);
   strokeWeight(10);
   fill(255);
   noStroke();
   ellipse(355,305,40,35);
   ellipse(240,305,40,35);
   fill(120);
   stroke(120);
   popMatrix();
  }
  
  void p3(){
  pushMatrix();
  strokeWeight(10);
  triangle (300, 350, 200,550,400,550);
  strokeWeight(10);
  ellipse(300, 300, 200, 170); 
  stroke(0);
  strokeWeight(10);
  triangle(275,230,205,300,200, 180);
  fill(#151515);
  noStroke();
  ellipse(355,305,40,35);
  ellipse(240,305,40,35);
  fill(#BC0808);
  strokeWeight(0);
  strokeJoin(ROUND);
  stroke(#151515);
  ellipse(355,305,40,35);
  ellipse(240,305,40,35);
  fill(#151515);
  strokeWeight(5);
  strokeJoin(ROUND);
  stroke(120);
  popMatrix();
  }
  
  void p4(){
  pushMatrix();
  fill(0);
  noStroke();
  strokeWeight(10);
  triangle (300, 350, 200,550,400,550);
  strokeWeight(10);
  ellipse(300, 300, 200, 170); 
  stroke(0);
  strokeWeight(10);
  triangle(325,220,395,300,395, 180);
  triangle(275,220,205,300,200, 180);
  fill(255);
  noStroke();
  ellipse(335,305,40,35);
  ellipse(265,305,40,35);
  fill(120);
  strokeWeight(5);
  strokeJoin(ROUND);
  stroke(120);
  triangle(300,350,310,340,290,340);
  popMatrix();
  }
  void p5(){
    pushMatrix();
  smooth();
fill(#FFD608);
noStroke();
   triangle(300, 159, 200, 300, 400, 300);
    triangle(250, 180, 200, 300, 400, 300);
     triangle(350, 180, 200, 300, 400, 300);
     
  fill(#FFFFFC);
  noStroke();
  triangle (300, 350, 200,550,400,550);
  strokeWeight(10);
  ellipse(300, 300, 200, 170);
  
  strokeJoin(ROUND);
  stroke(250);
  strokeWeight(10);
  triangle(325,220,395,300,395, 180);
  triangle(275,220,205,300,200, 180);
  fill(92);
  noStroke();
  ellipse(335,305,40,35);
  ellipse(265,305,40,35);
  fill(255,195,250);
  strokeWeight(5);
  strokeJoin(ROUND);
  stroke(255,195,250);
  triangle(300,350,310,340,290,340);
  popMatrix();
  }
}

void pantallas(){
  switch(screen){
    case 0:
    background(0);
    pushMatrix();
    frameRate(2);
    smooth();
    fill(255,90);
    r = random(3, 8);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(3.00+a), 700, 1, 700, 3);
    dy = map(noise(4.00+a), 700, 1, 700, 3);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.09;
    textAlign(CENTER);
    textSize(12);
    fill(230);
    text("Presiona Enter para continuar",600,450);
    text("Strange Magic:\n\nThoth es un pequeño gato, aprendiz de la magia oscura. Su proposito sera volverse el mago mas poderoso y \nrespetado de todos, incluso volverse su rey.\nTu decides si ayudarlo en su proposito o derrotarlo",400,200);
    popMatrix();
     
    if(key == ENTER){
      screen = 1;
    }
    
    break;
    
    case 1:
    background(#301A48);
    pushMatrix();
    frameRate(10);
    smooth();
    fill(230);
    r = random(3, 10);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(1.00+a), 500, 10, 600, 9);
    dy = map(noise(1.00+a), 500, 10, 600, 9);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.03;
    text("Bestia\nPresiona Q",100,100);
    text("Hada\nPresiona W",250,100);
    text("Mago\nPresiona E",400,100);
    text("Toth\nPresiona R",550,100);
    text("Principe Gato\nPresiona T",700,100);
    text("Bestia\nPresiona 1",100,400);
    text("Hada\nPresiona 2",250,400);
    text("Mago\nPresiona 3",400,400);
    text("Toth\nPresiona 4",550,400);
    text("Principe Gato\nPresiona 5",700,400);
    popMatrix();
    pushMatrix();
    scale(0.4);
    translate(0,200);
    J1.p1();
    translate(300,0);
    J1.p2();
    translate(400,0);
    J1.p3();
    translate(400,0);
    J1.p4();
    translate(400,0);
    J1.p5();
    popMatrix();
    switch(key){
      case 'q':
      player1 = true;
      P1 = 0;
      break;
      
      case 'w':
      player1 = true;
      P1 = 1;
      break;
      
      case 'e':
      player1 = true;
      P1 = 2;
      break;
      
      case 'r':
      player1 = true;
      P1 = 3;
      break;
      
      case 't':
      player1 = true;
      P1 = 4;
      break;
      
      case '1':
      player2 = true;
      P2 = 0;
      break;
      
      case '2':
      player2 = true;
      P2 = 1;
      break;
      
      case '3':
      player2 = true;
      P2 = 2;
      break;
      
      case '4':
      player2 = true;
      P2 = 3;
      break;
      
      case '5':
      player2 = true;
      P2 = 4;
      break;
    }
    if (player1 && player2){
      screen = 2;
    }
    break;
    
    case 2:
     background(#301A48);
    pushMatrix();
    frameRate(10);
    smooth();
    fill(230);
    r = random(3, 10);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(1.00+a), 500, 10, 600, 9);
    dy = map(noise(1.00+a), 500, 10, 600, 9);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.03;
    textSize(40);
    fill(0);
    text("PS",50,100);
    text("PS",550,100);
    text(J1.life,100,100);
    text(J2.life,600,100);
    popMatrix();
    pushMatrix();
    scale(0.5);
    translate(200,200);
    switch(P1){
      case 0:
      J1.p1();
      break;
      
      case 1:
      J1.p2();
      break;
      
      case 2: 
      J1.p3();
      break;
      
      case 3:
      J1.p4();
      break;
      
      case 4:
      J1.p5();
      break;
    }
    popMatrix();
    pushMatrix();
    scale(0.5);
    translate(800,200);
    switch(P2){
      case 0:
      J2.p1();
      break;
      
      case 1:
      J2.p2();
      break;
      
      case 2: 
      J2.p3();
      break;
      
      case 3:
      J2.p4();
      break;
      
      case 4:
      J2.p5();
      break;
    }
    popMatrix();
    
    if(turn == 1){
      text("Jugador 1: Presiona A",300,500);
      if (keyPressed){
        if(key == 'a' || key == 'A'){
          J2.life = J2.life - J1.atack;
          turn=2;
        }
      }
    }
    
    if(turn == 2){
      text("Jugador 2: Presiona 6",300,500);
      if (keyPressed){
        if(key == '6'){
          J1.life = J1.life - J2.atack;
          turn=1;
        }
      }
    }
    
    if(J1.life <= 0 || J2.life <= 0){
      screen = 3;
    }
    break;
    
    case 3:
    background(#301A48);
    pushMatrix();
    frameRate(10);
    smooth();
    fill(230);
    r = random(3, 10);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(1.00+a), 500, 10, 600, 9);
    dy = map(noise(1.00+a), 500, 10, 600, 9);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.03;
    if(J1.life>0){
      fill(255);
      textSize(50);
      text("Ganaste",300,300);
    }
    if(J2.life>0){
      fill(255);
      textSize(50);
      text("Ganaste",300,300);
    }
    textSize(20);
    text("Presiona Z para reiniciar",300,500);
    popMatrix();
    if (key == 'z' || key == 'Z'){
      turn = 1;
      screen = 0;
      player1 = false;
      player2 = false;
      J1.life = 200;
      J2.life = 200;
    }
    break;
    
  }
}