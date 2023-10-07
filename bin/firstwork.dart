import 'package:firstwork/firstwork.dart' as firstwork;
import 'package:dio/dio.dart';


void main(List<String> arguments) async {
  Dio client = Dio();
  dynamic response = await client.get('http://dummyjson.com/products');
  Map<String, dynamic> data = response.data;
  List<dynamic> products = data["products"];
  int count =0;
  for (var el in products) {
    if (el['brand'] =="Apple") {
      count++;
    }
  }
  print(count);
 
}
