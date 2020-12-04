Perceptron brain;
//Entrenador
Point[] poinst= new Point[100];

int trainingIndex = 0;
void setup(){
   size(800,800);
   brain= new Perceptron();
   //Puntos
   for(int i =0;  i< poinst.length;i++){
     poinst[i]= new Point();
   }
   float[] inputs= {-1,0.5};
   int guess= brain.guess(inputs);
   println(guess); 
}

void draw (){
  background(255);
  stroke(0);
  line(0,0,width, height); 
  for(Point pt: poinst){
    pt.show();
  }
  
  
  for(Point pt: poinst){
    float[] inputs = {pt.x, pt.y};
    int target = pt.label;
    //brain.train(inputs, pt.label);   
    int guess = brain.guess(inputs);
    if (guess == target){
      fill(0,255,0);
    }else{
      fill(255,0,0);
    }
      noStroke();
      ellipse(pt.x, pt.y, 16, 16);
    }
    Point training = poinst[trainingIndex];
    float[] inputs = {training.x, training.y};
    int target = training.label;
    brain.train(inputs, target ); 
    trainingIndex++;
    if(trainingIndex == poinst.length){
      trainingIndex = 0;
    }
  }
void mousePressed(){
 // for(Point pt: poinst){
    //float[] inputs = {pt.x, pt.y};
    //int target = pt.label;
    //brain.train(inputs, target );   
    
  //  }
}
