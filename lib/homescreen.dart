import 'package:flutter/material.dart';
import 'package:monsoon_app/favourites.dart';
import 'package:monsoon_app/profile.dart';
import 'package:monsoon_app/search.dart';

class Home extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = (MediaQuery.of(context).size.width - 48) / 3;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 213, 213),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                _buildSearchContainer(context),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image2.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image2.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                  ],
                ),
                const SizedBox(height: 20),
                _buildImageContainer(context, "assets/images/image3.png", 370),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SearchScreen()),
                    );
                  },
                  child: Center(
                    child: Container(
                      width: 370,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Opacity(
                        opacity: 0.30,
                        child: Center(
                          child: Text(
                            'Advt. Banner here..!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.75,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image2.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                  ],
                ),
                const SizedBox(height: 30),
                _buildFourImagesContainer(context), // Placed here
               
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image2.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image2.png", containerWidth),
                    _buildImageContainer(context, "assets/images/image1.png", containerWidth),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context, String imagePath, double width, {Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 23, top: 17),
        child: Text(
          'Search here...',
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: 0.60,
          ),
        ),
      ),
    );
  }

  Widget _buildFourImagesContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildImageContainer(context, "assets/images/image4.png", 30),
          _buildImageContainer(context, "assets/images/image5.png", 30, onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          }),
          _buildImageContainer(context, "assets/images/image6.png", 30, onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Favourites()),
            );
          }),
          _buildImageContainer(context, "assets/images/image7.png", 30, onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }),
        ],
      ),
    );
  }
}