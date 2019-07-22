import 'package:http/http.dart' as http;

class NetworkManger{

  Future<String> loginInApplication() async{
    final responce = await http.get("https://jsonplaceholder.typicode.com/posts/");

}
}