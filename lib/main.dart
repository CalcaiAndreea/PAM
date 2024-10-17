import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WineShopPage(),
    );
  }
}

class WineShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Location and Notification Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Location Icon and Address
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.black, size: 18),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Donnerville Drive',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '4 Donnerville Hall, Donnerville Drive, Admaston...',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF98A2B3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Notification Bell with Badge
                  Stack(
                    children: [
                      Icon(Icons.notifications_none, size: 28),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Text(
                            '12',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Search Bar
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xFFFCFCFD),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color(0xFFD0D5DD)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Color(0xFF475467)),
                    SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Color(0xFF98A2B3)),
                        ),
                      ),
                    ),
                    Icon(Icons.mic, color: Color(0xFF475467)),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Shop wines by Section (Categories)
              Text(
                'Shop wines by',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1D2939),
                ),
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterChipWidget(label: 'Type', isSelected: true),
                    SizedBox(width: 12),
                    FilterChipWidget(label: 'Style'),
                    SizedBox(width: 12),
                    FilterChipWidget(label: 'Countries'),
                    SizedBox(width: 12),
                    FilterChipWidget(label: 'Grape'),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Horizontal Scrollable Wine Carousel (Red, White, etc.)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WineTypeCard(
                      imageUrl: 'assets/pngwing 2.png',
                      wineType: 'Red wines',
                      count: 123,
                    ),
                    SizedBox(width: 16),
                    WineTypeCard(
                      imageUrl: 'assets/white_wine.png',
                      wineType: 'White wines',
                      count: 123,
                    ),
                    SizedBox(width: 16),
                    WineTypeCard(
                      imageUrl: 'assets/rose_wine.png',
                      wineType: 'Rosé wines',
                      count: 123,
                    ),
                    SizedBox(width: 16),
                    WineTypeCard(
                      imageUrl: 'assets/sparkling_wine.png',
                      wineType: 'Sparkling wines',
                      count: 123,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Wine List Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wine',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1D2939),
                    ),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFBE2C55),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),

              // Wine Cards List
              WineCard(
                wineName: 'Ocone Bozzovich Beneventano Bianco IGT',
                wineType: 'Red wine (Green and Flinty)',
                country: 'From Champagne Blanc de Blancs, France',
                criticScore: '94 / 100',
                price: '23,256,596',
                imageUrl: 'assets/wine1.png',
                availability: 'Available',
                isFavorite: false,
              ),
              WineCard(
                wineName: '2021 Petit Chablis - Passy Le Clou',
                wineType: 'White wine (Green and Flinty)',
                country: 'From Champagne Blanc de Blancs, France',
                criticScore: '94 / 100',
                price: '23,256,596',
                imageUrl: 'assets/wine2.png',
                availability: 'Available',
                isFavorite: false,
              ),
              WineCard(
                wineName: '2021 Cicada\'s Song Rosé',
                wineType: 'Rose wine (Green and Flinty)',
                country: 'From Champagne Blanc de Blancs, France',
                criticScore: '94 / 100',
                price: '₹ 23,256,596',
                imageUrl: 'assets/wine4.png', // Imagine actualizată
                availability: 'Available',
                isFavorite: false, // Poți modifica în funcție de starea dorită
              ),

              WineCard(
                wineName: 'Philippe Fontaine Champagne Brut Rosé',
                wineType: 'Sparkling wine (Green and Flinty)',
                country: 'From Champagne Blanc de Blancs, France',
                criticScore: '94 / 100',
                price: '23,256,596',
                imageUrl: 'assets/wine3.png',
                availability: 'Unavailable',
                isFavorite: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Filter Chip Widget for categories
class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;

  const FilterChipWidget({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFBE2C55).withOpacity(0.1) : Color(0xFFFCFCFD),
        border: Border.all(color: isSelected ? Color(0xFFBE2C55) : Color(0xFFD0D5DD)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Color(0xFFBE2C55) : Color(0xFF475467),
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

// Wine Type Card for the Carousel
class WineTypeCard extends StatelessWidget {
  final String imageUrl;
  final String wineType;
  final int count;

  const WineTypeCard({
    required this.imageUrl,
    required this.wineType,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        color: Color(0xFFFCFCFD),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFD0D5DD)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                imageUrl,
                width: 130,
                height: 100,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFFBE2C55),
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            wineType,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1D2939),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

// Wine Card Widget
class WineCard extends StatelessWidget {
  final String wineName;
  final String wineType;
  final String country;
  final String criticScore;
  final String price;
  final String imageUrl;
  final String availability;
  final bool isFavorite;

  const WineCard({
    required this.wineName,
    required this.wineType,
    required this.country,
    required this.criticScore,
    required this.price,
    required this.imageUrl,
    required this.availability,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 1,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Availability Chip
                  Chip(
                    label: Text(
                      availability,
                      style: TextStyle(
                        color: availability == 'Available' ? Color(0xFF12B76A) : Color(0xFFF53F3F),
                      ),
                    ),
                    backgroundColor: availability == 'Available'
                        ? Color(0xFFE7F9EF)
                        : Color(0xFFFDECEE),
                  ),
                  SizedBox(height: 8),
                  // Wine Name
                  Text(
                    wineName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Wine Type and Country
                  Text(wineType),
                  Text(country),
                  SizedBox(height: 8),
                  // Critic Score
                  Text('Critics\' Scores: $criticScore'),
                  SizedBox(height: 8),
                  // Price
                  Text(
                    '₹ $price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            // Favorite Button
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                // Handle favorite button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
