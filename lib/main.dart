import 'package:flutter/material.dart';
import 'Widgets.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey[900],
                  size: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          'Stories',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See Archives',
                          style: TextStyle(
                            color: Colors.grey[900],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeStory(
                            image: 'assets/images/Story/1.jpg',
                            userimage: 'assets/images/ali-marel.jpg',
                            title: 'Ali Marel',
                          ),
                          makeStory(
                            image: 'assets/images/Story/2.jpg',
                            userimage: 'assets/images/alex-iby.jpg',
                            title: 'Alex Iby',
                          ),
                          makeStory(
                            image: 'assets/images/Story/3.jpg',
                            userimage: 'assets/images/alireza-esmaeeli.jpg',
                            title: 'Alireza Esmaeeli',
                          ),
                          makeStory(
                            image: 'assets/images/Story/4.jpg',
                            userimage: 'assets/images/charles-deluvio.jpg',
                            title: 'Charles Deluvio',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    makeFeed(
                      userImage: 'assets/images/henri-meilhac.jpg',
                      userName: 'Henri Meilhac',
                      feedTime: '2m ago',
                      feedText:
                          'Success is not final, failure is not fatal: it is the courage to continue that counts.',
                      feedImage: 'assets/images/Story/5.jpg',
                      liked: true,
                    ),
                     makeFeed(
                      userImage: 'assets/images/sharon-garcia.jpg',
                      userName: 'Sharon Garcia',
                      feedTime: '28m ago',
                      feedText:
                          'What you get by achieving your goals is not as important as what you become by achieving your goals.',
                      feedImage: '',
                      liked: false,
                    ),
                     makeFeed(
                      userImage: 'assets/images/charles-deluvio.jpg',
                      userName: 'Charles Deluvio',
                      feedTime: '32m ago',
                      feedText:
                          'I can\'t change the direction of the wind, but I can adjust my sails to always reach my destination.',
                      feedImage: 'assets/images/Story/1.jpg',
                      liked: true,
                    ),
                     makeFeed(
                      userImage: 'assets/images/alireza-esmaeeli.jpg',
                      userName: 'Alireza Esmaeeli',
                      feedTime: '2h ago',
                      feedText:
                          'It is our attitude at the beginning of a difficult task which, more than anything else, will affect its successful outcome.',
                      feedImage: 'assets/images/Story/4.jpg',
                      liked: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
