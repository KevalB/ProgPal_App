import 'package:flutter/material.dart';
import 'package:progpal/screens/java/java_fifth.dart';
import 'package:progpal/screens/java/java_first.dart';
import 'package:progpal/screens/java/java_fourth.dart';
import 'package:progpal/screens/java/java_second.dart';
import 'package:progpal/screens/java/java_third.dart';
import 'package:progpal/screens/java/programs/array.dart';
import 'package:progpal/screens/java/programs/basic.dart';
import 'package:progpal/screens/java/programs/collection.dart';
import 'package:progpal/screens/java/programs/exception.dart';
import 'package:progpal/screens/java/programs/file_handling.dart';
import 'package:mind_map/mind_map.dart';
import 'package:progpal/screens/java/programs/oops.dart';
import 'package:progpal/screens/java/programs/threads.dart';

Color bgColor = Colors.yellow;
Color txtColor = Colors.white;

class BeginnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Java',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo,
      ),
      body: DefaultTabController(
        length: 4, // Add one more tab for the RoadMap
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align tabs to the start
          mainAxisAlignment: MainAxisAlignment.start, // Align tabs to the start
          children: [
            TabBar(
              tabAlignment: TabAlignment.center,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: 'Index'),
                Tab(text: 'Programs'),
                Tab(text: 'RoadMap'),
                Tab(text: 'Description'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  IndexPage(),
                  ProgramsPage(),
                  RoadMapPage(),
                  DescriptionPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  bool _contentCompleted = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: Row(
            children: [
              Text('Introduction to Java'),
              Spacer(),
              if (_contentCompleted)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
            ],
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            _buildDropdownMenuItem('What is Java?'),
            _buildDropdownMenuItem('Where is Java used?'),
            _buildDropdownMenuItem('How does Java work?'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JavaFirst()),
                ).then((value) {
                  // Update the state when the user completes the content
                  setState(() {
                    _contentCompleted = true;
                  });
                });
              },
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Row(
            children: [
              Text('Features of Java'),
              Spacer(),
              if (_contentCompleted)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
            ],
          ),
          children: [
            _buildDropdownMenuItem('Variables'),
            _buildDropdownMenuItem('Data Types'),
            _buildDropdownMenuItem('Arithmetic Operations'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JavaSecond()),
                ).then((value) {
                  // Update the state when the user completes the content
                  setState(() {
                    _contentCompleted = true;
                  });
                });
              },
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Row(
            children: [
              Text('JDK, JRE, and JVM'),
              Spacer(),
              if (_contentCompleted)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
            ],
          ),
          children: [
            _buildDropdownMenuItem('If-else Statements'),
            _buildDropdownMenuItem('Switch Statements'),
            _buildDropdownMenuItem('Ternary Operator'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JavaThird()),
                ).then((value) {
                  // Update the state when the user completes the content
                  setState(() {
                    _contentCompleted = true;
                  });
                });
              },
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Row(
            children: [
              Text('List of Java Keywords'),
              Spacer(),
              if (_contentCompleted)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
            ],
          ),
          children: [
            _buildDropdownMenuItem('If-else Statements'),
            _buildDropdownMenuItem('Switch Statements'),
            _buildDropdownMenuItem('Ternary Operator'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JavaFourth()),
                ).then((value) {
                  // Update the state when the user completes the content
                  setState(() {
                    _contentCompleted = true;
                  });
                });
              },
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Row(
            children: [
              Text('Java OOPs Concepts'),
              Spacer(),
              if (_contentCompleted)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
            ],
          ),
          children: [
            _buildDropdownMenuItem('If-else Statements'),
            _buildDropdownMenuItem('Switch Statements'),
            _buildDropdownMenuItem('Ternary Operator'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JavaFifth()),
                ).then((value) {
                  // Update the state when the user completes the content
                  setState(() {
                    _contentCompleted = true;
                  });
                });
              },
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDropdownMenuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.indigo,
        ),
        child: DropdownMenuItem(
          child: Text(
            title,
            style: TextStyle(color: txtColor),
          ),
        ),
      ),
    );
  }
}

