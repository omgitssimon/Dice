Die you;
int sum = 0; //total number

void setup()
{
	size(820,800);
	noLoop();
}

void draw()
{
	background(0);
	for(int y = 50; y < 600; y+=80)
	{
		for(int x = 50; x < 600; x+=60)
		{
			you = new Die(x,y);
			you.show();
			sum = sum + you.numDots;
		}
	}
	textSize(50);
	fill(255,0,0);
	text("T \n o \n t \n a \n l \n N \n U \n M",650 ,70); 
	text(":" + sum ,700 ,300);
}

void mousePressed()
{
	redraw();
	sum = 0;
}

class Die
{
	int a;
	int b;
	int c;
	int numDots;
	int myX;
	int myY;
	

	Die(int x, int y)
	{
		numDots = (int)(Math.random()*6 + 1);
		myX = x;
		myY = y;	
	}

	void show()
	{
		noStroke();
		fill(255,0,0);
		rect(myX,myY,50,60,95);
		fill(255,255,255); 

		if(numDots == 1)
		{
			ellipse(myX + 25,myY + 25,10,10); //ONE DICE
		}
		else if(numDots == 2)
		{
			ellipse(myX + 10,myY + 10,10,10); //TWO DIE
			ellipse(myX + 40,myY + 40,10,10);
		}
		else if(numDots == 3)
		{
			ellipse(myX + 10,myY + 10,10,10); //THREE
			ellipse(myX + 25,myY + 25,10,10);
			ellipse(myX + 40,myY + 40,10,10);
		}
		else if(numDots == 4)
		{
			ellipse(myX + 10,myY + 10,10,10); //FOUR
			ellipse(myX + 10,myY + 40,10,10);
			ellipse(myX + 40,myY + 10,10,10);
			ellipse(myX + 40,myY + 40,10,10);
		}
		else if(numDots == 5)
		{
			ellipse(myX + 10,myY + 10,8,8); //FIVE
			ellipse(myX + 10,myY + 40,8,8);
			ellipse(myX + 40,myY + 10,8,8);
			ellipse(myX + 40,myY + 40,8,8);
			ellipse(myX + 25,myY + 25,8,8);
		}
		else
		{
			ellipse(myX + 10,myY + 10,8,8); //SIX
			ellipse(myX + 10,myY + 25,8,8);
			ellipse(myX + 10,myY + 40,8,8);
			ellipse(myX + 40,myY + 10,8,8);
			ellipse(myX + 40,myY + 25,8,8);
			ellipse(myX + 40,myY + 40,8,8);
		}
	}
}
