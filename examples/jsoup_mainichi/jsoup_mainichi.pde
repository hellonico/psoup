NewsReader nr;
PFont font;
void setup() {
  size(displayWidth,displayHeight);
  orientation(LANDSCAPE); 
  background(50);
  try {
   // https://github.com/android/platform_frameworks_base/tree/master/data/fonts
   nr = new NewsReader("http://mainichi.jp/",
     "#nsA div.MainTitle a",
     "Serif"
     );
   font = createFont(nr.font, 30);
   nr.load();
   textFont( font, 40 );
   String[] fontList = PFont.list();
   println(fontList);
  } catch(Exception e) {
    println(e);
  }
   
}

void mousePressed() {
  try {
    background(50);
    nr.load();
  } catch(Exception e) {
    println(e);
  }
}
void mouseDragged() {
  link(nr.displayLink, "_new");
}

void draw() {
   textAlign(CENTER,CENTER);
   text(nr.baseUrl, width/2, height/4);
   text(nr.displayTitle,width/2,height/2);
}
