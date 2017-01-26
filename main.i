# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 36 "main.c"
unsigned short *videoBuffer = (unsigned short *)0x6000000;
int width = 240;
int height = 160;





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
 *(unsigned short *)0x4000000 = 3 | (1<<10);

 while(1)
 {
  drawLetsParty(((31) | (0)<<5 | (0)<<10));

  drawFrame1();
  drawFrame2();
  drawFrame3();

 }

}

void drawFrame1(){


 drawDiagonalLineRight(125, 40, 25, 10, 0);
 drawOval(115, 133, 8, 10, 0);
 drawRect(120, 129,2,3,0);
 drawDiagonalLineLeft(125, 132, 25, 10, 0);
 drawOval(115, 41, 8, 10, 0);
 drawRect(120, 51,2,3,0);


 drawHead();
 drawFace();


 delay();
 drawLetsParty(((31) | (31)<<5 | (0)<<10));
 delay();
 drawLetsParty(((0) | (31)<<5 | (0)<<10));
 delay();
 drawLetsParty(((0) | (0)<<5 | (31)<<10));

}

void drawFrame2(){

 setPixel(119, 84, 0);
 setPixel(120, 85, 0);
 drawLine(121, 86,8,0);
 setPixel(120, 94, 0);
 setPixel(119, 95, 0);


 drawEyes(98, 80, 6, 6, ((31) | (31)<<5 | (31)<<10));
 drawPupils(99, 82, 2, 4, 0);

 drawArms1();

 drawLetsParty(((0) | (31)<<5 | (31)<<10));
 delay();
 drawLetsParty(((31) | (0)<<5 | (31)<<10));
 delay();
 drawLetsParty(((31) | (0)<<5 | (0)<<10));
 delay();
 drawLetsParty(((31) | (31)<<5 | (0)<<10));

}

void drawFrame3(){


 setPixel(118, 83, 0);
 setPixel(119, 84, 0);
 setPixel(120, 85, 0);
 drawLine(121, 86,8,0);
 setPixel(120, 94, 0);
 setPixel(119, 95, 0);
 setPixel(118, 96, 0);
 drawLine(118, 83, 13, 0);
 drawLine(119, 85, 9, ((31) | (31)<<5 | (31)<<10));
 drawLine(120, 85, 9, 0);
 drawLine(121, 86, 7, 0);



 drawEyes(97, 80, 6, 7, ((31) | (31)<<5 | (31)<<10));
 drawPupils(98, 82, 2, 5, 0);


 drawArms2();

 drawLetsParty(((0) | (31)<<5 | (0)<<10));
 delay();
 drawLetsParty(((0) | (0)<<5 | (31)<<10));
 delay();
 drawLetsParty(((0) | (31)<<5 | (31)<<10));
 delay();
 drawLetsParty(((31) | (0)<<5 | (31)<<10));

}






void drawArms1(){

 drawRect(145, 65, 5, 8, ((29) | (24)<<5 | (20)<<10));
 drawDiagonalLineLeft(150, 65, 10, 8, 0);
 drawRect(145, 108, 5, 8, ((29) | (24)<<5 | (20)<<10));
 drawDiagonalLineRight(150, 108, 10, 8, 0);


 drawRect(145, 116, 5, 20, ((29) | (24)<<5 | (20)<<10));
 drawOval(143, 135, 8, 8, ((29) | (24)<<5 | (20)<<10));
 drawRect(141, 137, 3, 2, ((29) | (24)<<5 | (20)<<10));
 drawRect(145, 48, 5, 20, ((29) | (24)<<5 | (20)<<10));
 drawOval(143, 38, 8, 8, ((29) | (24)<<5 | (20)<<10));
 drawRect(141, 41, 3, 2, ((29) | (24)<<5 | (20)<<10));
}






void drawArms2(){

 drawRect(145, 116, 5, 20, 0);
 drawOval(143, 135, 8, 8, 0);
 drawRect(141, 137, 3, 2, 0);
 drawRect(145, 48, 5, 20, 0);
 drawOval(143, 38, 8, 8, 0);
 drawRect(141, 41, 3, 2, 0);


 drawDiagonalLineRight(125, 40, 25, 10, ((29) | (24)<<5 | (20)<<10));
 drawOval(115, 133, 8, 10, ((29) | (24)<<5 | (20)<<10));
 drawRect(120, 129,2,3,((29) | (24)<<5 | (20)<<10));
 drawDiagonalLineLeft(125, 132, 25, 10, ((29) | (24)<<5 | (20)<<10));
 drawOval(115, 41, 8, 10, ((29) | (24)<<5 | (20)<<10));
 drawRect(120, 51,2,3,((29) | (24)<<5 | (20)<<10));

}






