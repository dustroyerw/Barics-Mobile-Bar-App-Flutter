import 'package:flutter/material.dart';
import 'package:flutter_application_summative/main.dart';
import 'package:flutter_application_summative/emailask.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Color.fromARGB(255, 43, 39, 39),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              'assets/cocktel.jpg',
              width: 40.0,
              height: 40.0,
            ),
          ),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontFamily: 'Schuyler',
                    color: Colors.orange,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Signature Cocktails',
                          style: TextStyle(
                            fontFamily: 'Schuyler',
                            color: Colors.orange,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CircularContainerWidget(
                        imagePath: 'assets/dalgona.jpg',
                        title: 'Dalgona Coffee',
                        description:
                            'Dalgona coffee, also known as hand beaten coffee, is a beverage originating from Macau made by whipping equal parts instant coffee powder, sugar, and hot water until it becomes creamy and then adding it to cold or hot milk. Occasionally, it is topped with coffee powder, cocoa, crumbled biscuits, or honey.',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/kermit.jpg',
                        title: 'Kermit Tea',
                        description:
                            'The Kermit drink is made from vodka, Pisang Ambon, sour mix and lemon-lime soda, and served in a highball glass.    ',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/apol.jpg',
                        title: 'Apple Cocktail',
                        description:
                            'Mix up a refreshing English garden cocktail, prosecco punch or spiced apple fizz with our top apple cocktail recipes, perfect for every season',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/icec.jpg',
                        title: 'Dalgona Coffee',
                        description:
                            'Dalgona coffee, also known as hand beaten coffee, is a beverage originating from Macau made by whipping equal parts instant coffee powder, sugar, and hot water until it becomes creamy and then adding it to cold or hot milk. Occasionally, it is topped with coffee powder, cocoa, crumbled biscuits, or honey',
                        width: 200.0,
                        height: 200.0,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Coffee & Tea',
                          style: TextStyle(
                            fontFamily: 'Schuyler',
                            color: Colors.orange,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CircularContainerWidget(
                        imagePath: 'assets/icec.jpg',
                        title: 'Iced Coffee',
                        description:
                            'Iced coffee is a coffee beverage served cold. It may be prepared either by brewing coffee normally and then serving it over ice or in cold milk or by brewing the coffee cold. In hot brewing, sweeteners and flavoring may be added before cooling, as they dissolve faster ',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/dalgona.jpg',
                        title: 'Dalgona Coffee',
                        description:
                            'Dalgona coffee, also known as hand beaten coffee, is a beverage originating from Macau made by whipping equal parts instant coffee powder, sugar, and hot water until it becomes creamy and then adding it to cold or hot milk. Occasionally, it is topped with coffee powder, cocoa, crumbled biscuits, or honey',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/fave.jpg',
                        title: 'Rainbow Blend',
                        description:
                            'Fresh and fruity with influences from five different types of tea and a plethora of fruits and flowers.',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/frape.jpg',
                        title: 'Hazelnut Iced Coffee',
                        description:
                            'This vegan iced coffee explodes with rich chocolate-hazelnut taste, but it won t weigh you down like a barista-made Frappuccino',
                        width: 200.0,
                        height: 200.0,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fruit Juices',
                          style: TextStyle(
                            fontFamily: 'Schuyler',
                            color: Colors.orange,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CircularContainerWidget(
                        imagePath: 'assets/kermit.jpg',
                        title: 'Kermit Tea',
                        description:
                            'The Kermit drink is made from vodka, Pisang Ambon, sour mix and lemon-lime soda, and served in a highball glass.',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/gapol.jpg',
                        title: 'Green Apple Juice',
                        description:
                            'Refreshing and Revitalizing Green Apple Juice provides vitamins and nutrients to body in no time. This juice helps to support a healthy immune system due to all of the extra nutrients.',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/mango.jpg',
                        title: 'Mango Juice',
                        description:
                            ' Mango Juice with a fresh, tropical taste is perfect on a hot afternoon. It s quick, easy and, more importantly, super delicious.',
                        width: 200.0,
                        height: 200.0,
                      ),
                      SizedBox(height: 20),
                      CircularContainerWidget(
                        imagePath: 'assets/cranb.jpg',
                        title: 'Cranberry Juice',
                        description:
                            'Cranberry juice is the liquid juice of the cranberry – a fruit recognized for its bright red color, tart taste, and versatility for product manufacturing. Cranberries are high in chemicals called polyphenols that may support heart health.',
                        width: 200.0,
                        height: 200.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .8,
            child: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Text('Menu'),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                  ),
                  ListTile(
                    title: Text('Splash Page'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Login Page'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircularContainerWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double width;
  final double height;

  CircularContainerWidget({
    required this.imagePath,
    required this.title,
    required this.description,
    this.width = 200.0,
    this.height = 200.0,
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
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                imagePath,
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
        title: Text(
          'Product Details',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        color: const Color.fromARGB(
          255,
          94,
          88,
          88,
        ),
        padding: EdgeInsets.all(20.0), // Add padding to create margins
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                description,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
