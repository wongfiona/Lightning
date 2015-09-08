PImage photo;

int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;

int value = 0;

void setup()
{
	size (500,255);
  	photo = loadImage ("https://lh4.googleusercontent.com/-d9bT_5De1LA/U4zBQPPQ83I/AAAAAAAACTg/9LJYMo1_vcw/tumblr_lzlk7xFYHz1qbs05mo1_500.gif");
  	strokeWeight(5);

}

void draw()
{
	image (photo, 0, 0);
	int colorY;
	colorY = (int)(Math.random()*103)+153;
	stroke(255, colorY, 0);
	
	while(endY < 250) {
		endY = startY + (int)(Math.random() * 9);
		endX = startX + (int)(Math.random() * 18) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	
}

void mouseMoved()
{
	startX = (int)(Math.random()*500);
	startY = 0;
	endX = 250;
	endY = 0;

	value = value +5;
	if (value > 500) {
		value = 0;
	}

}



	
