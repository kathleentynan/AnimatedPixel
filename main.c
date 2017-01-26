/*
*
* Animated Pixel inspired by the
* "Let's Party" bitmoji
*
* @author Kathleen Tynan
*
*/

#define REG_DISPCTL *(unsigned short *)0x4000000

#define MODE3 3
#define BG2_ENABLE (1<<10)

//colors
#define COLOR(r, g, b) ((r) | (g)<<5 | (b)<<10)

//bitmoji
#define HAIR COLOR(19, 12, 0)
#define SKIN COLOR(29,24,20)
#define SHIRT COLOR(6,6,16)
#define WHITE COLOR(31,31,31)
#define BLACK 0

//party colors
#define RED COLOR(31,0,0)
#define GREEN COLOR(0,31,0)
#define BLUE COLOR(0,0,31)
#define MAGENTA COLOR(31, 0, 31)
#define CYAN COLOR(0,31,31)
#define YELLOW COLOR(31,31,0)

#define OFFSET(r, c, rowlen)  ((r)*(rowlen) + (c))

//variables
unsigned short *videoBuffer = (unsigned short *)0x6000000;
int width = 240;
int height = 160;

#define BUTTONS *(volatile unsigned int *)0x4000130


// Prototype
void setPixel(int row, int col, unsigned short color);
void drawRect(int row, int col, int height, int width, unsigned short color);
void drawLine(int row, int col, int length, unsigned short color);
void drawDiagonalLineLeft(int, int, int, int, unsigned short);
void drawDiagonalLineRight(int, int, int, int, unsigned short);
void drawCurveR(int row, int col, int length, int thickness, unsigned short color);
void drawCurveL(int row, int col, int length, int thickness, unsigned short color);
void drawOval(int row, int col, int length, int width, unsigned short color);
void drawEyes(int row, int col, int size, int width, unsigned short color);
void drawPupils(int row, int col, int size, int width, unsigned short color);
void drawLetsParty(unsigned short);
void drawArms1();
void drawArms2();
void drawFrame1();
void drawFrame2();
void drawFrame3();
void drawBitmoji();
void drawFace();
void drawHead();
void delay();

int main()
{
	REG_DISPCTL = MODE3 | BG2_ENABLE;

	while(1) // Game Loop
	{	
		drawLetsParty(RED);
			
		drawFrame1();
		drawFrame2();
		drawFrame3();

	}
	
}

void drawFrame1(){

	//overwrite arms in frame 3
	drawDiagonalLineRight(125, 40, 25, 10, BLACK);
	drawOval(115, 133, 8, 10, BLACK);
	drawRect(120, 129,2,3,BLACK);
	drawDiagonalLineLeft(125, 132, 25, 10, BLACK);
	drawOval(115, 41, 8, 10, BLACK);
	drawRect(120, 51,2,3,BLACK);

	//head and face
	drawHead();
	drawFace();


	delay();
	drawLetsParty(YELLOW);
	delay();
	drawLetsParty(GREEN);
	delay();
	drawLetsParty(BLUE);
	
}

void drawFrame2(){
	//mouth
	setPixel(119, 84, BLACK);
	setPixel(120, 85, BLACK);
	drawLine(121, 86,8,BLACK);
	setPixel(120, 94, BLACK);
	setPixel(119, 95, BLACK);

	//eyes
	drawEyes(98, 80, 6, 6, WHITE);
	drawPupils(99, 82, 2, 4, BLACK);

	drawArms1();

	drawLetsParty(CYAN);
	delay();
	drawLetsParty(MAGENTA);
	delay();
	drawLetsParty(RED);
	delay();
	drawLetsParty(YELLOW);
	
}

void drawFrame3(){

	//mouth
	setPixel(118, 83, BLACK);
	setPixel(119, 84, BLACK);
	setPixel(120, 85, BLACK);
	drawLine(121, 86,8,BLACK);
	setPixel(120, 94, BLACK);
	setPixel(119, 95, BLACK);
	setPixel(118, 96, BLACK);
	drawLine(118, 83, 13, BLACK);
	drawLine(119, 85, 9, WHITE);
	drawLine(120, 85, 9, BLACK);
	drawLine(121, 86, 7, BLACK);
	

	//eyes
	drawEyes(97, 80, 6, 7, WHITE);
	drawPupils(98, 82, 2, 5, BLACK);

	//arms
	drawArms2();

	drawLetsParty(GREEN);
	delay();
	drawLetsParty(BLUE);
	delay();
	drawLetsParty(CYAN);
	delay();
	drawLetsParty(MAGENTA);

}

