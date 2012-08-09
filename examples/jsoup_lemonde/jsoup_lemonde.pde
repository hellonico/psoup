import org.jsoup.*;
import org.jsoup.nodes.*;

Document doc;
void setup() {
  size(500,500);
  background(0);
  try {
   // get the top title of lemonde
   doc = Jsoup.connect("http://mobile.lemonde.fr")
   .userAgent("Android")
   .timeout(5000)
   .get();
   String title = doc.select("#une-edito .titre-une h1").text();
   StringTokenizer st = new StringTokenizer(title," ");
   String displayTitle = "";
   while (st.hasMoreElements()) {
     displayTitle += st.nextElement() +"\n";
   }
   
   textAlign(CENTER,CENTER);
   textSize(30);
   text(displayTitle,width/2,height/2);
   
   //println(doc.toString());
  } catch(Exception e) {
    println(e);
  }
   
}

void draw() {
  
}
