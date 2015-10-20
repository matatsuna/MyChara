class Mychara {
  int basex;
  int basey;
  float zoom;
  int ear=250;
  int face;
  Mychara(int x, int y, float z) {
    basex=x;
    basey=y;
    zoom=z;
    face=0;
  }
  void draw() {
    smooth();
    scale(zoom);
    //body
    fill(0, 0, 0);
    beginShape();
    vertex(basex-50*zoom, basey+200*zoom);
    bezierVertex(basex-(50+100), basey+(200+100), basex-200, basey+(200+400), basex, basey+(200+400));
    vertex(basex, basey+200+400);
    bezierVertex(basex+200, basey+200+400, basex+50+100, basey+200+100, basex+50, basey+200);
    endShape();

    //foot
    strokeWeight(1);
    rect(basex-50, basey+580, 10, 50);
    rect(basex+50, basey+580, 10, 50);
    stroke(0, 0, 0);
    fill(255, 255, 0);
    ellipse(basex+50, basey+580+50, 100, 50);
    ellipse(basex-50, basey+580+50, 100, 50);

    //arm
    stroke(0, 0, 0);
    strokeWeight(20);
    line(basex+50+10, basey+300, basex+50+10+200, basey+300-50);
    line(basex-50-10, basey+300, basex-50-10-200, basey+300-50);  
    fill(255, 255, 255);
    stroke(0, 0, 0);
    strokeWeight(2);
    ellipse(basex+50+10+200, basey+300-50, 100, 100);
    ellipse(basex-50-10-200, basey+300-50, 100, 100);
    stroke(0, 0, 0);
    strokeWeight(2);

    //face 
    //ear
    fill(0, 0, 0);
    ellipse(basex-200+10, basey-150, ear, ear);
    ellipse(basex+200-50, basey-150, ear, ear);
    //face circle
    ellipse(basex, basey, (ear/2)*3, (ear/2)*3);
    //stroke(255,0,0);
    //line(basex,0,basex,480*2);

    strokeWeight(5);
    fill(252, 226, 196);//肌色
    noStroke();
    ellipse(basex+50, basey-25, 170, 275);
    ellipse(basex-50, basey-25, 170, 275);
    //fill(255,0,0);
    //ellipse(basex+50,basey+25,200,50);
    stroke(0, 0, 0);
    //line(basex+120,420-175+170,basex+120+50,420-175+170-5);
    //rect(basex+200,420-175+300,10,10);
    //rect(basex+50,420-175+300,10,10);
    //line(basex+120,420-175+170,basex+120+100,420-175+170-5);

    //ほっぺた
    fill(252, 226, 196);
    bezier(basex+120, basey+170-130, basex+120+120, basey+170-10-130, basex+200, basey+300-130, basex+30, basey+340-130);
    bezier(basex-120, basey+170-130, basex-120-120, basey+170-10-130, basex-200, basey+300-130, basex-30, basey+340-130);

    //顎
    arc(basex, basey+260-130, 200, 200, 0.5, 3.14-0.5);
    arc(basex, basey+200-130, 250, 250, 0.2, 3.14-0.2);

    //鼻
    fill(0, 0, 0);
    ellipse(basex, basey+100, 100, 50);
  }
  void eye() {
    //目
    stroke(0, 0, 0);
    fill(255, 255, 255);
    ellipse(basex+40, basey, 60, 130);
    ellipse(basex-40, basey, 60, 130);
    fill(0, 0, 0);
    float lefteyemousex=constrain(mouseX, float(basex-30-30)*0.5, float(basex-30+10)*0.5);
    float righteyemousex=constrain(mouseX, float(basex+30-10)*0.5, float(basex+30+30)*0.5);

    float lefteyemousey=constrain(mouseY, float(basey-30-20)*0.5, float(basey+30+10)*0.5);
    float righteyemousey=constrain(mouseY, float(basey-30-20)*0.5, float(basey+30+10)*0.5);
    //println("mousex "+mousex+" _mousex "+_mousex);
    ellipse(lefteyemousex*2, lefteyemousey*2, 30, 50);
    ellipse(righteyemousex*2, righteyemousey*2, 30, 50);  
    //ellipse(basex-30, basey+30, 30, 50);
    //ellipse(basex+30, basey+30, 30, 50);
  }
  void red() {
    fill(199, 9, 9);
    noStroke();
    ellipse(basex-130, basey+90, 100, 100);
    ellipse(basex+130, basey+90, 100, 100);
  }
}

