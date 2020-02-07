color triColor = color(100, 100, 100);
color backColor = color(0, 0, 0);
public void setup()
{
	size(600, 600);
	background(backColor);
}
public void draw()
{
	background(backColor);
	fill(triColor);
	sierpinski(50, 550, 500, 2);
}
public void mouseDragged()
{
	triColor = color(mouseX, mouseY, mouseY + mouseY);
	backColor = color(mouseY, mouseX, mouseY - mouseX);
}
public void sierpinski(int x, int y, int len, int frac) 
{
	if(len <= 10){
		triangle(x, y, x+len/frac, y-len, x+len, y);
	}else{
		sierpinski(x, y, len/frac, frac);
		sierpinski(x+len/frac, y, len/frac, frac);
		sierpinski(x+len/(2*frac), y-len/frac, len/frac, frac);
	}
}