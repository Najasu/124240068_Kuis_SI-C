import 'package:flutter/material.dart';
import 'detail.dart';
import 'login.dart';
import '../models/culinaryList.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Culinary List Page"), 
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 18),
              child: ElevatedButton(
                onPressed: () {
                 Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                },
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: Colors.red,
                //   foregroundColor: Colors.white,
                //   padding: EdgeInsets.zero,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                // ),
                child: Icon(Icons.logout, size: 25),
              ),
          ),
      ],
      backgroundColor: Colors.redAccent),
      body: ListView.builder(
        itemCount: culinaryList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(culinaryList[index].name),
            subtitle: Text(culinaryList[index].category),
            leading: Image.network(culinaryList[index].imageUrl),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(kuliner: culinaryList[index]),
                ),
              );
            },
          );
        },
      )
    );
  }
}