Widget _buildDropdownMenuItem(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: bgColor,
      ),
      child: DropdownMenuItem(
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

// Roadmap
class RoadMapPage extends StatelessWidget {
  const RoadMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                          .copyWith(right: 0),
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text('Java'),
                ),
                MindMap(
                  padding: const EdgeInsets.only(left: 50),
                  dotRadius: 4,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10)
                              .copyWith(right: 0),
                          child: const Text('Basic'),
                        ),
                        MindMap(
                          dotRadius: 4,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: const Text('Conditional'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: const Text('Variables'),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: bgColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10)
                                      .copyWith(right: 0),
                                  child: const Text(
                                    'Functions',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint('12313');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: const Text('Exception Handling'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: const Text('Data Structure'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: const Text('OOP'),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10)
                              .copyWith(right: 0),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: const Text('File Handling'),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Description
class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What will I learn?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text('• Core concepts in java(whilst having fun,too)'),
              Text(
                  '• How to easily write programs for all computing platforms at once'),
              Text(
                  '• Knowledge of java code(+advance tips and tricks used by pros)'),
              Text(
                  '• The core skills needed to program for big clients, as a travelling freelaner or from home'),
              SizedBox(height: 16.0),
              Text(
                'Who is the target audience?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                  '• This course is perfect for absolute beginners with no previous coding experience, to intermediate looking to sharpen their skills to the expert level.'),
              Text(
                  '• Those looking to build creative and advanced java app for either personal use or for high-paying clients as a self employed contrator'),
              Text(
                  '• Those who love letting their own creative genius shine whilst getting paid to do so'),
              SizedBox(height: 16.0),
              Text(
                'Benefits',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                  '• Java is quite popular as a Programming Language in the industry so you can get good opportunities, if that is what you are looking for'),
              SizedBox(height: 16.0),
              Text(
                  '• Java is secure platform, thanks to its virtual Machine.This is one of the primary reasons Companies worldwide are using this language.'),
              SizedBox(height: 16.0),
              Text(
                  '• Android app development is gaining momentum and if you are familar with java then learning Andriod will be easier for you'),
              SizedBox(height: 16.0),
              Text(
                'Salary',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text('• The median salary is 102,000 USD per year'),
              SizedBox(height: 16.0),
              Text(
                'Requirements',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                  '• A strong work ethic, willingness to learn and plenty of excitement about the awesome new programs  your about to build'),
              SizedBox(height: 16.0),
              Text(
                  '• Nothing else, its just you, your phone and your hunger to get started today'),
              SizedBox(height: 16.0),
              Text('• Consistency is key to success'),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgramsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildProgramsGridView(context),
          ],
        ),
      ),
    );
  }

  Widget buildProgramsGridView(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      padding: EdgeInsets.all(16.0),
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      physics: NeverScrollableScrollPhysics(),
      children: [
        buildProgramCard(
          context,
          'Basic',
          'assets/images/java/helloworld.png',
          BasicPage(),
        ),
        buildProgramCard(
          context,
          'Array',
          'assets/images/java/array.png',
          ArrayPage(),
        ),
        buildProgramCard(
          context,
          'Collection',
          'assets/images/java/collection.png',
          CollectionPage(),
        ),
        buildProgramCard(
          context,
          'File Handling',
          'assets/images/java/filehandling.png',
          FileHandling(),
        ),
        buildProgramCard(
          context,
          'Exception Handling',
          'assets/images/java/exception.png',
          ExceptionPage(),
        ),
        buildProgramCard(
          context,
          'OOPs',
          'assets/images/java/oop.png',
          OopsPage(),
        ),
        buildProgramCard(
          context,
          'Threads',
          'assets/images/java/thread.png',
          Threads(),
        ),
        // Add more programs as needed
      ],
    );
  }

  Widget buildProgramCard(
      BuildContext context, String title, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        elevation: 4.0,
        child: buildCardContent(title, imagePath),
      ),
    );
  }

  Widget buildCardContent(String title, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Image.asset(
              imagePath,
              width: 180, // Adjust the width as needed
              height: 140, // Adjust the height as needed
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
