import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> names = <String>[
    'Derrick Koko',
    'Samuel Thompson',
    'Ivan Nkemakolam',
    'Lennox Koko',
    'Christiana Alonso',
    'Jennis Doe',
    'Sylvia Brown',
    'Wiktoria Lopez',
    'Alfie Wood',
    'James West',
  ];

  final List<String> profilePics = <String>[
    'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29uY2VydHxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1429962714451-bb934ecdc4ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29uY2VydHxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://www.pinkvilla.com/files/styles/gallery-preview/public/lee_min_ho_in_glares_news1_pg.jpg?itok=vJFhfL3V',
    'https://st1.bollywoodlife.com/wp-content/uploads/2021/11/BTS-BTS-V-BTS-ARMY-Kim-Taehyung-Taehyung-1.png',
    'https://www.adobe.com/content/dam/cc/us/en/creativecloud/photography/discover/concert-photography/thumbnail.jpeg',
    'https://cf.ltkcdn.net/family/images/std/200821-800x533r1-family.jpg',
    'https://image.freepik.com/free-photo/dreamy-young-woman-sunglasses-looking-front_197531-16739.jpg',
    'https://image.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://media.istockphoto.com/photos/portrait-of-black-family-with-kids-relax-on-couch-picture-id1166112327?k=20&m=1166112327&s=612x612&w=0&h=pAOKCAE1RSFgniYIazveoNmpG0k7-IEQQ5XMRjxE0RM=',
    'https://cf.ltkcdn.net/family/images/std/200821-800x533r1-family.jpg',
  ];

  final List<String> posts = <String>[
    'https://qph.fs.quoracdn.net/main-thumb-42697305-200-zgstugovouvsentjnoguqomqfdaekjsc.jpeg',
    'https://qph.fs.quoracdn.net/main-thumb-42697305-200-zgstugovouvsentjnoguqomqfdaekjsc.jpeg',
    'https://www.pinkvilla.com/files/styles/gallery-preview/public/lee_min_ho_in_glares_news1_pg.jpg?itok=vJFhfL3V',
    'https://st1.bollywoodlife.com/wp-content/uploads/2021/11/BTS-BTS-V-BTS-ARMY-Kim-Taehyung-Taehyung-1.png',
    'https://img.freepik.com/free-photo/portrait-young-beautiful-african-girl-dark-wall_176420-5815.jpg?size=338&ext=jpg',
    'https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg?size=338&ext=jpg',
    'https://image.freepik.com/free-photo/dreamy-young-woman-sunglasses-looking-front_197531-16739.jpg',
    'https://image.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://img.freepik.com/free-photo/waist-up-shot-handsome-self-confident-cheerful-male-entrepreneur-has-broad-smile_273609-18909.jpg?size=338&ext=jpg',
    'https://img.freepik.com/free-photo/close-up-portrait-stunned-bearded-young-guy-drops-jaw-has-bugged-dark-eyes-sees-something-unbelievable-surprising-has-eyewear-isolated-white-wall-people-emotions-concept_273609-15474.jpg?size=338&ext=jpg',
  ];

  final List<String> likes = <String>[
    '35',
    '3356',
    '34',
    '95',
    '776',
    '50',
    '4',
    '845',
    '1.1M',
    '780',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 28.0,
              left: 18,
            ),
            child: Icon(
              Icons.camera_alt,
              size: 35,
            ),
          ),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Text(
              'Social Media',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                top: 28.0,
                right: 18.0,
              ),
              child: Icon(
                Icons.settings,
                size: 30,
              ),
            )
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(colors: [
                                      Colors.yellow,
                                      Colors.red,
                                    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage('${profilePics[index]}'),
                                      radius: 24,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    '${names[index]}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.network('${profilePics[index]}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.mode_comment_outlined,
                                    size: 35,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.share,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.bookmark_border,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                ),
                                children: [
                                  TextSpan(text: 'Liked by '),
                                  TextSpan(
                                    text: 'techwithderrick',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' and '),
                                  TextSpan(
                                    text: '${likes[index]}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' others'),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                ),
                                children: [
                                  TextSpan(
                                    text: '${names[index]} ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'The concert was awesome...',
                                  ),
                                  TextSpan(
                                    text: '#concert #enjoy',
                                    style: TextStyle(color: Color(0xFF4D77A5)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                color: Color(0xFFE4E8ED),
              )
            ],
          );
        },
      ),
    );
  }
}
