import org.jsoup.*;
import org.jsoup.nodes.*;

class NewsReader {
   String baseUrl;
   String selector;
   String font;
   
   String displayTitle;
   String displayLink;
   
   public NewsReader(String _baseUrl, String _selector, String _font) {
    this.baseUrl = _baseUrl;
    this.selector = _selector;
    this.font = _font;
   } 
   
   void load() throws Exception {
      Document doc = Jsoup.connect(baseUrl)
       .userAgent("Chrome")
       .timeout(10000)
       .get();
      Element el = doc.select(selector).first();
      String title = el.text();
      String elink = el.attr("href");
      println(" -- "+title);
      println(" -- "+elink);
      StringTokenizer st = new StringTokenizer(title,"　");
      displayTitle = "";
      while (st.hasMoreElements()) {
       displayTitle += st.nextElement() +"\n";
      } 
      displayLink = elink;
   }
  
}
