import 'package:flutter/material.dart';
// import 'package:login_signup/screens/welcome_screen.dart'; // Update this import
// import 'package:login_signup/screens/menu_screen.dart'; // New import

// void main() => runApp(const SittaraApp()); // This main function is already in main.dart

// class SittaraApp extends StatelessWidget { // This class is already in main.dart
//   const SittaraApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Sittara',
//       home: WelcomeScreen(), // Change to WelcomeScreen
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top section with gradient
          Container(
            height: MediaQuery.of(context).size.height *
                0.10, // Adjust height as needed
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFE4E1), Color(0xFFFFFFFF)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: SafeArea(
              // Removed const here to allow IconButton
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      // Added IconButton
                      icon: const Icon(Icons.menu,
                          size: 30, color: Colors.black87),
                      onPressed: () {
                        // Navigator.push( // This will be handled by named routes
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const MenuScreen()),
                        // );
                        Navigator.pushNamed(context, '/menu');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Remaining content on white background
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Logo (CircleAvatar) - positioned on white background
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/Sittara.png'),
                  ),

                  SizedBox(height: 20),

                  // Tarjeta 1 (RestaurantCard) - positioned on white background
                  RestaurantCard(
                    imagePath: 'assets/images/Teya Santa Lucia.png',
                    name: 'TEYA SANTA LUCIA',
                    rating: 4.5,
                  ),

                  SizedBox(height: 80), // Add SizedBox here

                  // Tarjeta 2 (RestaurantCard2)
                  RestaurantCard2(
                    imagePath:
                        'assets/images/Apoala.png', // Using a different image for variety
                    name: 'Apoala',
                    rating: 4.0,
                  ),

                  SizedBox(
                      height:
                          80), // Space between RestaurantCard2 and RestaurantCard3

                  // Tarjeta 3 (RestaurantCard3)
                  RestaurantCard3(
                    imagePath:
                        'assets/images/Babes.png', // Using a different image for variety
                    name: 'Babe´s',
                    rating: 4.5,
                  ),

                  SizedBox(height: 80), // Space after RestaurantCard3

                  // Tarjeta 4 (RestaurantCard4)
                  RestaurantCard4(
                    imagePath:
                        'assets/images/Bistrola 57.png', // Using a different image for variety
                    name: 'Bistrola 57',
                    rating: 4.0,
                  ),

                  SizedBox(height: 80), // Space after RestaurantCard4

                  // Tarjeta 5 (RestaurantCard5)
                  RestaurantCard5(
                    imagePath:
                        'assets/images/Coyote Maya.png', // Using a different image for variety
                    name: 'Coyote Maya',
                    rating: 4.5,
                  ),

                  SizedBox(height: 80), // Space after RestaurantCard5

                  // Tarjeta 6 (RestaurantCard6)
                  RestaurantCard6(
                    imagePath:
                        'assets/images/Pita Mediterranea.png', // Using a different image for variety
                    name: 'Pita Mediterranea',
                    rating: 4.0,
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

class RestaurantCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final double rating;

  const RestaurantCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    imagePath,
                    width: double.infinity, // Fill available width
                    fit: BoxFit.fitWidth, // Scale proportionally to fit width
                  ),
                  Container(
                    color: Colors.black.withAlpha(102),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Row(
                          children: List.generate(5, (index) {
                            double starValue = index + 1;
                            if (starValue <= rating) {
                              return const Icon(Icons.star,
                                  color: Colors.amber, size: 18);
                            } else if (starValue - rating < 1) {
                              return const Icon(Icons.star_half,
                                  color: Colors.amber, size: 18);
                            } else {
                              return const Icon(Icons.star_border,
                                  color: Colors.amber, size: 18);
                            }
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class RestaurantCard2 extends StatelessWidget {
  final String imagePath;
  final String name;
  final double rating;

  const RestaurantCard2({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    imagePath,
                    width: double.infinity, // Fill available width
                    fit: BoxFit.fitWidth, // Scale proportionally to fit width
                  ),
                  Container(
                    color: Colors.black.withAlpha(102),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Row(
                          children: List.generate(5, (index) {
                            double starValue = index + 1;
                            if (starValue <= rating) {
                              return const Icon(Icons.star,
                                  color: Colors.amber, size: 18);
                            } else if (starValue - rating < 1) {
                              return const Icon(Icons.star_half,
                                  color: Colors.amber, size: 18);
                            } else {
                              return const Icon(Icons.star_border,
                                  color: Colors.amber, size: 18);
                            }
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class RestaurantCard3 extends StatelessWidget {
  final String imagePath;
  final String name;
  final double rating;

  const RestaurantCard3({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    imagePath,
                    width: double.infinity, // Fill available width
                    fit: BoxFit.fitWidth, // Scale proportionally to fit width
                  ),
                  Container(
                    color: Colors.black.withAlpha(102),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Row(
                          children: List.generate(5, (index) {
                            double starValue = index + 1;
                            if (starValue <= rating) {
                              return const Icon(Icons.star,
                                  color: Colors.amber, size: 18);
                            } else if (starValue - rating < 1) {
                              return const Icon(Icons.star_half,
                                  color: Colors.amber, size: 18);
                            } else {
                              return const Icon(Icons.star_border,
                                  color: Colors.amber, size: 18);
                            }
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class RestaurantCard4 extends StatelessWidget {
  final String imagePath;
  final String name;
  final double rating;

  const RestaurantCard4({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    imagePath,
                    width: double.infinity, // Fill available width
                    fit: BoxFit.fitWidth, // Scale proportionally to fit width
                  ),
                  Container(
                    color: Colors.black.withAlpha(102),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Row(
                          children: List.generate(5, (index) {
                            double starValue = index + 1;
                            if (starValue <= rating) {
                              return const Icon(Icons.star,
                                  color: Colors.amber, size: 18);
                            } else if (starValue - rating < 1) {
                              return const Icon(Icons.star_half,
                                  color: Colors.amber, size: 18);
                            } else {
                              return const Icon(Icons.star_border,
                                  color: Colors.amber, size: 18);
                            }
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class RestaurantCard5 extends StatelessWidget {
  final String imagePath;
  final String name;
  final double rating;

  const RestaurantCard5({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    imagePath,
                    width: double.infinity, // Fill available width
                    fit: BoxFit.fitWidth, // Scale proportionally to fit width
                  ),
                  Container(
                    color: Colors.black.withAlpha(102),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Row(
                          children: List.generate(5, (index) {
                            double starValue = index + 1;
                            if (starValue <= rating) {
                              return const Icon(Icons.star,
                                  color: Colors.amber, size: 18);
                            } else if (starValue - rating < 1) {
                              return const Icon(Icons.star_half,
                                  color: Colors.amber, size: 18);
                            } else {
                              return const Icon(Icons.star_border,
                                  color: Colors.amber, size: 18);
                            }
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class RestaurantCard6 extends StatelessWidget {
  final String imagePath;
  final String name;
  final double rating;

  const RestaurantCard6({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    imagePath,
                    width: double.infinity, // Fill available width
                    fit: BoxFit.fitWidth, // Scale proportionally to fit width
                  ),
                  Container(
                    color: Colors.black.withAlpha(102),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Row(
                          children: List.generate(5, (index) {
                            double starValue = index + 1;
                            if (starValue <= rating) {
                              return const Icon(Icons.star,
                                  color: Colors.amber, size: 18);
                            } else if (starValue - rating < 1) {
                              return const Icon(Icons.star_half,
                                  color: Colors.amber, size: 18);
                            } else {
                              return const Icon(Icons.star_border,
                                  color: Colors.amber, size: 18);
                            }
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),  
      ),
    );
  }
}