void drawLetsParty(unsigned short color){

 drawRect(20, 20, 20, 3, color);
 drawRect(37, 23, 3, 10, color);


 drawRect(20, 38, 20, 3, color);
 drawRect(37, 41, 3, 10, color);
 drawRect(28, 41, 3, 10, color);
 drawRect(20, 41, 3, 10, color);


 drawRect(20, 56, 3, 19, color);
 drawRect(23, 64, 17, 3, color);


 drawRect(20, 80, 5, 3, color);


 drawRect(20, 88, 3, 16, color);
 drawRect(23, 88, 8, 3, color);
 drawRect(28, 91, 3, 10, color);
 drawRect(28, 101, 10, 3, color);
 drawRect(37, 88, 3, 16, color);



 drawRect(20, 121, 20, 3, color);
 drawRect(20, 124, 3, 7, color);
 drawRect(20, 131, 11, 3, color);
 drawRect(28, 124, 3, 7, color);


 drawRect(20, 142, 3, 10, color);
 drawRect(23, 139, 17, 3, color);
 drawRect(23, 152, 17, 3, color);
 drawRect(28, 142, 3, 10, color);


 drawRect(20, 160, 20, 3, color);
 drawRect(20, 163, 3, 7, color);
 drawRect(20, 170, 11, 3, color);
 drawRect(28, 163, 3, 7, color);
 drawCurveR(28, 161, 8, 3, color);


 drawRect(20, 178, 3, 19, color);
 drawRect(23, 186, 17, 3, color);


 drawCurveR(20, 202, 5, 3, color);
 drawRect(28, 210, 12, 3, color);
 drawCurveL(20, 219, 5, 3, color);


 drawRect(20, 224, 14, 3, color);
 drawRect(37, 224, 3, 3, color);

}






void drawHead(){
 drawRect(128, 85, 7, 10, ((29) | (24)<<5 | (20)<<10));
 int count = 0;
 for (int i = 0; i < 22; i+=2){
  drawLine(127-count, 84-count, 12+i, ((29) | (24)<<5 | (20)<<10));
  count++;
 }
 drawRect(97, 73, 20, 34, ((29) | (24)<<5 | (20)<<10));
 count = 0;
 for (int i = 0; i < 30; i+=2){
  drawLine(96-count, 73+count, 34-i, ((29) | (24)<<5 | (20)<<10));
  count++;
 }


 drawRect(145, 73, 25, 35, ((6) | (6)<<5 | (16)<<10));
 count = 0;
 for (int i = 0; i < 22; i+=2){
  drawLine(145-count, 66+count, 48-i, ((6) | (6)<<5 | (16)<<10));
  count++;
 }
 drawRect(145, 65, 5, 8, ((29) | (24)<<5 | (20)<<10));
 drawDiagonalLineLeft(150, 65, 10, 8, ((29) | (24)<<5 | (20)<<10));
 drawRect(145, 108, 5, 8, ((29) | (24)<<5 | (20)<<10));
 drawDiagonalLineRight(150, 108, 10, 8, ((29) | (24)<<5 | (20)<<10));
}







void drawFace(){

 drawCurveR(107, 91, 3, 1, 0);
 drawLine(112,90,2,0);


 setPixel(120, 85, 0);
 drawLine(121, 86,8,0);
 setPixel(120, 94, 0);


 drawEyes(99, 80, 6, 5, ((31) | (31)<<5 | (31)<<10));
 drawPupils(100, 82, 2, 3, 0);


 drawCurveR(81, 90, 12, 18, ((19) | (12)<<5 | (0)<<10));
 drawRect(97, 106, 40, 18, ((19) | (12)<<5 | (0)<<10));
 drawCurveL(80,90, 12, 18, ((19) | (12)<<5 | (0)<<10));
 drawRect(97, 57, 40, 18, ((19) | (12)<<5 | (0)<<10));
 int count=0;
 for (int i = 0; i < 18; i+=2){
  drawLine(80-count, 73+count, 36-i, ((19) | (12)<<5 | (0)<<10));
  count++;
 }
 count = 0;
 for (int i = 0; i < 14; i+=2){
  drawLine(136+count, 106+count, 18-i, ((19) | (12)<<5 | (0)<<10));
  count++;
 }
 count = 0;
 for (int i = 0; i < 14; i+=2){
  drawLine(136+count, 57+count, 18-i, ((19) | (12)<<5 | (0)<<10));
  count++;
 }
}







void drawEyes(int row, int col, int size, int width, unsigned short color) {
 drawOval(row, col, size, width, color);
 drawOval(row, col+15, size, width, color);
}






void drawPupils(int row, int col, int size, int width, unsigned short color) {
 drawOval(row, col, size, width, color);
 drawOval(row, col+15, size, width, color);
}






void drawRect(int row, int col, int height, int width, unsigned short color){
 for(int r=0; r<height; r++){
  for(int c=0; c<width; c++){
   setPixel(row+r, col+c, color);
  }
 }
}






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






void drawLine(int row, int col, int length, unsigned short color){
 for (int i = 0; i < length; i++){
  setPixel(row, col+i, color);
 }
}






void drawDiagonalLineLeft(int row, int col, int length, int thickness, unsigned short color){
  for (int t = 0; t < thickness; t++){
   for(int i = 0; i < length; i++){
    setPixel(row+i, col-i+t, color);
   }
  }
}







void drawDiagonalLineRight(int row, int col, int length, int thickness, unsigned short color){
 for(int t = 0; t < thickness; t++){
  for (int i = 0; i < length; i++){
   setPixel(row+i, col+i+t, color);
  }
 }
}







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






void setPixel(int row, int col, unsigned short color){
 videoBuffer[((row)*(240) + (col))] = color;
}






void delay(){
 volatile int b = 0;
 for(int i=0; i<70000; i++)
 {
  b++;
 }
}
