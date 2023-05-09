import 'package:binus_mart/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'BINUS',
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'MART',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        titleSpacing: 40,
        actions: <Widget>[
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Category',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Cart',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 40.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50.0,
            vertical: 25.0,
          ),
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFF0a8a2e),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            '30% OFF - Ramadhan Sale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text(
                            '*promotion is valid for regular-priced items, except for special collections.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'BUY NOW',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                textStyle: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          color: Color.fromARGB(255, 65, 64, 66),
          child: Center(
            child: Text(
              '@ 2023 BINUSMART',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
