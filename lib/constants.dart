

class Constants {
  static String TOP_HEADLINES_URL= "https://newsapi.org/v2/top-headlines?country=us&apiKey=YOUR_API_KEY";


  static String headlinesfor(String keyword){
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=YOUR_API_KEY";
  }
}
