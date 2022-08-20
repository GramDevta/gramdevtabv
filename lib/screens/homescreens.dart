import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 229, 201, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'GramDevta',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Enything",
                        border: InputBorder.none,
                        icon: Icon(Icons.search)),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                    'https://images.newindianexpress.com/uploads/user/imagelibrary/2021/11/20/w900X450/farmer_EPS45.jpg?w=900&dpr=1.0'),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.amber,
                      ),
                      child: const Icon(
                        Icons.hourglass_empty_sharp,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.amber,
                      ),
                      child: const Icon(
                        Icons.chat,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.amber,
                      ),
                      child: const Icon(
                        Icons.app_blocking_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.amber,
                      ),
                      child: const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            "https://kisansamadhan.com/wp-content/uploads/2020/01/anudan-par-garma-beej-avedan.jpg"),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "बीज",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            "https://kisansamadhan.com/wp-content/uploads/2020/01/anudan-par-garma-beej-avedan.jpg"),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "बीज",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            "https://kisansamadhan.com/wp-content/uploads/2020/01/anudan-par-garma-beej-avedan.jpg"),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "बीज",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            "https://kisansamadhan.com/wp-content/uploads/2020/01/anudan-par-garma-beej-avedan.jpg"),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "बीज",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