/*
*
* method to draw arms from frame 2
*
*/
void drawArms1(){
	//draws frame 2 arms
	drawRect(145, 65, 5, 8, SKIN);
	drawDiagonalLineLeft(150, 65, 10, 8, BLACK);
	drawRect(145, 108, 5, 8, SKIN);
	drawDiagonalLineRight(150, 108, 10, 8, BLACK);

	//hands
	drawRect(145, 116, 5, 20, SKIN);
	drawOval(143, 135, 8, 8, SKIN);
	drawRect(141, 137, 3, 2, SKIN);
	drawRect(145, 48, 5, 20, SKIN);
	drawOval(143, 38, 8, 8, SKIN);
	drawRect(141, 41, 3, 2, SKIN);
}

/*
*
* method to draw arms for frame 3 
*
*/
void drawArms2(){
	//overwrites frame 2 arms
	drawRect(145, 116, 5, 20, BLACK);
	drawOval(143, 135, 8, 8, BLACK);
	drawRect(141, 137, 3, 2, BLACK);
	drawRect(145, 48, 5, 20, BLACK);
	drawOval(143, 38, 8, 8, BLACK);
	drawRect(141, 41, 3, 2, BLACK);

	//draws fram 3 arms and hands
	drawDiagonalLineRight(125, 40, 25, 10, SKIN);
	drawOval(115, 133, 8, 10, SKIN);
	drawRect(120, 129,2,3,SKIN);
	drawDiagonalLineLeft(125, 132, 25, 10, SKIN);
	drawOval(115, 41, 8, 10, SKIN);
	drawRect(120, 51,2,3,SKIN);
	
}

/*
*
* method to draw the "LET'S PARTY" text
*
*/
void drawLetsParty(unsigned short color){
	//L
	drawRect(20, 20, 20, 3, color);
	drawRect(37, 23, 3, 10, color);

	//E
	drawRect(20, 38, 20, 3, color);
	drawRect(37, 41, 3, 10, color);
	drawRect(28, 41, 3, 10, color);
	drawRect(20, 41, 3, 10, color);

	//T
	drawRect(20, 56, 3, 19, color);
	drawRect(23, 64, 17, 3, color);

	//'
	drawRect(20, 80, 5, 3, color);

	//S
	drawRect(20, 88, 3, 16, color);
	drawRect(23, 88, 8, 3, color);
	drawRect(28, 91, 3, 10, color);
	drawRect(28, 101, 10, 3, color);
	drawRect(37, 88, 3, 16, color);


	//P
	drawRect(20, 121, 20, 3, color);
	drawRect(20, 124, 3, 7, color);
	drawRect(20, 131, 11, 3, color);
	drawRect(28, 124, 3, 7, color);

	//A
	drawRect(20, 142, 3, 10, color);
	drawRect(23, 139, 17, 3, color);
	drawRect(23, 152, 17, 3, color);
	drawRect(28, 142, 3, 10, color);

	//R
	drawRect(20, 160, 20, 3, color);
	drawRect(20, 163, 3, 7, color);
	drawRect(20, 170, 11, 3, color);
	drawRect(28, 163, 3, 7, color);
	drawCurveR(28, 161, 8, 3, color);

	//T
	drawRect(20, 178, 3, 19, color);
	drawRect(23, 186, 17, 3, color);

	//Y
	drawCurveR(20, 202, 5, 3, color);
	drawRect(28, 210, 12, 3, color);
	drawCurveL(20, 219, 5, 3, color);

	//!
	drawRect(20, 224, 14, 3, color);
	drawRect(37, 224, 3, 3, color);

}

/*
*
* method to draw the head and body of the character
*
*/
void drawHead(){
	drawRect(128, 85, 7, 10, SKIN);
	int count = 0;
	for (int i = 0; i < 22; i+=2){
		drawLine(127-count, 84-count, 12+i, SKIN);
		count++;
	}
	drawRect(97, 73, 20, 34, SKIN);
	count = 0;
	for (int i = 0; i < 30; i+=2){
		drawLine(96-count, 73+count, 34-i, SKIN);
		count++;
	}

	//shirt
	drawRect(145, 73, 25, 35, SHIRT);
	count = 0;
	for (int i = 0; i < 22; i+=2){
		drawLine(145-count, 66+count, 48-i, SHIRT);
		count++;
	}
	drawRect(145, 65, 5, 8, SKIN);
	drawDiagonalLineLeft(150, 65, 10, 8, SKIN);
	drawRect(145, 108, 5, 8, SKIN);
	drawDiagonalLineRight(150, 108, 10, 8, SKIN);
}


