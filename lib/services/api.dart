import 'package:http/http.dart' as http;

Future getData() async {
  http.Response response =
      await http.get("http://www.omdbapi.com/?i=tt3896198&apikey=9be52380");
  return response.body;
}
