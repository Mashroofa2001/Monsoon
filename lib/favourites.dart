import 'package:flutter/material.dart';

import 'package:monsoon_app/homescreen.dart';
import 'package:monsoon_app/profile.dart';
import 'package:monsoon_app/search.dart';

class Favourites extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Favourites({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 210, 209),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 420,
              height: 57,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'My Favourites',
                      style: TextStyle(
                        color: Color(0xFF480460),
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 90,
            child: _buildItem('assets/images/image1.png'),
          ),
          Positioned(
            left: 300, // Adjusted left attribute
            top: 90, // Same top attribute
            child: _buildItem('assets/images/image1.png'),
          ),
          Positioned(
            left: 190,
            top: 220,
            child: _buildItem('assets/images/image2.png'),
          ),
          Positioned(
            left: 300,
            top: 220,
            child: _buildItem('assets/images/image2.png'),
          ),
          Positioned(
            left: 20,
            top: 345,
            child: _buildItem('assets/images/image2.png'),
          ),
          Positioned(
            left: 130,
            top: 345,
            child: _buildItem('assets/images/image2.png'),
          ),
          Positioned(
            left: 20,
            top: 470,
            child: _buildItem('assets/images/image1.png'),
          ),
          Positioned(
            left: 130,
            top: 470,
            child: _buildItem('assets/images/image1.png'),
          ),
          Positioned(
            left: 240,
            top: 470,
            child: _buildItem('assets/images/image1.png'),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          width: 370,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIcon('assets/images/image4.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              }),
              _buildIcon('assets/images/image5.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                );
              }),
              _buildIcon('assets/images/image6.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Favourites()),
                );
              }),
              _buildIcon('assets/images/image7.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(String imagePath, Null Function() param1) {
    return Image.asset(
      imagePath,
      width: 24,
      height: 24,
      // You can add more customization here if needed
    );
  }

  Widget _buildItem(String imagePath) {
    return Container(
      width: 105,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}