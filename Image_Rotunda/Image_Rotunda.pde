int num_students;

PImage[] images;

float spread = -300;
float default_height = 150;

float active_student = 0;
String status = "rotating";
int timer;
float growth_timer = 0;

float img_width = 0;
float img_height = 0;
float img_y_offset = spread;

int growth_frame_count = 50;

void setup() {
  size(850, 850);
  imageMode(CENTER);


  String[] filenames = listFileNames(sketchPath() + "/img/");
  num_students = filenames.length;
  images = new PImage[num_students];
  for (int i = 0; i < num_students; i++) {
    images[i] = loadImage("img/" + filenames[i]);
  }
}
void draw() {
  background(0);

  push();
  translate(width/2, height/2);
  rotate(-active_student * 2*PI/images.length);
  for (int i = 0; i < images.length; i++) {
    rotate(radians(i * 360.0/images.length));
    
    img_y_offset = spread;
    img_width = (images[i].width * default_height/images[i].height);
    img_height = default_height;
    if (status == "growing" && i == floor(active_student)) {
      if (images[i].width > images[i].height) {
        img_width = map(timer, 0, growth_frame_count, (images[i].width * default_height/images[i].height), width);
        img_height = img_width * images[i].height/images[i].width;
      } else {
        img_height = map(timer, 0, growth_frame_count, default_height, height);
        img_width = img_height * images[i].width/images[i].height;
      }
      img_y_offset = map(timer, 0, growth_frame_count, spread, 0);
    } else if(status == "shrinking" && i == floor(active_student)) {
      if (images[i].width > images[i].height) {
        img_width = map(timer, 0, growth_frame_count, width, (images[i].width * default_height/images[i].height));
        img_height = img_width * images[i].height/images[i].width;
      } else {
        img_height = map(timer, 0, growth_frame_count, height, default_height);
        img_width = img_height * images[i].width/images[i].height;
      }
      img_y_offset = map(timer, 0, growth_frame_count, 0, spread);
    } else if(status == "viewing" && i == floor(active_student)) {
      if (images[i].width > images[i].height) {
        img_width = width;
        img_height = img_width * images[i].height/images[i].width;
      } else {
        img_height = height;
        img_width = img_height * images[i].width/images[i].height;
      }
      img_y_offset = 0;
    }
    
    translate(0, -img_y_offset);
    rotate(-radians(i * 360.0/images.length));
    rotate(active_student * 2*PI/images.length);
    
    if(status== "rotating" || i == floor(active_student)) {
    image(images[i], 0, 0, img_width, img_height);
    }
    rotate(-active_student * 2*PI/images.length);
    rotate(radians(i * 360.0/images.length));
    translate(0, img_y_offset);
    rotate(-radians(i * 360.0/images.length));
  }
  pop();
  
  
  
  if (status == "rotating") {
    active_student += 0.003;
    if (active_student - floor(active_student) <= 0.003) {
      status = "growing";
    }
    if(active_student > num_students) active_student = active_student - num_students;
  } else if (status == "growing") {
    timer++;
    if (timer == growth_frame_count) {
      timer = 0;
      status = "viewing";
    }
  } else if (status == "shrinking") {
    timer++;
    if (timer == growth_frame_count) {
      timer = 0;
      status = "rotating";
    }
  } else {
    timer++;
    if (timer > 150) {
      timer = 0;
      status = "shrinking";
    }
  }
}

String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    return null;
  }
}
