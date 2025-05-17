import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/icons/profile.jpg'),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Althea Kim Ledesma',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'theakimledesma@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            _buildCuteCard(Icons.cake, 'Age', '21'),
            _buildCuteCard(Icons.fitness_center, 'Goal', 'Stay Fit'),
            _buildCuteCard(Icons.card_membership, 'Membership', 'Premium'),
            const SizedBox(height: 30),
            const Text(
              'Today\'s Intake',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            _buildIntakeCard('Breakfast', 'Avocado Toast', 320, Icons.wb_sunny),
            _buildIntakeCard(
              'Lunch',
              'Grilled Chicken Salad',
              450,
              Icons.lunch_dining,
            ),
            _buildIntakeCard(
              'Dinner',
              'Salmon & Quinoa',
              500,
              Icons.dinner_dining,
            ),
            const SizedBox(height: 15),
            _buildCaloriesSummary(1270, 2000),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Profile tab
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
        },
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
    );
  }

  Widget _buildCuteCard(IconData icon, String title, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.pink, size: 28),
          const SizedBox(width: 15),
          Text(
            '$title: ',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildIntakeCard(
    String meal,
    String food,
    int calories,
    IconData icon,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurpleAccent, size: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(meal, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(food),
              ],
            ),
          ),
          Text(
            '$calories kcal',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildCaloriesSummary(int current, int target) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.teal[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(Icons.local_fire_department, color: Colors.teal, size: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Calories Consumed',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('$current / $target kcal'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
