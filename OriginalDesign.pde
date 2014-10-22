Particle [] asteroid = new Particle[200];
//Particle star = new OddballParticle();
void setup()
{
	size(500,500);
	for(int index = 0; index < asteroid.length; index++)
		asteroid[index] = new NormalParticle();
}
void draw()
{
	background(0);
	for(int index = 0; index < asteroid.length; index++)
	{
		asteroid[index].show();
		asteroid[index].move();
	}
}
interface Particle
{
	public void show();
	public void move();
}
class NormalParticle implements Particle
{
	float myX;
	float myY;
	int dTheta;
	float speed;
	int normalColor;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		dTheta = (int)((Math.random()*20) * Math.PI);
		speed = (float)(Math.random()*10);
	}
	public void show()
	{
		noStroke();
		normalColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		fill(normalColor);
		ellipse(myX,myY,10,10);
	}
	public void move()
	{
		myX = myX + (float)((Math.cos(dTheta)) * speed);
		myY = myY + (float)((Math.sin(dTheta)) * speed);
	}
}
//class OddballParticle implements Particle
//{

//
