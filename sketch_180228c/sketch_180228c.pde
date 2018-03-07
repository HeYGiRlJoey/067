int buttonColor;
int buttonColor2;


void setup() {
  size(200, 200);
}

void draw() {
  fill(buttonColor);
  rect(20, 20, 20, 20);
  fill(buttonColor2);
  rect(50, 50, 20, 20);

  if (mouseX > 20 && mouseX < 40 &&
    mouseY > 20 && mouseY < 40) {
    buttonColor = color(255, 0, 0);
  } else {
    buttonColor = color(100);
  }

  if (mouseX > 50 && mouseX <70 &&
    mouseY > 50 && mouseY < 70) {//hover
    buttonColor2 = color(255, 0, 0);
    if (mousePressed) {//click
      buttonColor2 = color(random(255), random(255), random(255));
    }
  } else {
    buttonColor2 = color(100);
  }
}