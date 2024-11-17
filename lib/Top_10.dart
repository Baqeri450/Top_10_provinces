// import 'package:animated_menu/animated_menu.dart';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
                child: Image.asset(
              'images/lion.jpg',
              width: 310,
              height: 350,
            )),
          ), // Change to your image path
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Top 10 provinces of AFGHANISTAN',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Center(
            child: CircularProgressIndicator(
              strokeWidth: 9,
              color: Colors.red,
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top 10 Provinces of AFG",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {
                                  Share.share(
                                      'Check out this awesome app! [https://play.google.com/store/apps/details?id=com.yourcompany.yourapp]');
                                },
                                child: Text(
                                  "Share App",
                                  style: TextStyle(color: Colors.black),
                                ))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (c) => about()));
                                },
                                child: Text(
                                  "About",
                                  style: TextStyle(color: Colors.black),
                                ))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Exit",
                                  style: TextStyle(color: Colors.black),
                                ))),
                      ])
            ],
          )),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Kabul",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Capital of Afghanistan"),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/kabul.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (c) => MD1()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Herat",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in western Afghanistan"),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/herat.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (c) => MD()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Mazar-e-Sharif",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in northern Afghanistan"),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/mazar.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => mazar()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Kandahar",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in southern Afghanistan"),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/kandahar.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => kandahar()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Badakhshan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in the northeastern part of Afghanistan"),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/bakhshan.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => badakhshan()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Panjshir",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in the northeastern part of Afghanistan"),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/panjshir.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => panjshir()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Laghman",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in eastern Afghanistan."),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/laghman.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => laghman()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Konar",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in the eastern part of Afghanistan."),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/konarD.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => konar()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "SarPol",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in the north of Afghanistan"),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/sarepol.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => sarpol()));
            },
            iconColor: Colors.black,
          ),
          ListTile(
            title: Text(
              "Ghazni",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("located in southeastern Afghanistan."),
            leading: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/gazni.jpg'),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => ghazni()));
            },
            iconColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class MD extends StatefulWidget {
  const MD({super.key});

  @override
  State<MD> createState() => _MDState();
}

class _MDState extends State<MD> {
  final String url = 'https://en.wikipedia.org/wiki/Herat?variant=zh-tw';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/herat.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Herat is a city located in western Afghanistan, in the fertile valley of the Hari River, south of the Paropamisus Mountains. It is the capital of Herat Province and is the third-largest city in Afghanistan1. Herat is known for its rich history and cultural significance, often referred to as the "Pearl of Khorasan".Key Highlights:Historical Significance: Herat has been an important city on the Silk Road, connecting West Asia, Central Asia, and South Asia. It has a long history dating back to Avestan times and was known for its wine production1.Cultural Hub: The city is home to several historic sites, including the Herat Citadel, the Musalla Complex, and the Great Mosque of Herat.Timurid Renaissance: Under the rule of Shah Rukh, Herat became a center of intellectual and artistic life, often compared to Florence during the Italian Renaissance.Modern Era: Herat has faced various conflicts, including damage during the Soviet-Afghan War and recent conflicts with the Taliban. Despite this, it remains a vital economic and cultural center in western Afghanistan',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MD1 extends StatefulWidget {
  const MD1({super.key});

  @override
  State<MD1> createState() => _MD1State();
}

class _MD1State extends State<MD1> {
  final String url = 'https://fa.wikipedia.org/wiki/%DA%A9%D8%A7%D8%A8%D9%84';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/kabulD.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Kabul is the capital city of Afghanistan and the largest urban center in the country. It is located in the eastern part of Afghanistan, nestled in a high-altitude valley in the Hindu Kush mountain range1. Here are some key highlights about Kabul:Key Highlights:Historical Significance: Kabul has a rich history dating back over 3,500 years. It has been a key city on the ancient Silk Road, connecting trade routes between Central Asia, South Asia, and the Middle East1.Cultural Hub: The city is known for its diverse cultural heritage, with numerous historic sites, including the Kabul Citadel, the Shah-Do Shamshira Mosque, and the Sakhi Shrine.Political and Economic Center: Kabul serves as the political, cultural, and economic hub of Afghanistan. It is home to the Afghan government and many international embassies and organizations2.Strategic Location: Kabul is situated at a crossroads of major trade routes, making it a strategically important city.Population: As of 2023, the population of Kabul is estimated to be around 4.95 million people.Climate: Kabul has a semi-arid climate with hot summers and cold winters. The city experiences significant temperature changes from day to night and season to season3.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class mazar extends StatefulWidget {
  const mazar({super.key});

  @override
  State<mazar> createState() => _mazarState();
}

class _mazarState extends State<mazar> {
  final String url = 'https://en.wikipedia.org/wiki/Mazar-i-Sharif';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/mazar.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Mazar-e-Sharif is a city located in northern Afghanistan, in the Balkh Province. It is the third-largest city in Afghanistan by population, with an estimated 500,207 residents as of 20212. Here are some key highlights about Mazar-e-Sharif:\nKey Highlights:Historical Significance: The city is known for its historical and cultural importance, including the famous Blue Mosque and the Shrine of Ali, which is a major pilgrimage site for Muslims.Strategic Location: Mazar-e-Sharif is situated near the border with Uzbekistan, making it a key hub for trade and transportation in the region.Economic Activities: The city is known for its fertile land and agricultural production, including cotton, grain, and fruit. It also has industries such as flour milling and silk and cotton textile manufacturing1.Cultural Hub: The city has a rich cultural heritage, with numerous Islamic and Hellenistic archaeological sites.Recent History: Mazar-e-Sharif has seen significant changes in recent years, including being captured by Taliban fighters in August 2021.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class kandahar extends StatefulWidget {
  const kandahar({super.key});

  @override
  State<kandahar> createState() => _kandaharState();
}

class _kandaharState extends State<kandahar> {
  final String url =
      'https://fa.wikipedia.org/wiki/%D9%82%D9%86%D8%AF%D9%87%D8%A7%D8%B1';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'images/kandahar.jpg',
                width: 700,
              ), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Kandahar is a city located in southern Afghanistan, in the Kandahar Province. It is the second-largest city in Afghanistan, after Kabul1. Here are some key highlights about Kandahar:\nKey Highlights:Historical Significance: Kandahar has a rich history dating back to ancient times. It was an important city on the ancient Silk Road and has been ruled by various empires, including the Achaemenid Empire, Alexander the Great, and the Ghaznavid dynasty2.Cultural Hub: The city is known for its cultural heritage, including the famous Blue Mosque and the Tomb of Ahmad Shah Durrani, the founder of the Durrani Empire.Economic Activities: Kandahar is a major trading center, known for its agricultural production, including fruits like pomegranates and grapes, as well as textiles and other goods.Strategic Location: Kandahar is situated at a strategic crossroads, making it an important hub for trade routes connecting southern, central, and western Afghanistan.Modern-Day Significance: Despite its historical importance, Kandahar has faced significant challenges in recent years, including conflicts and political instability.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class badakhshan extends StatefulWidget {
  const badakhshan({super.key});

  @override
  State<badakhshan> createState() => _badakhshanState();
}

class _badakhshanState extends State<badakhshan> {
  final String url = 'https://en.wikipedia.org/wiki/Badakhshan_Province';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/bakhshan.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Badakhshan is a province located in the northeastern part of Afghanistan. It is bordered by Tajikistan to the north, Pakistan to the southeast, and China to the east through the Wakhan Corridor1. The capital of Badakhshan Province is Fayzabad.\nKey Highlights:Geography: Badakhshan is known for its stunning mountainous terrain, including parts of the Hindu Kush and Pamir mountain ranges. The province is home to the highest peak in Afghanistan, Noshaq, which stands at 7,492 meters (24,580 feet).Historical Significance: The region has a rich history dating back to ancient times. It was an important trading center on the ancient Silk Road and is known for its deposits of lapis lazuli, which have been mined for over 4,000 years2.Cultural Heritage: Badakhshan has a diverse ethnolinguistic community, with Tajiks and Pamiris being the majority. The region is known for its unique forms of music, poetry, and dance3.Economy: Agriculture is the main occupation in Badakhshan, with crops such as rice, wheat, corn, and cotton being grown in the valleys. The region also has some mineral wealth, including sulfur deposits and precious stones like lapis lazuli2.Recent History: The province has experienced significant conflict and resistance, particularly during the Soviet-Afghan War and more recently with the Taliban.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class panjshir extends StatefulWidget {
  const panjshir({super.key});

  @override
  State<panjshir> createState() => _panjshirState();
}

class _panjshirState extends State<panjshir> {
  final String url = 'https://en.wikipedia.org/wiki/Panjshir_Province';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/panjshir.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Panjshir is a province located in the northeastern part of Afghanistan. It is known for its stunning Panjshir Valley, which is surrounded by the Hindu Kush mountains. The capital of Panjshir Province is Bazarak.\nKey Highlights:Geography: The Panjshir Valley is divided by the Panjshir River and is home to more than 100,000 people, including Afghanistans largest concentration of ethnic Tajiks.Historical Significance: Panjshir has a rich history, dating back to the Bronze Age. It became the heart of the new Panjshir Province in April 2004, having previously been part of Parwan Province.Political Importance: The province is considered the start point of Afghanistans Jihad period against the Soviets. It is also the birthplace of Afghanistans national hero, Ahmad Shah Massoud.Recent History: Panjshir has been a site of resistance against various forces, including the Soviet invasion in the 1980s and the Taliban in the 1990s. In August 2021, it became a bastion of resistance to the Taliban.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class laghman extends StatefulWidget {
  const laghman({super.key});

  @override
  State<laghman> createState() => _laghmanState();
}

class _laghmanState extends State<laghman> {
  final String url = 'https://en.wikipedia.org/wiki/Laghman_Province';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/laghman.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Laghman is a province located in the eastern part of Afghanistan. It is bordered by Nangarhar to the south, Kabul to the west, Kapisa and Panjshir to the northwest, and Kunar to the north and northeast. The capital of Laghman Province is Mehtarlam.\nKey Highlights:Geography: Laghman is known for its lush greenery, which stands in stark contrast to the surrounding desert regions. The province is home to the Alingar and Alinshing rivers, which provide vital water sources for the area.Historical Significance: The region has a rich history dating back to ancient times. It was an important trading center on the ancient Silk Road and has been ruled by various empires, including the Achaemenid Empire and Alexander the Great.Cultural Heritage: Laghman is a multi-ethnic province with a diverse population, including Pashtuns, Tajiks, and Pashayi. The province is known for its historical landmarks, minarets, monuments, and other cultural relics.Economy: Agriculture is the main occupation in Laghman, with crops such as rice, wheat, corn, and cotton being grown in the valleys. The region also has some mineral wealth, including precious stones like lapis lazuli.Recent History: Laghman has experienced significant conflict and resistance, particularly during the Soviet-Afghan War and more recently with the Taliban.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class sarpol extends StatefulWidget {
  const sarpol({super.key});

  @override
  State<sarpol> createState() => _sarpolState();
}

class _sarpolState extends State<sarpol> {
  final String url = 'https://en.wikipedia.org/wiki/Sar-e_Pol_Province';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/sarepol.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sar-e Pol (also spelled Sari Pul) is one of the thirty-four provinces of Afghanistan, located in the northern part of the country. Here are some key highlights about Sar-e Pol:\nKey Highlights:Geography: Sar-e Pol is bordered by Ghor and Bamyan to the south, Samangan to the east, Balkh and Jowzjan to the north, and Faryab to the west. The province is divided into 7 districts and contains 896 villages1.Population: As of 2021, Sar-e Pol has a population of about 632,000 people. The population is multi-ethnic and mostly tribal1.Capital: The city of Sar-e Pol serves as the provincial capital.History: Between the early 16th century and the mid-18th century, the territory was ruled by the Khanate of Bukhara. It was given to Ahmad Shah Durrani by Murad Beg of Bukhara after a treaty was signed around 1750, and became part of the Durrani Empire1.Recent History: Sar-e Pol was captured by the Taliban in 2021 during the Taliban offensive. The province has seen various conflicts, including during the Soviet-Afghan War and the Afghan Civil War1.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ghazni extends StatefulWidget {
  const ghazni({super.key});

  @override
  State<ghazni> createState() => _ghazniState();
}

class _ghazniState extends State<ghazni> {
  final String url = 'https://en.wikipedia.org/wiki/Ghazni';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/gazniD.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Ghazni is a province located in southeastern Afghanistan. It is known for its rich history and cultural heritage1. Here are some key highlights about Ghazni:\nKey Highlights:Historical Significance: Ghazni has a long history dating back to ancient times. It was an important city during the Ghaznavid Empire in the 10th and 11th centuries1. The city was also a major center of Islamic culture and learning during this period.Cultural Heritage: The province is home to several historical sites, including the Ghazni Citadel, the Minarets of Ghazni, and the Palace of Sultan Masud III. These sites reflect the architectural and cultural achievements of the region1.Economy: Agriculture is the main occupation in Ghazni, with crops such as wheat, barley, and fruits being grown in the region. The province also has some mineral resources, including precious stones like lapis lazuli2.Strategic Location: Ghazni is situated on the important Kabul-Kandahar Highway, making it a key trade route in the region. The Ghazni Airport provides limited domestic flights to Kabul2.Population: As of 2021, the population of Ghazni Province is estimated to be around 1.3 million people',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class konar extends StatefulWidget {
  const konar({super.key});

  @override
  State<konar> createState() => _konarState();
}

class _konarState extends State<konar> {
  final String url = 'https://en.wikipedia.org/wiki/Kunar_Province';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/konarD.jpg'), // Change to your image path
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Kunar (also spelled Konar) is a province located in the northeastern part of Afghanistan. It is bordered by Nangarhar Province to the south, Nuristan Province to the north, Laghman Province to the west, and Pakistan to the east1. The capital of Kunar Province is Asadabad.\n Key Highlights:Geography: Kunar is known for its rugged terrain, with the lower Hindu Kush mountains cutting through the province. The Kunar River flows through the valley, forming the forested Kunar Valley1.Historical Significance: The region has a rich history, having been part of various empires, including the Seleucid Empire and the Maurya Empire. It was also visited by historical figures such as Alexander the Great and Ibn Battuta1.Population: As of 2021, the population of Kunar Province is estimated to be around 508,224.Economy: Agriculture is the main occupation, with crops such as rice, wheat, and corn being grown in the valleys. The region also has some mineral resources, including precious stones like lapis lazuli1.Recent History: Kunar has been a center of conflict and resistance, particularly during the Soviet-Afghan War and more recently with the Taliban.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      _launchURL(url);
                    },
                    child: Text(
                      "More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
            child: Text(
                "About This App\nWelcome to the Top 10 Provinces of Afghanistan app! Discover the rich history, vibrant culture, and breathtaking landscapes of Afghanistan's most significant provinces. Our app is your gateway to exploring the beauty and diversity of this remarkable country.\n\nFeatured Provinces\nKabul: The capital city, a melting pot of history, culture, and modernity.\nHerat: Known as the Pearl of Khorasan, Herat boasts a rich cultural heritage.\nKandahar: The historical heartland and a key economic hub in southern Afghanistan.\nMazar-e-Sharif: Famous for the stunning Blue Mosque and vibrant cultural festivals.\nBadakhshan: Home to the picturesque Wakhan Corridor and high mountain ranges.\nGhazni: A city of historical importance with numerous archaeological sites.\nPanjshir: Famous for its scenic valley and historical resistance movements.\n")),
      ),
    );
  }
}
