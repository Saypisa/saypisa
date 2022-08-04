import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class MyBuilder extends StatefulWidget {
  MyBuilder({Key? key}) : super(key: key);

  @override
  State<MyBuilder> createState() => _MyListBuilderState();
}

class _MyListBuilderState extends State<MyBuilder> {
  List pro = []; //awo vai kep API

  bool isLoading = true; // aow vai kuad va mun loading br

  void fetchPets() async {
    var url = Uri.https("fakestoreapi.com", "products");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = convert.jsonDecode(response.body);
      setState(() {
        pro = items;
        isLoading = false;
      });

      print(items);
    } else {
      print("Can not fetch");
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchPets();
    if (isLoading == true) {
      return Material(
        child: Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 224, 166, 4),
          ),
        ),
      );
    }

    return Material(
      child: ListView.builder(
        itemCount: pro.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 300,

            margin: EdgeInsets.only(bottom: 3),
            padding: EdgeInsets.all(17),
            color: Color.fromARGB(255, 171, 156, 156),

            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(0),
                image: DecorationImage(
                          image: NetworkImage(pro[index]['image']),
                        ),
              ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        pro[index]['title'],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(pro[index]['price'].toString()),
                      Text(pro[index]['rating'].toString()),
                      // Text(pro[index][1]),
                      // SizedBox(height: 2 ,),
                      // Text(pro[index][0]),
                    ],
                  ),

                  //child: Text(pro[index][0]),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    onPressed: () => null,
                    icon: Icon(Icons.shopping_cart),
                    color: Color.fromARGB(255, 89, 189, 8),
                  ),
                ),
              ],
            ),

            // color: Colors.red[100],
            // height: 70,
            // margin: EdgeInsets.only(bottom: 8),
            // padding: EdgeInsets.all(17),
            // child: Text(pets[index]),
          );
        },
      ),
    );
  }
}