import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:iconsax/iconsax.dart';
//1YjP6SFj_UTHUlwtIBd0FZqrSTJ_xoHVmnZTD4f-a6rk
//https://script.google.com/macros/s/AKfycbzi0oumv9PdDXgd0H6xGkkOYYgpDMwxZEOp6cc6xONwlHVlxPWIKFA6FI1xOfIIxQ51/exec
List items = [
  {
    "color": Colors.purple,
    "user": "Daniel Ricardo",
    "msg": "Hi, how are you?",
    "img": "assets/images/user1.jpg",
    "date": "4:32 ",
  },
  {
    "color": Colors.blue,
    "user": "Ann Clarson",
    "msg": "No, i am waiting",
    "img": "assets/images/user2.jpg",
    "date": "4:45 ",
  },
  {
    "color": Colors.pink,
    "user": "Sophie Wirth",
    "msg": "Ok, see you later, ;)",
    "img": "assets/images/user3.jpg",
    "date": "5:12 ",
  },
  {
    "color": Colors.redAccent,
    "user": "Noha clark",
    "msg": "This needs to be discuss",
    "img": "assets/images/user4.jpg",
    "date": "5:23 ",
  },
  {
    "color": Colors.greenAccent,
    "user": "Olivia Wilson",
    "msg": "Yes, of course",
    "img": "assets/images/user5.jpg",
    "date": "6:20 ",
  },
  {
    "color": Colors.purple,
    "user": "Ana Clark jr",
    "msg": "Lets go on friday",
    "img": "assets/images/user6.jpg",
    "date": "6:52 ",
  },
  {
    "color": Colors.tealAccent,
    "user": "Daniel Dev",
    "msg": "Working with next js!",
    "img": "assets/images/user7.jpg",
    "date": "7:30 ",
  },
  {
    "color": Colors.yellowAccent,
    "user": "Gary",
    "msg": "Hey, how are you?",
    "img": "assets/images/user8.jpg",
    "date": "8:30 ",
  },
  {
    "color": Colors.amber,
    "user": "Spencer Thomas",
    "msg": "Yes",
    "img": "assets/images/user1.jpg",
    "date": "8:40 ",
  }
];

class BatoChatScreen extends StatelessWidget {
  const BatoChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Icon(
            Iconsax.add,
            size: 30,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, right: 16, left: 16, bottom: 70),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Icon(Iconsax.menu),
                  ),
                  const Text(
                    "Chats",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: Stack(
                      children: [
                        const Icon(Iconsax.notification),
                        Positioned(
                            right: 0,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[200]!.withOpacity(0.6),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: const Center(
                  child: TextField(
                      decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                    border: InputBorder.none,
                    hintText: "Search...",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(Boxicons.bx_search),
                    ),
                  )),
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: items[index]['color'].withOpacity(0.12),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(18)),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(18)),
                                child: Image.asset(
                                  items[index]['img'],
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                )),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index]['user'],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  items[index]['msg'],
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                              ],
                            )),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  items[index]['date'],
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color:
                                        items[index]['color'].withOpacity(0.4),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                  ),
                                  child: const Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
