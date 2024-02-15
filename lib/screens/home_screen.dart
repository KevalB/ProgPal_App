import 'package:flutter/material.dart';
import 'package:progpal/screens/java/java_condition_page.dart';

class HomeScreen extends StatelessWidget {
  List<String> imagePaths = [
    'assets/images/splashscreen.png',
    'assets/images/splashscreen.png',
    'assets/images/splashscreen.png',
    'assets/images/splashscreen.png',
  ];

  List<String> customTexts = [
    'Quizzes',
    'Practice',
    'Practice',
    'Practice',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Column(
        children: [
          Container(
              color: Colors.amber,
              width: 100,
              height: 750,
              child: Text("Keval")),
        ],
      ),
      appBar: AppBar(
        title: Text('ProgPal',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 120,
              child: //ListView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: 5, // Adjust the count as needed
                  //   itemBuilder: (context, index) {
                  //     return Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           color: index % 2 == 0
                  //               ? Colors.cyan.withOpacity(0.2)
                  //               : Colors.indigo.withOpacity(0.2),
                  //         ),
                  //         height: 100,
                  //         width: 100,
                  //         child: Center(
                  //           child: Text(
                  //             'Category $index',
                  //             style: TextStyle(
                  //               fontSize: 18,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),

                  ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    imagePaths.length, // Use the length of the imagePaths list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            // Redirect to screen associated with image1
                            break;
                          case 1:
                            // Redirect to screen associated with image2
                            break;
                          // Add cases for other images as needed
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index % 2 == 0
                              ? Colors.indigo.withOpacity(0.9)
                              : Colors.indigo.withOpacity(0.9),
                        ),
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                imagePaths[
                                    index], // Use the image path from the list
                                width: 70,
                                height: 70,
                              ),
                              SizedBox(height: 8),
                              Text(
                                customTexts[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ListView.separated(
              padding: EdgeInsets.all(30.0),
              shrinkWrap: true,
              itemCount: 7,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.grey[300],
                  thickness: 1.0,
                  height: 20.0,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                String language = '';
                Color itemColor = Colors.transparent;

                switch (index) {
                  case 0:
                    language = 'Java';
                    itemColor = Colors.indigo;
                    break;
                  case 1:
                    language = 'C++';
                    itemColor = Colors.indigo;
                    break;
                  case 2:
                    language = 'React';
                    itemColor = Colors.indigo;
                    break;
                  case 3:
                    language = 'GoLang';
                    itemColor = Colors.indigo;
                    break;
                  case 4:
                    language = 'Python';
                    itemColor = Colors.indigo;
                    break;
                  case 5:
                    language = 'JavaScript';
                    itemColor = Colors.indigo;
                    break;
                  case 6:
                    language = 'Node';
                    itemColor = Colors.indigo;
                    break;
                }

                return InkWell(
                  onTap: () {
                    // Navigate to JavaPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JavaConditionPage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: itemColor,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        language,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(
                        Icons.code,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
