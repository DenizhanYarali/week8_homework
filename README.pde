# week8_homework

import  processing.video.*;
import controlP5.*;

ControlP5 cp5;

Movie my_video;

void setup () {
  size(640,410);
  background(0);
  my_video = new Movie (this,"underwater.mp4");
  my_video.play();
  
  cp5 = new ControlP5(this);
  
  cp5.addButton("Play")
    .setValue(0)
    .setPosition(0,height-30)
    .setSize(140,30);
  
cp5.addButton("Pause")
    .setValue(0)
    .setPosition(140,height-30)
    .setSize(140,30);

cp5.addButton("Stop")
    .setValue(0)
    .setPosition(280,height-30)
    .setSize(140,30);
    
  
}

void movieEvent(Movie m) {
  m.read();
}

void Play(){
  my_video.play();
} 

void Stop(){
  my_video.jump(0);
  my_video.stop();
} 

void Pause(){
  my_video.pause();
} 


void draw () {
  if(my_video.available()== true) {
    my_video.read(); 
    
  }
  image(my_video,0,0,width,height);
}
