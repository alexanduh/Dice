void setup()
{
	noLoop();
	textAlign(CENTER,CENTER);
	size(300, 300);
}
void draw()
{
	background(197);
	for(int y = 10; y <=180; y+= 60) {
		for(int x = 10; x <=180; x+=60 ) {
			Die d1 = new Die(x, y);
			d1.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, num;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;

	}
	void roll()
	{
		num = (int)(Math.random()*6+1);
	}
	void show()
	{
		roll();
		rect(myX, myY, 50, 50, 10);
		fill(0);		
		if(num == 1) {
			ellipse(myX+25, myY+25, 10, 10);
		}
		if(num == 2) {
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		}
		if(num == 3) {
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		}
		if(num == 4) {
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
			ellipse(myX+15, myY+35, 10, 10);
			ellipse(myX+35, myY+15, 10, 10);
		}
		if(num == 5) {
			ellipse(myX+25, myY+25, 10, 10);
		}
		if(num == 6) {
			ellipse(myX+25, myY+25, 10, 10);
		}
		text(num, myX, myY);
		fill(255);

	}
}