/*
*
* method to draw the head and body of the character
*
*/
void drawFace(){
	//nose
	drawCurveR(107, 91, 3, 1, BLACK);
	drawLine(112,90,2,BLACK);

	//mouth
	setPixel(120, 85, BLACK);
	drawLine(121, 86,8,BLACK);
	setPixel(120, 94, BLACK);

	//eyes
	drawEyes(99, 80, 6, 5, WHITE);
	drawPupils(100, 82, 2, 3, BLACK);

	//hair
	drawCurveR(81, 90, 12, 18, HAIR);
	drawRect(97, 106, 40, 18, HAIR);
	drawCurveL(80,90, 12, 18, HAIR);
	drawRect(97, 57, 40, 18, HAIR);
	int count=0;
	for (int i = 0; i < 18; i+=2){
		drawLine(80-count, 73+count, 36-i, HAIR);
		count++;
	}
	count = 0;
	for (int i = 0; i < 14; i+=2){
		drawLine(136+count, 106+count, 18-i, HAIR);
		count++;
	}
	count = 0;
	for (int i = 0; i < 14; i+=2){
		drawLine(136+count, 57+count, 18-i, HAIR);
		count++;
	}
}


/*
*
* method to draw the eyes of the character
*
*/
void drawEyes(int row, int col, int size, int width, unsigned short color) {
	drawOval(row, col, size, width, color);
	drawOval(row, col+15, size, width, color);
}

/*
*
* method to draw the pupils of the character
*
*/
void drawPupils(int row, int col, int size, int width, unsigned short color) {
	drawOval(row, col, size, width, color);
	drawOval(row, col+15, size, width, color);
}

/*
*
* method to draw a customizable rectangle
*
*/
void drawRect(int row, int col, int height, int width, unsigned short color){
	for(int r=0; r<height; r++){
		for(int c=0; c<width; c++){
			setPixel(row+r, col+c, color);
		}
	}
}

/*
*
* method to draw a customizable right curve-ish 
*
*/
void drawCurveR(int row, int col, int length, int thickness, unsigned short color){
	int r = row;
	int c = col;
	for (int t = 0; t < thickness; t++){
		row = r;
		col = c;
		for (int i = 0; i < length; i++){
			if (i%2==0){
				if (i==0)
				{
					setPixel(row+i, col+i+t, color);
					//row++;
				}
				setPixel(row+i, col+i+t, color);
				row++;
				setPixel(row+i, col+i+t, color);
			}else{
				setPixel(row+i, col+i+t, color);
				col++;
				setPixel(row+i, col+i+t, color);
			}
		}
	}
}

/*
*
* method to draw a customizable left curve-ish
*
*/
void drawCurveL(int row, int col, int length, int thickness, unsigned short color){
	int r = row;
	int c = col;
	for (int t = 0; t < thickness; t++){
		row = r;
		col = c;
		for (int i = 0; i < length; i++){
			if (i%2==0){
				if (i==0)
				{
					setPixel(row+i, col-i+t, color);
					row++;
				}
				setPixel(row+i, col-i-t, color);
				row++;
				setPixel(row+i, col-i-t, color);
			}else{
				setPixel(row+i, col-i-t, color);
				col--;
				setPixel(row+i, col-i-t, color);
			}
		}
	}
}

/*
*
* method to draw a customizable line
*
*/
void drawLine(int row, int col, int length, unsigned short color){
	for (int i = 0; i < length; i++){
		setPixel(row, col+i, color);
	}	
}

/*
*
* method to draw a customizable diagonal left line
*
*/
void drawDiagonalLineLeft(int row, int col, int length, int thickness, unsigned short color){
		for (int t = 0; t < thickness; t++){
			for(int i = 0; i < length; i++){
				setPixel(row+i, col-i+t, color);
			}
		}
}


/*
*
* method to draw a customizable diagonal right line
*
*/
void drawDiagonalLineRight(int row, int col, int length, int thickness, unsigned short color){
	for(int t = 0; t < thickness; t++){
		for (int i = 0; i < length; i++){
			setPixel(row+i, col+i+t, color);
		}
	}
}


/*
*
* method to draw a customizable oval
*
*/
void drawOval(int row, int col, int length, int width, unsigned short color) {
	drawLine(row, col, length, color);
	row++;
	length += 4;
	int i;
	for (i = 0; i < width; i++) {
		drawLine(row, col-2, length, color);
		row++;
	}
	length -= 4;
	drawLine(row, col, length, color);
}

/*
*
* method to assign a color to a given pixel of the gamboy
*
*/
void setPixel(int row, int col, unsigned short color){
	videoBuffer[OFFSET(row, col, 240)] = color;
}

/*
*
* method to delay the drawings
*
*/
void delay(){
	volatile int b = 0;
	for(int i=0; i<70000; i++)
	{
		b++;
	}
}

