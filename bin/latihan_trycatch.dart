import 'dart:convert';

import 'package:http/http.dart' as http;
void main() async {
  // fungsi tanpa pengembalian (future async await)
  // Future<void> tarikdata() async {
  //   try {
  //     var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  //     );

  //     var data = jsonDecode(response.body);

  //     print(data[3]['title']);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // await tarikdata();

  // Future<void> ambildata() async {
  //   try {
  //     var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //     );

  //     var data = jsonDecode(response.body);

  //     print('nama saya');
  //     print(data[1]['name']);
  //     print('email saya');
  //     print(data[1]['email']);
  //     print('kota saya');
  //     print(data[1]['city']);

  //     print('titik lokasi saya');
  //     print(data[1]['lat']);
  //   } catch (e) {
  //     print(e);
  //   }
  //   }

  //   await ambildata();

  //fungsi pengembalian nilai (future async await)

  // Future<List<dynamic>> tarikdata() async {
  //   try {
  //     var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //     );
      
  //     var data = jsonDecode(response.body);
  //     return data;
  //   } catch (e) {
  //     print(e);
  //     return [];
  //   }
  // } 

  // var hasil = await tarikdata();
  
  // for
  // for (var i = 0; i < hasil['products'].length; i++) {
  //   print('---------------------------');
  //   print('${hasil[i]['name']}      ${hasil[1]['username']}      ${hasil[1]['email']}',
  //   );
  // }

  // for in
  // for (var element in hasil) {
  //   print('---------------------------');
  //   print('${element['name']}      ${element['username']}      ${element['email']}',
  //   );
  // }

  //foreach
  // hasil.forEach((element) {
  //   print('---------------------------');
  //   print('${element['name']}      ${element['username']}      ${element['email']}',
  //   );
  // });

  //poin
  Future<Map<dynamic, dynamic>> tarikdata() async {
    try {
      var response = await http.get(Uri.parse('https://dummyjson.com/products'),
      );

      var data = jsonDecode(response.body);
      return data;
    } catch(e) {
      print(e);
      return [];
    }
    }
    
    var hasil = await tarikdata();
    print(hasil['products'].length);

    for (var i = 0; i < hasil['products'].length; i++) {
      print('---------------------------');
      print('${element['name']}      ${element['username']}      ${element['email']}',
      );
    }
  }
