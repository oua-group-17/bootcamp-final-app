
//Packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oua_final_app/favorite_screen.dart';
import 'package:oua_final_app/messages_screen.dart';
import 'package:oua_final_app/settings_screen.dart';

//Main class codes.
void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});


//Our themes. İt can be changed.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seyyapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//-->Class
//HomePage class in here. We used this class in our list.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;  //Our first page will be home class automaticly.

//List for bottom navigator.
  static const List<Widget> _pages = <Widget>[
    HomePageContent(), 
    FavoritesScreen(),
    MessagesScreen(),
    SettingsScreen(),
  ];

//İf there will be touch on bottom navigator this fonction will run.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Seyyapp',
          style: GoogleFonts.poppins(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ],
      ),

      //Bottom navigator area. We have four buttons. Reproducible...
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 2, 0, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}


class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter name or category',
              hintStyle: GoogleFonts.poppins(),
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              //Categories
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryButton(
                      label: 'Top 30 places',
                      icon: Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 8),
                    CategoryButton(
                      label: 'Nature',
                      icon: Icons.park,
                      color: Colors.green,
                    ),
                    SizedBox(width: 8),
                    CategoryButton(
                      label: 'Culture',
                      icon: Icons.book,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),

            ],
          ),

          const SizedBox(height: 16),

          Text(
            'Popular',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          //There is place cards in here. Reproducible...
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                PlaceCard(
                  imageAsset: 'assets/images/1.jpg',
                  name: 'Aizonai Antik Kenti',
                  rating: 4.9,
                ),
                PlaceCard(
                  imageAsset: 'assets/images/2.jpg',
                  name: 'Ayasofya Camii',
                  rating: 5.0,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const CategoryButton({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Action on button press.
      },
      icon: Icon(icon, color: Colors.white),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final double rating;

  const PlaceCard({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                imageAsset,
                width: 250,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 8.0,
              left: 8.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20.0),
                      const SizedBox(width: 4.0),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 8.0,
              right: 8.0,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
