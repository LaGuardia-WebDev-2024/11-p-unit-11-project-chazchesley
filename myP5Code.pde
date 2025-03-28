var xPositions = [100,300,200];
var yPositions = [200,230,330];
moneyX=[];
moneyY=[];
moneybagX=[];
moneybagY=[];

setup = function() {
  size(600, 400);

   for (var i = 10; i < 40; i++) {
     moneyX.push(random(-20,600));
     moneyY.push(random(0,400));
     moneybagX.push(random(-20,600));
     moneybagY.push(random(0,400));
    }
}

var newInd=10;
draw = function(){
  background(242, 29, 132,0);
  if (mousePressed){
xPositions.push(mouseX);
yPositions.push(mouseY);
  }
 
  drawMoney();
   textSize(30);
      for (var i = 0; i < moneyY.length; i++) {
        text("💸", moneyX[i], moneyY[i]);
        moneyY[i]++;
        if(moneyY[i]>400){
        moneyY[i]=-10;
        moneyX[i]=random(0,600);
        }
    }

 textSize(25);
   for (var i = 0; i < moneybagY.length; i++) {
        text("💰", moneybagX[i], moneybagY[i]);
        moneybagY[i]++;
        if(moneybagY[i]>400){
        moneybagY[i]=-10;
        moneybagX[i]=random(0,600);
        }
      }
  }
  
var drawMoney = function() {
    textSize(35);
    for (var i = 10; i < yPositions.length; i++) {
        text("💲", xPositions[i], yPositions[i]);
        yPositions[i]++;
    }
};