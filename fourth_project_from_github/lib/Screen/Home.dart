import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          title,
          style: TextStyle(color: Colors.black87),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/my_image.jpg'),
                ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'M. Umar Ajmal',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Flutter App Developer',
                        style: TextStyle(
                          color: Colors.blueGrey[400],
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 1, color: Colors.grey[500]!),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.message,
                          color: Colors.blueGrey[400],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 40,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 1,
              color: Colors.blueGrey[200],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfoColumn(title: '203', subtitle: 'Followers'),
                _buildInfoColumn(title: '932', subtitle: 'Following'),
                _buildInfoColumn(title: '30', subtitle: 'Projects'),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 1,
              color: Colors.blueGrey[200],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle('Top Skills'),
                _buildSkillsChips(),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle('Projects'),
                _buildProjectCard(imageUrl: 'assets/my1.jpg', title: 'Flutter Project 1'),
                SizedBox(height: 20),
                _buildProjectCard(imageUrl: 'assets/my2.jpg', title: 'Flutter Project 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoColumn({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        SizedBox(height: 8),
        Text(
          subtitle,
          style: TextStyle(fontSize: 15, color: Colors.blueGrey),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, color: Colors.blueGrey, fontWeight: FontWeight.w900),
    );
  }

  Widget _buildSkillsChips() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        SkillChip(label: 'Flutter'),
        SkillChip(label: 'Firebase'),
        SkillChip(label: 'Block'),
        SkillChip(label: 'SqLite'),
        SkillChip(label: 'Laravel'),
        SkillChip(label: 'Express JS'),
        SkillChip(label: 'Tensorflow'),
      ],
    );
  }

  Widget _buildProjectCard({required String imageUrl, required String title}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Project Description',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('View Details'),
                    ),
                    Icon(Icons.favorite_border),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey[300],
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.blueGrey),
      ),
    );
  }
}
