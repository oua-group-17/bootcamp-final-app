import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favoriler',
      color: Colors.red,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FavoritesPage(),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  final List<City> cities = [
    City(
      name: 'Los Angeles',
      description:
          'Los Angeles, genellikle LA olarak bilinir, geniş bir Güney Kaliforniya şehri ve ülkenin film ve televizyon endüstrisinin merkezidir. İkonik yerleri arasında Hollywood Sign ve Hollywood Walk of Fame bulunmaktadır. Şehir, ayrıca güzel plajları, kültürel cazibe merkezleri ve canlı gece hayatıyla da tanınır.',
      price: '\$500',
      imageUrl: 'assets/images/LA.jpg',
      placesToVisit: [
        {
          'name': 'Hollywood',
          'description': 'Hollywood Sign ve Walk of Fame ile ünlüdür.'
        },
        {
          'name': 'Santa Monica Pier',
          'description': 'Bir lunapark ve akvaryum bulunan popüler bir nokta.'
        },
        {
          'name': 'Griffith Observatory',
          'description': 'Şehir ve yıldızlar hakkında harika manzaralar sunar.'
        }
      ],
      famousFoods: [
        {'name': 'In-N-Out Burger', 'image': 'assets/images/burger.jpg'},
        {'name': 'Tacos', 'image': 'assets/images/tacos.jpg'},
        {'name': 'Korean BBQ', 'image': 'assets/images/korean.jpg'}
      ],
    ),
    // Diğer şehir tanımları aynı şekilde devam ediyor...
    City(
      name: 'Madrid',
      description:
          'Madrid, İspanya\'nın başkenti olup canlı kültürü, zengin tarihi ve muazzam mimarisi ile bilinir. Öne çıkan yerler arasında Kraliyet Sarayı, Prado Müzesi ve Puerta del Sol ve Plaza Mayor gibi hareketli meydanlar bulunmaktadır. Madrid ayrıca canlı tapas barları ve flamenko gösterileri ile ünlüdür.',
      price: '\$500',
      imageUrl: 'assets/images/madrid.jpg',
      placesToVisit: [
        {
          'name': 'Plaza Mayor',
          'description': 'Madrid\'in merkezindeki büyük bir meydan.'
        },
        {
          'name': 'Royal Palace',
          'description': 'İspanyol kraliyet ailesinin resmi ikametgahı.'
        },
        {
          'name': 'Retiro Park',
          'description': 'Bahçeleri ve göleti ile büyük ve popüler bir park.'
        }
      ],
      famousFoods: [
        {'name': 'Tapas', 'image': 'assets/images/tapas.jpg'},
        {'name': 'Paella', 'image': 'assets/images/paella.jpg'},
        {'name': 'Churros', 'image': 'assets/images/churros.jpg'}
      ],
    ),
    City(
      name: 'Dublin',
      description:
          'Dublin, İrlanda\'nın başkenti olup edebi tarihi, canlı kültürü ve tarihi mekanlarıyla ünlüdür. Tanınmış yerler arasında Trinity College, Dublin Castle ve Guinness Storehouse bulunmaktadır. Şehir ayrıca canlı pubları ve zengin edebi mirası ile tanınır.',
      price: '\$500',
      imageUrl: 'assets/images/dublin.jpg',
      placesToVisit: [
        {
          'name': 'Guinness Storehouse',
          'description':
              'Gravity Bar\'dan harika bir manzara sunan ikonik bir bira fabrikası.'
        },
        {
          'name': 'Temple Bar',
          'description':
              'Gece hayatı ve kültürel etkinliklerle bilinen hareketli bir bölge.'
        },
        {
          'name': 'Trinity College',
          'description':
              'Ünlü Kells Kitabı ve tarihi kütüphaneye ev sahipliği yapar.'
        }
      ],
      famousFoods: [
        {'name': 'Irish Stew', 'image': 'assets/images/stew.jpg'},
        {'name': 'Boxty', 'image': 'assets/images/boxty.jpg'},
        {'name': 'Soda Bread', 'image': 'assets/images/bread.jpg'}
      ],
    ),
    City(
      name: 'Lima',
      description:
          'Lima, Peru\'nun başkenti olup zengin tarihi ve canlı kültürüyle tanınır. Çeşitli mutfak seçenekleri, Plaza Mayor gibi tarihi mekanlar ve güzel kıyı manzaralarıyla dinamik bir şehirdir. Ayrıca sömürge mimarisi ve hareketli pazarları ile bilinir.',
      price: '\$500',
      imageUrl: 'assets/images/lima.jpg',
      placesToVisit: [
        {
          'name': 'Miraflores',
          'description':
              'Parklar, alışveriş ve okyanus manzaralarıyla hareketli bir bölge.'
        },
        {
          'name': 'Plaza Mayor',
          'description':
              'Sömürge dönemine ait binalar ve Hükümet Sarayı ile tarihî merkez.'
        },
        {
          'name': 'Huaca Pucllana',
          'description': 'Eski bir ön-Inka piramidi ve arkeolojik alan.'
        }
      ],
      famousFoods: [
        {'name': 'Ceviche', 'image': 'assets/images/Ceviche.jpg'},
        {'name': 'Lomo Saltado', 'image': 'assets/images/Lomo.jpg'},
        {'name': 'Anticuchos', 'image': 'assets/images/Anticuchos.jpg'}
      ],
    ),
    City(
      name: 'Bogotá',
      description:
          'Bogotá, Kolombiya\'nın başkenti olup And Dağları\'nda yer alır. Zengin kültürel mirası ile tanınır ve Gold Museum ve La Candelaria gibi önemli mekanlara ev sahipliği yapar. Bogotá ayrıca canlı sanat sahnesi ve lezzetli mutfağı ile ünlüdür.',
      price: '\$500',
      imageUrl: 'assets/images/bogota.jpg',
      placesToVisit: [
        {
          'name': 'Monserrate',
          'description': 'Şehir manzaraları sunan bir dağ.'
        },
        {
          'name': 'Gold Museum',
          'description': 'Ön-Hispanik altın eserleri sergileyen bir müze.'
        },
        {
          'name': 'La Candelaria',
          'description':
              'Kolonyal mimarisi ve kültürel alanlarıyla tarihi bir bölge.'
        }
      ],
      famousFoods: [
        {'name': 'Ajiaco', 'image': 'assets/images/Ajiaco.jpg'},
        {'name': 'Bandeja Paisa', 'image': 'assets/images/Bandeja.jpg'},
        {'name': 'Arepas', 'image': 'assets/images/Arepas.jpg'}
      ],
    ),
    City(
      name: 'New York',
      description:
          'New York City, genellikle sadece New York olarak bilinir, Times Square, Central Park ve Özgürlük Anıtı gibi ikonik yerlerle tanınır. Kültürel çeşitliliği, Broadway şovları ve dünya çapında müzeleri ile ünlü bir metropoldür.',
      price: '\$800',
      imageUrl: 'assets/images/nyc.jpg',
      placesToVisit: [
        {
          'name': 'Times Square',
          'description': 'Büyük bir ticaret ve eğlence merkezi.'
        },
        {
          'name': 'Central Park',
          'description': 'Manhattan\'ın ortasında büyük bir şehir parkı.'
        },
        {
          'name': 'Statue of Liberty',
          'description': 'Özgürlük ve demokrasinin simgesi.'
        }
      ],
      famousFoods: [
        {'name': 'New York Pizza', 'image': 'assets/images/nyp.jpg'},
        {'name': 'Bagels', 'image': 'assets/images/bagel.jpg'},
        {'name': 'Cheesecake', 'image': 'assets/images/Cheesecake.jpg'}
      ],
    ),
    City(
      name: 'Paris',
      description:
          'Paris, Fransa\'nın başkenti olup sanat, moda ve kültürel mekanlarıyla ünlüdür. Eiffel Kulesi, Louvre Müzesi ve Notre-Dame Katedrali gibi ikonik yerlerle "Işık Şehri" olarak anılır ve romantik atmosferiyle tanınır.',
      price: '\$700',
      imageUrl: 'assets/images/image.jpg',
      placesToVisit: [
        {'name': 'Eiffel Tower', 'description': 'Paris\'in en ikonik simgesi.'},
        {
          'name': 'Louvre Museum',
          'description':
              'Mona Lisa dahil binlerce sanat eserine ev sahipliği yapar.'
        },
        {
          'name': 'Notre-Dame Cathedral',
          'description': 'Gotik mimarisiyle ünlü tarihi bir katedral.'
        }
      ],
      famousFoods: [
        {'name': 'Croissants', 'image': 'assets/images/Croissants.jpg'},
        {'name': 'Macarons', 'image': 'assets/images/Macarons.jpg'},
        {'name': 'Crêpes', 'image': 'assets/images/Crêpes.jpg'}
      ],
    ),
    City(
      name: 'Tokyo',
      description:
          'Tokyo, Japonya\'nın başkenti olup modern teknoloji ve geleneksel kültürün buluştuğu bir şehirdir. Tokyo Kulesi, Senso-ji Tapınağı ve Shibuya Kavşağı gibi yerlerle ünlüdür. Ayrıca, yemek kültürü ve alışveriş olanaklarıyla da tanınır.',
      price: '\$600',
      imageUrl: 'assets/images/tokyo.jpg',
      placesToVisit: [
        {
          'name': 'Senso-ji Temple',
          'description': 'Tokyo\'nun en eski tapınağı.'
        },
        {
          'name': 'Shibuya Crossing',
          'description': 'Dünyanın en yoğun yaya geçidi.'
        },
        {
          'name': 'Tokyo Skytree',
          'description': 'Şehir manzarasını sunan yüksek bir kule.'
        }
      ],
      famousFoods: [
        {'name': 'Sushi', 'image': 'assets/images/Sushi.jpg'},
        {'name': 'Ramen', 'image': 'assets/images/Ramen.jpg'},
        {'name': 'Tempura', 'image': 'assets/images/Tempura.jpg'}
      ],
    ),
    City(
      name: 'İstanbul',
      description:
          'İstanbul, Boğaziçi Köprüsü üzerinde Avrupa ve Asya kıtalarını birbirine bağlayan bir şehir olup, zengin tarihi ve kültürel mirası ile tanınır. Ayasofya, Topkapı Sarayı ve Kapalıçarşı gibi tarihi yerleriyle ünlüdür. İstanbul’un canlı kültürü, mimarisi, mutfağı ve hareketli pazarlarıyla kendini gösterir.',
      price: '\$550',
      imageUrl: 'assets/images/istanbul.jpg',
      placesToVisit: [
        {
          'name': 'Ayasofya',
          'description': 'Tarihi bir mimari harika ve müze.'
        },
        {
          'name': 'Topkapı Sarayı',
          'description': 'Osmanlı padişahlarının eski ikametgahı.'
        },
        {
          'name': 'Kapalıçarşı',
          'description':
              'Dünyanın en büyük ve en eski kapalı pazarlarından biri.'
        }
      ],
      famousFoods: [
        {'name': 'Kebab', 'image': 'assets/images/Kebab.jpg'},
        {'name': 'Baklava', 'image': 'assets/images/Baklava.jpg'},
        {'name': 'Lahmacun', 'image': 'assets/images/Lahmacun.jpg'}
      ],
    ),
    City(
      name: 'Sydney',
      description:
          'Sydney, Avustralya’nın en büyük şehri olup, muazzam limanı, ikonik Sydney Opera Binası ve güzel plajları ile ünlüdür. Şehir, canlı bir sanat sahnesi, çeşitli yemek seçenekleri ve birçok açık hava etkinliği sunmaktadır.',
      price: '\$650',
      imageUrl: 'assets/images/sydney.jpg',
      placesToVisit: [
        {
          'name': 'Sydney Opera Binası',
          'description': 'Dünya çapında ünlü bir sahne sanatları merkezi.'
        },
        {
          'name': 'Bondi Plajı',
          'description': 'Sörf ve canlı atmosferi ile bilinen popüler bir plaj.'
        },
        {
          'name': 'Harbour Köprüsü',
          'description':
              'Şehir manzarasına panoramik bakışlar sunan ikonik bir köprü.'
        }
      ],
      famousFoods: [
        {'name': 'Vegemite', 'image': 'assets/images/Vegemite.jpg'},
        {'name': 'Lamingtons', 'image': 'assets/images/Lamingtons.jpg'},
        {'name': 'Pavlova', 'image': 'assets/images/Pavlova.jpg'}
      ],
    ),

    // Diğer şehir tanımları aynı şekilde devam ediyor...
  ];

  FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom:
                Radius.circular(20.0), // Köşeleri kıvrımlı yapmak için yarıçap
          ),
          child: AppBar(
            title: Text(
              'Favoriler',
              style: GoogleFonts.poppins(
                  color: Colors.red, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(31, 255, 103, 2),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return CityCard(
            city: cities[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CityDetailPage(city: cities[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final City city;
  final VoidCallback onTap;

  const CityCard({super.key, required this.city, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4.0,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                ),
                image: DecorationImage(
                  image: AssetImage(city.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      city.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      city.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                city.price,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class City {
  final String name;
  final String description;
  final String price;
  final String imageUrl;
  final List<Map<String, String>> placesToVisit;
  final List<Map<String, String>> famousFoods;

  City({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.placesToVisit,
    required this.famousFoods,
  });
}

class CityDetailPage extends StatelessWidget {
  final City city;

  const CityDetailPage({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city.name),
        backgroundColor: Colors.red[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                city.imageUrl,
                fit: BoxFit.contain,
                height: 200,
                width: double.infinity,
              ),
              const SizedBox(height: 16),
              Text(
                city.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                city.description,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ünlü Mekanları',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...city.placesToVisit.map(
                (place) => ListTile(
                  title: Text(place['name']!),
                  subtitle: Text(place['description']!),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ünlü Yemekleri:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 150, // Resimlerin yüksekliği
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: city.famousFoods.length,
                  itemBuilder: (context, index) {
                    final food = city.famousFoods[index];
                    return Container(
                      width: 150, // Resimlerin genişliği
                      margin: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              food['image']!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            food['name']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
