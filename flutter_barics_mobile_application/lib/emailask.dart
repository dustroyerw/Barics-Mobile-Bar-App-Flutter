import 'package:flutter/material.dart';
import 'package:flutter_application_summative/main.dart';
import 'homepage.dart';

void main() => runApp(EmailAsk());

class EmailAsk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
        automaticallyImplyLeading: false, // Disable the default back button
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/blur.jpg'), // Change the path accordingly
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Your app logo or splash image can be added here
              Text(
                '',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              Text.rich(
                TextSpan(
                  text: 'Sign up to never miss new ',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontFamily: 'Schuyler',
                  ),
                  children: [
                    TextSpan(
                      text: 'delicious',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: ' flavors.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          color: const Color.fromARGB(255, 58, 55,
                              55), // Set the background color of the TextFormField to white
                          padding: EdgeInsets.all(
                              4.0), // Adjust the padding as needed
                          child: TextFormField(
                            style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255,
                                    255)), // Set text color to black
                            decoration: InputDecoration(
                              hintText: 'E-mail',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal:
                                      20.0), // Adjust the padding to move hint text to the right
                              hintStyle: TextStyle(
                                  color: const Color.fromARGB(
                                          255, 255, 254, 254)
                                      .withOpacity(
                                          1)), // Set hint color to black with opacity
                              border: InputBorder
                                  .none, // No border for TextFormField
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width:
                          10.0, // Adjust the spacing between the TextFormField and the button
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add logic to handle the sign-up process
                        // This could include validation and navigation to the next screen

                        // For now, let's navigate to the HomePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 131,
                              61) // Set the background color of the button
                          ),
                      child: Container(
                        padding: EdgeInsets.all(
                            20.0), // Adjust the padding as needed
                        child: Text(
                          'Proceed',
                          style: TextStyle(
                            color: Colors.white, // Set the text color to white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width:
                          10.0, // Adjust the spacing between the "Proceed" button and the orange element
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
