import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
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

  final List<String> messages = <String>[
    'Hello. How are you?',
    'Like seriously? 🤔',
    'Help me with my website',
    'Okay.',
    'Looks so good.',
    "Reply me now!.",
    'You sent a sticker',
    'Dinner tonight?.',
    'Did it work out?',
    'You must be tired.',
  ];

  final List<String> datetime = <String>[
    '7:59am',
    '7:11am',
    '2:01am',
    'Yesterday',
    'Yesterday',
    'Yesterday',
    '22/12',
    '23/12',
    '23/12',
    '24/12',
  ];

  final List<String> messageCount = <String>[
    '1',
    '2',
    '1',
    '1',
    '2',
    '5',
    '1',
    '1',
    '3',
    '1',
  ];

  final List<String> profilePics = <String>[
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

  final List<int> colorCodes = <int>[
    600,
    500,
    100
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Text(
              'Chats',
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
                Icons.add,
                size: 30,
              ),
            )
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            color: Colors.white,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            '${profilePics[index]}',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${names[index]}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              Text(
                                '${messages[index]}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${datetime[index]}',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Color(0xFF6203fc),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 5.0,
                                bottom: 5.0,
                                left: 10.0,
                                right: 10.0,
                              ),
                              child: Text(
                                '${messageCount[index]}',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
