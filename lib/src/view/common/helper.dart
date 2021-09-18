class Helper{
  static String checkUrl(String url) {
    print("website URL: ${url}");
    if (url.contains("http://") || url.contains("https://")) {
      return url;
    } else {
      return "https://$url";
    }
  }
}