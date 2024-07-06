import 'package:http/http.dart'as http;
import 'package:http/http.dart';

class Apiservice
{

  Future<String?> apiCalling()
  async {
    Uri url =Uri.parse('https://dummyjson.com/recipes');
     Response response = await http.get(url);

     if(response.statusCode==200)
       {
         return response.body;
       }

     else
       {
         return null;
       }

  }






}