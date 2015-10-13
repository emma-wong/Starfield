NormalParticle [] stars;
//your code here
void setup()
{
	//your code here
	size(500, 500);
	stars = new NormalParticle[500];
	for(int i = 0; i<stars.length; i++) {
		stars[i] = new NormalParticle();
		//background(0,0,0);
	}
}
void draw()
{
	//your code here
	background(0, 0, 0);	
	for(int i=0; i < stars.length; i++) {
		stars[i].show();
		stars[i].move();		
	}	
}
class NormalParticle implements Particle
{
	//your code here
	float myX;
	float myY;
	int colorR;
	int colorG;
	int colorB;
	double speed;
	float angle;
	
	NormalParticle() {
		myX = 250;
		myY = 250;
		colorR = (int)(Math.random()*255);
		colorG = (int)(Math.random()*255);
		colorB = (int)(Math.random()*255);
		speed = (Math.random()*4);
		angle = (float)(Math.random()*10);
	}
	public void move() {
		myX = (float)((cos(angle)*speed)+ myX);
		myY = (float)((sin(angle)*speed)+ myY);
	}
	public void show() {
		//noStroke();
		fill(colorR, colorG, colorB);
		ellipse(myX, myY,6,6);
	}
}
interface Particle
{
	//your code here
	public void move();
	public void show();
}
class OddballParticle implements Particle//uses an interface
{
	float myX;
	float myY;
	int colorR;
	int colorG;
	int colorB;
	double speed;
	float angle;
	public void move() {
		myX = 300;//(float)((cos(angle)*speed)+ myX);
		myY = 300;//(float)((sin(angle)*speed)+ myY);
	}
	public void show() {
		//noStroke();
		fill(colorR, colorG, colorB);
		ellipse(myX, myY,40,40);
	}	

}
class JumboParticle //uses inheritance
{
	//your code here
}
