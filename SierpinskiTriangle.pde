public void setup()
{
	size(600,600);
}
public void draw()
{
	sierpinski(0,600,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 30)
	{
		fill(#20C6C2);
		triangle(x, y, x+(len/2), y-len, x+len, y);

	}
	else
	{
		fill(0);
		sierpinski(x, y, len/2);
		sierpinski(x+(len/2), y, len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}

}