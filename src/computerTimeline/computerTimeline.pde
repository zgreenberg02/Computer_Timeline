// timeline app by zach greenberg | 2017
// colors for appilcation FE938C, E6B89C, EAD2AC, 9CAFB7, 4281A4
int ypos;
PImage a, b, c, d, e, f, g, h;
void setup()
{
  background(#9CAFB7);
  size(900, 400);
  ypos = -40;
  a = loadImage("zuse24.png");
  b = loadImage("arc2.jpg");
  c= loadImage("ENIACmodified.gif"); //finish doing these
  d = loadImage("edsac.jpg");
  e = loadImage("eniac.jpg");
  f = loadImage("manchesterssem.jpeg");
  g = loadImage("Manchester_Mark1.jpg");
  h = loadImage("csirac.jpg"); 
}

void draw()
{
  background(#9CAFB7);
  drawRef();
  histEvent(50, 200+ypos, 80, 25, "Zuse 24", true, "Zuse 24 - Germany, March 1945, programed by 35 mm punch card ", a);
  histEvent(250, 200+ypos, 60, 25, "ARC2", true, "ARC2 - United Kingdom, May 1948, stored program in drum memory", b);
  histEvent(450, 200+ypos, 132, 25, "Modified ENIAC", true, "United States, September 1948, used ROM", c);
  histEvent(650, 200+ypos, 70, 25, "EDSAC", true, "United Kingdom, May 1949, used delay line memory", d);
  histEvent(150, 275+ypos, 65, 25, "ENIAC", false, "United States, July 1946, used patch cables and switches to controll", e);
  histEvent(350, 275+ypos, 145, 25, "Manchester SSEM", false, "United Kingdom, June 1948, used cathode ray tube memory", f);
  histEvent(550, 275+ypos, 145, 25, "Manchester Mk 1", false, "United Kingdom, April 1949, used cathode ray tube memory and magnetic drum memory.", g);
  histEvent(750, 275+ypos, 74, 25, "CSIRAC", false, "Australia, November 1949, used delay line memory", h);
}

void drawRef()
{
  strokeWeight(5);
  stroke(#FE938C);
  line(50, 250+ypos, width - 50, 250+ypos); // timeline

  fill(#295066);

  textSize(30);
  text(" Computer Timeline", 300, 35); // title
  textSize(20);
  text("Early Digital Computers", 340, 60); //subtitle
  textSize(15);
  text(" Hover over for more detailed description.", 300, 80); // description
  text("By: Zach Greenberg | 2017", 360, 100);
}

void histEvent(int x, int y, int w, int h, String title, boolean top, String desc, PImage img )
{
  if (top) // top of timeline
  {
    fill(#EAD2AC);
    strokeWeight(3);
    stroke(#FE938C);
    line(w/2+x, y+h, w/2+x+15, y+h+22);
    strokeWeight(0);
    stroke(#EAD2AC);
    rect(x, y, w, h, 10 );
    fill(0);
    strokeWeight(1);
    textSize(15);
    text(title, x+10, y+17);
  } else { // botom of timeline
    fill(#EAD2AC);
    strokeWeight(3);
    stroke(#FE938C);
    line(w/2+x, y, w/2+x+15, y-22);
    strokeWeight(0);
    rect(x, y, w, h, 10 );
    fill(0);
    strokeWeight(1);
    textSize(15);
    text(title, x+10, y+17);
  }

  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) { // mouse detcetion for decription
    fill(0);
    textSize(15);
    text(desc, 50, 350);

    image(img, 750, 290, 100, 100);

    /* used for displaying in different locations
     if (top){
     text(desc, x, y-15);
     } else{
     text(desc, x, y+h+20);
     }
     */
  }
}




















// \n is a new line 


/*  old code
 textSize(12);  
 text(" Zuse Z4 (Germany)  March 1945", 100, 120 ); //Top row
 text(" ARC2 (UK)  May 194", 290, 150 );
 text(" Modified ENIAC (US)  Sep. 1948", 480, 120 );
 text(" EDSAC (UK) May 1949", 670, 150 );
 
 text(" ENIAC (US)  July 1946", 185, 280 ); //Bottom row
 text(" Manchester Small-Scale Experimental Machine (Manchester SSEM) (UK)  June 1948", 375, 360 );
 text(" Manchester Mark 1 (Mk 1) (UK)  April 1949", 565, 320 );
 text(" CSIRAC (Australia)  Nov. 1949", 755, 280 );
 
 
 strokeWeight(1);
 //top lines   
 
 line(100, 120, 100, 200);
 line(290, 150, 290, 200);
 line(480, 120, 480, 200);
 line(670, 150, 670, 200);
 
 //  bottom lines
 
 line(185, 270, 185, 200);
 line(375, 350, 375, 200);
 line(565, 310, 565, 200);
 line(755, 270, 755, 200);
 
 */