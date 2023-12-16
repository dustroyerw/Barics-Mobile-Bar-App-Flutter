import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderScreen(),
    );
  }
}

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<String> orders = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 184, 135, 135), // Set the background color to gray
      appBar: AppBar(
        leading: Image.asset(
          'assets/cocktel.jpg',
          width: 1000.0,
          height: 1000.0,
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Baric',
                style: TextStyle(
                  fontFamily: 'Schuyler',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              TextSpan(
                text: "'",
                style: TextStyle(
                  fontFamily: 'Schuyler',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: "s",
                style: TextStyle(
                  fontFamily: 'Schuyler',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              TextSpan(
                text: ' Mobile Bar',
                style: TextStyle(
                  fontFamily: 'Schuyler',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 32, 38),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Handle navigation or any action here
            },
          ),
        ],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  BerikImageWidget(
                    imagePath: 'assets/fave.jpg',
                    title: 'Dalgona',
                    description: 'Very good Fave Drink',
                  ),
                  Positioned(
                    top: 0.5,
                    left: 5.0,
                    child: DrinkOfTheDayText(),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    CircularContainerWidget(
                      imagePath: 'assets/dalgona.jpg',
                      title: 'Dalgona Coffee',
                      description: 'Very good Dalgona Coffee',
                    ),
                    CircularContainerWidget(
                      imagePath: 'assets/kermit.jpg',
                      title: 'Dalgona Coffee',
                      description: 'Very good Kermit Drink',
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircularContainerWidget(
                      imagePath: 'assets/matcha.jpg',
                      title: 'Dalgona Coffee',
                      description: 'Very good Matcha Latte',
                    ),
                    CircularContainerWidget(
                      imagePath: 'assets/icec.jpg',
                      title: 'Dalgona Coffee',
                      description: 'Very good Iced Coffee',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircularContainerWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  CircularContainerWidget({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              imagePath: imagePath,
              title: title,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
        child: ClipOval(
          child: Image.asset(
            imagePath,
            width: 300.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class BerikImageWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  BerikImageWidget({
    required this.title,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tapped on BerikImageWidget"); // Add this line
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              imagePath: imagePath,
              title: title,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
        child: ClipOval(
          child: Image.asset(
            imagePath,
            width: 400.0,
            height: 350.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class DrinkOfTheDayText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.0),
      child: Text(
        'Drink of the Day',
        style: TextStyle(
          color: Color.fromARGB(255, 243, 140, 43),
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  ProductDetailsPage({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        backgroundColor: Colors.black, // Set the background color to black
      ),
      body: Container(
        color: const Color.fromARGB(
          255,
          94,
          88,
          88,
        ), // Set the background color of the body to gray
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 200.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                  height:
                      100.0), // Add some space between image and title/description
              Text(
                title,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange, // Set the text color to orange
                ),
              ),
              SizedBox(
                  height: 40.0), // Add some space between title and description
              Text(
                description,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.orange, // Set the text color to orange
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
