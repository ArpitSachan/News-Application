

class Constants {
  static String TOP_HEADLINES_URL= "https://newsapi.org/v2/top-headlines?country=us&apiKey=8645e2654f8047f392baf4295138d032";


  static String headlinesfor(String keyword){
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=8645e2654f8047f392baf4295138d032";
  }
}