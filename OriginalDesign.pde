//Aaron Chow
//AP Computer Science Block 3
//This is my original Landscape design

void setup()
{
  size(425,425);
}
void draw()
{
  background(0, 166,255);
  sun();
  clouds();
  hills();
  road();
  nightTime();
}
void clouds()
{
  fill(255, 255, 255);
  ellipse(286,79,106,76);
  ellipse(341,77,64,56);
  ellipse(223,77,64,56);
}
void hills()
{
  fill(46, 199, 94);
  noStroke();
  ellipse(117,339,432,236);
  ellipse(329,369,322,200);
}
void sun()
{
  fill(230, 220, 32);
  ellipse(mouseX,mouseY,150,150);
}
void road()
{
  fill(0, 0, 0);
  bezier(216,514,98,436,348,244,347,273);
}
void nightTime()
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