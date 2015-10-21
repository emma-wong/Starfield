Particle [] stars;

//your code here
public void setup()
{
	//your code here
	size(500, 500);
	stars = new Particle[300];
	for(int i = 0; i<stars.length; i++) {
		stars[0] = new OddballParticle();
		stars[1] = new JumboParticle();
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
interface Particle
{
	//your code here
	public void move();
	public void show();
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
		speed = (Math.random()*3);
		angle = (float)(Math.random()*10);
	}
	public void move() {
		myX = (float)((cos(angle)*speed)+ myX);
		myY = (float)((sin(angle)*speed)+ myY);
		if (myX <= 0 || myX >= 500) {
			myX = 250;
			myY = 250;	
		}
		if (myY <= 0 || myY >= 500) {
			myX = 250;
			myY = 250;
		}
	}
	public void show() {
		//noStroke();
		fill(colorR, colorG, colorB);
		ellipse(myX, myY,6,6);
	}
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
	boolean myMoveV;
	boolean myMoveH;
	OddballParticle() {
		myX = 250;
		myY = 350;
		myMoveV = true;
		myMoveH = true;
	}
	public void move() {
		if (myMoveV == true) {
			myY=myY+1.5;			
		}
		if (myMoveH == true) {
			myX++;
		}
		if (myMoveV == false) {
			myY--;
		}
		if (myMoveH == false) {
			myX--;
		}
		if (myX <= 4) {
			myMoveH = true;
		}
		if (myY <= 4) {
			myMoveV = true;
		}	
		if (myX >=496) {
			myMoveH = false;
		}
		if (myY >=496) {
			myMoveV = false;

		} 
	}
	public void show() {
		//noStroke();
		fill(255, 255, 255);
		ellipse(myX, myY,15,15);
	}	
}

class JumboParticle implements Particle//uses inheritance
{
	//your code here
	float myX;
	float myY;
	int colorR;
	int colorG;
	int colorB;
	double speed;
	float angle;
	
	JumboParticle() {
		myX = 250;
		myY = 250;
		colorR = (int)(Math.random()*255);
		colorG = (int)(Math.random()*255);
		colorB = (int)(Math.random()*255);
		speed = (Math.random()*3);
		angle = (float)(Math.random()*10);
	}
	public void move() {
		myX = (float)((cos(angle)*speed)+ myX);
		myY = (float)((sin(angle)*speed)+ myY);
		if (myX <= -50 || myX >= 550) {
			myX = 250;
			myY = 250;
			angle = (float)(Math.random()*10);
			colorR = (int)(Math.random()*255);
			colorG = (int)(Math.random()*255);
			colorB = (int)(Math.random()*255);			
		}
		if (myY <= -50 || myY >= 550) {
			myX = 250;
			myY = 250;
			angle = (float)(Math.random()*10);	
			colorR = (int)(Math.random()*255);
			colorG = (int)(Math.random()*255);
			colorB = (int)(Math.random()*255);	
		}
	}
	public void show() {
		//noStroke();
		fill(colorR, colorG, colorB);
		ellipse(myX, myY,36,36);
	}
}


