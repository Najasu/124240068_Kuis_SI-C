import 'package:flutter/material.dart';
import '../models/culinaryList.dart';

class DetailPage extends StatelessWidget {
  final Culinary kuliner;
  const DetailPage({super.key, required this.kuliner});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kuliner.name), backgroundColor: Colors.redAccent),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(kuliner.imageUrl, height: 250),
                ),
              ),
              SizedBox(height: 16),

              Text(
                kuliner.name,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                kuliner.category,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 4),
              Text(
                kuliner.origin,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),

              SizedBox(height: 8),
              Text('Tingkat kepedasan: ${kuliner.spicyLevel}'),

              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 8),

              Text(
                'Deskripsi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(kuliner.description),

              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 8),

              Text('Bahan utama: ${kuliner.mainIngredient}'),
              SizedBox(height: 8),
              Text('Rasa: ${kuliner.flavor}'),
              SizedBox(height: 8),
              Text('Makanan ini biasanya dimakan ketika: ${kuliner.servingTime}'),
              SizedBox(height: 8),
              Text('Untuk informasi lebih lanjut: ${kuliner.wikipediaUrl}'),

              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 8),

              ElevatedButton(onPressed: () {}, style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.redAccent) , child: Icon(Icons.favorite) )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   child: Text("Kembali ke Home"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
