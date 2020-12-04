//FUnción de activación
int sign(float n ){
  if(n>=0){
    return 1;
  }else{
    return -1;
  }
}
class Perceptron{ 
  float[] weights= new float[2]; 
  float lr=0.1;
  Perceptron(){
    //inicializar pesos de manera aleaoria
    for(int i =0; i < weights.length; i++){
      weights[i]= random(-1,1);
    }
  }
//Estimando una salida para las entradas
    int guess(float[] inputs){
      float sum=0;
      for(int i = 0; i< weights.length;i++){
        //suma de los productos por los pesos
        sum += inputs[i]*weights[i];
      }
      int output = sign(sum);
      return output;
    }
    void train(float[] inputs, int target){
       int guess= guess(inputs);
       int error= target-guess;       
       for( int i =0; i<weights.length;i++){
         weights[i] += error+inputs[i] * lr;
       }       
    }
}
