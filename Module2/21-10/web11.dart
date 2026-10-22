import 'package:flutter/material.dart';

class TopsTech extends StatefulWidget {
  const TopsTech({super.key});

  @override
  State<TopsTech> createState() => _TopsTechState();
}

class _TopsTechState extends State<TopsTech> {
  final List<Map<String, dynamic>> courses =
  [
    {
      "title": "Java",
      "icon": Icons.coffee,
      "color": Colors.orange,
      "desc": "Learn object-oriented programming with Java."
    },
    {
      "title": "PHP",
      "icon": Icons.data_object,
      "color": Colors.indigo,
      "desc": "Server-side scripting language for web development."
    },
    {
      "title": "Python",
      "icon": Icons.terminal,
      "color": Colors.blue,
      "desc": "Versatile language for AI, data science, and web."
    },
    {
      "title": "Flutter",
      "icon": Icons.flutter_dash,
      "color": Colors.cyan,
      "desc": "Build beautiful native apps in record time."
    },
    {
      "title": "Dart",
      "icon": Icons.language,
      "color": Colors.teal,
      "desc": "Client-optimized language for fast apps on any platform."
    },
    {
      "title": "C++",
      "icon": Icons.developer_mode,
      "color": Colors.blueGrey,
      "desc": "High-performance systems programming language."
    },
    {
      "title": "React",
      "icon": Icons.web,
      "color": Colors.lightBlue,
      "desc": "A JavaScript library for building user interfaces."
    },
    {
      "title": "Node.js",
      "icon": Icons.memory,
      "color": Colors.green,
      "desc": "Execute JavaScript code outside a web browser."
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Get screen width for responsive AppBar actions
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TopsTech Academy',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        actions: screenWidth > 600
            ? [
                _buildNavButton('Home'),
                _buildNavButton('Courses'),
                _buildNavButton('About Us'),
                _buildNavButton('Contact'),
                const SizedBox(width: 16),
              ]
            : [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    // Mobile menu implementation here
                  },
                ),
              ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header / Hero Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: screenWidth > 600 ? 80 : 40,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo.shade800, Colors.indigo.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Empower Your Future with TopsTech',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 42 : 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Learn the most in-demand skills from industry experts.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 20 : 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.indigo.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Explore Courses',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Courses Grid Section
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: screenWidth > 800 ? 60.0 : 20.0,
              ),
              child: Column(
                children: [
                  const Text(
                    'Our Featured Courses',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 80,
                    height: 4,
                    color: Colors.indigo,
                  ),
                  const SizedBox(height: 40),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      int crossAxisCount = 1;
                      if (constraints.maxWidth > 1200) {
                        crossAxisCount = 4;
                      } else if (constraints.maxWidth > 800) {
                        crossAxisCount = 3;
                      } else if (constraints.maxWidth > 600) {
                        crossAxisCount = 2;
                      }

                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 24,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: courses.length,
                        itemBuilder: (context, index) {
                          return _buildCourseCard(courses[index]);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),

            // Footer Section
            Container(
              width: double.infinity,
              color: Colors.grey.shade900,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'TopsTech Academy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFooterLink('Privacy Policy'),
                      const Text(' | ', style: TextStyle(color: Colors.white54)),
                      _buildFooterLink('Terms of Service'),
                      const Text(' | ', style: TextStyle(color: Colors.white54)),
                      _buildFooterLink('Contact Us'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '© 2024 TopsTech. All Rights Reserved.',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Widget _buildFooterLink(String title) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white70,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget _buildCourseCard(Map<String, dynamic> course) {
    return Card(
      elevation: 4,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: course['color'].withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                course['icon'],
                size: 56,
                color: course['color'],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              course['title'],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Text(
                course['desc'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  height: 1.4,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: course['color'],
                  side: BorderSide(color: course['color']),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text('Learn More'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
