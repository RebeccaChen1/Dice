Die [] dice;
void setup()
{
	size(300,300);
	noLoop();
	dice = new Die[360];

}
void draw()
{
	background(200,200,200);
	int sum=0;
	for(int x=0;x<300;x=x+50)
	{
		for(int y=0;y<300;y=y+50)
		{
			dice[y] = new Die(x,y);
			dice[y].roll();
			dice[y].show();
			sum = dice[y].numDots +sum;
		}
	}
	textAlign(CENTER);
	textSize(35);
	text("Total Dots: "+(sum),150,150);
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int numDots;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		numDots = (int)(Math.random()*6+1);
		//variable initializations here
	}
	void roll()
	{
		numDots = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill(255,255,255);
		rect(myX, myY, 50, 50);
		fill(0);
		if(numDots==1)
		{
			ellipse(myX+25,myY+25,5,5);
		}
		else if(numDots==2)
		{
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+35,myY+35,5,5);
		}
		else if(numDots==3)
		{
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+25,myY+25,5,5);
			ellipse(myX+40,myY+40,5,5);
		}
		else if(numDots==4)
		{
			ellipse(myX+15,myY+15,5,5);
			ellipse(myX+37,myY+15,5,5);
			ellipse(myX+15,myY+35,5,5);
			ellipse(myX+37,myY+35,5,5);
		}
		else if(numDots==5)
		{
			ellipse(myX+13,myY+12,5,5);
			ellipse(myX+40,myY+12,5,5);
			ellipse(myX+13,myY+37,5,5);
			ellipse(myX+40,myY+37,5,5);
			ellipse(myX+25,myY+25,5,5);
		}
		else
		{
			ellipse(myX+15,myY+10,5,5);
			ellipse(myX+35,myY+10,5,5);
			ellipse(myX+15,myY+25,5,5);
			ellipse(myX+35,myY+25,5,5);
			ellipse(myX+15,myY+40,5,5);
			ellipse(myX+35,myY+40,5,5);
		}
	}
}
