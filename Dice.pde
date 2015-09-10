
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
	text("T \n o \n t \n a \n l \n N \n U \n M",650 ,75); 
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
		a = 25; //position dots 25,10,40
		b = 10; 
		c = 40;
	}

	void show()
	{
		noStroke();
		fill(255,0,0);
		rect(myX,myY,50,60,95);
		fill(255,255,255); 

		if(numDots == 1)
		{
			ellipse(myX + a,myY + a,10,10); //ONE DICE
		}
		else if(numDots == 2)
		{
			ellipse(myX + b,myY + b,10,10); //TWO DIE
			ellipse(myX + c,myY + c,10,10);
		}
		else if(numDots == 3)
		{
			ellipse(myX + b,myY + b,10,10); //THREE
			ellipse(myX + a,myY + a,10,10);
			ellipse(myX + c,myY + c,10,10);
		}
		else if(numDots == 4)
		{
			ellipse(myX + b,myY + b,10,10); //FOUR
			ellipse(myX + b,myY + c,10,10);
			ellipse(myX + c,myY + b,10,10);
			ellipse(myX + c,myY + c,10,10);
		}
		else if(numDots == 5)
		{
			ellipse(myX + b,myY + b,8,8); //FIVE
			ellipse(myX + b,myY + c,8,8);
			ellipse(myX + c,myY + b,8,8);
			ellipse(myX + c,myY + c,8,8);
			ellipse(myX + a,myY + a,8,8);
		}
		else
		{
			ellipse(myX + b,myY + b,8,8); //SIX
			ellipse(myX + b,myY + a,8,8);
			ellipse(myX + b,myY + c,8,8);
			ellipse(myX + c,myY + b,8,8);
			ellipse(myX + c,myY + a,8,8);
			ellipse(myX + c,myY + c,8,8);
		}
	}
}
