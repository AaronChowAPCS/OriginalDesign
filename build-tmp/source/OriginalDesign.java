import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

//Aaron Chow
//AP Computer Science Block 3
//This is my original Landscape design

public void setup()
{
  size(425,425);
}
public void draw()
{
  background(0, 166,255);
  sun();
  clouds();
  hills();
  road();
  nightTime();
}
public void clouds()
{
  fill(255, 255, 255);
  ellipse(286,79,106,76);
  ellipse(341,77,64,56);
  ellipse(223,77,64,56);
}
public void hills()
{
  fill(46, 199, 94);
  noStroke();
  ellipse(117,339,432,236);
  ellipse(329,369,322,200);
}
public void sun()
{
  fill(230, 220, 32);
  ellipse(mouseX,mouseY,150,150);
}
public void road()
{
  fill(0, 0, 0);
  bezier(216,514,98,436,348,244,347,273);
}
public void nightTime()
{
	if(mouseY>117 && mouseY>339)
		{
		background(0,0,0);
        sun();
  		clouds();
  		hills();
  		road();
		}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
