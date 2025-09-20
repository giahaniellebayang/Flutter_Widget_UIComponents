import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'GeeksForGeeks';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 550.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildImageCard('https://i.imgur.com/Hgphvcg.png', 'Batman'),
              _buildImageCard('https://i.imgur.com/VOrtCIL.jpeg', 'Iron Man'),
              _buildImageCard('https://i.imgur.com/OU40Lfb.jpeg', 'Ben 10'),
              _buildImageCard('https://i.imgur.com/Rj86Zwa.jpeg', 'Bahubali'),
              _buildImageCard('https://i.imgur.com/TldvGIf.jpeg', 'Doctor Strange'),
              _buildImageCard('https://i.imgur.com/v0Xb6Eq.jpeg', 'Thor'),
              _buildImageCard('https://i.imgur.com/2sLVYjR.jpeg', 'Hulk'),
              _buildImageCard('https://i.imgur.com/0FvynDh.jpeg', 'Black Panther'),
              _buildImageCard('https://i.imgur.com/QXruWtB.jpeg', 'Spider Man'),
              _buildImageCard('https://i.imgur.com/9NkLhVU.jpeg', 'Captain America'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageCard(String imageUrl, String label) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: 240.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                child: Image.network(
                  imageUrl,
                  width: 240.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}