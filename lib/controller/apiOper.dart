import 'package:http/http.dart' as http;

class ApiOperation {
  getTrendingWallpaper() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      "Authorization":
          "vXyl6SiR3Xj02lrd46OojGknD6TOU4PSzxm4lUwWlnCNK99WBjRcdwnO"
    }).then((value) {
      print(value.body);
    });
  }
}
