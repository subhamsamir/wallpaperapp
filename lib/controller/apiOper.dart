import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiOperation {
  static getTrendingWallpaper() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      "Authorization":
          "vXyl6SiR3Xj02lrd46OojGknD6TOU4PSzxm4lUwWlnCNK99WBjRcdwnO"
    }).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      List photos = jsonData['photos'];
      photos.forEach((element) {
        Map<String, dynamic> src = element["src"];
        print(src["portrait"]);
      });
    });
  }
}
