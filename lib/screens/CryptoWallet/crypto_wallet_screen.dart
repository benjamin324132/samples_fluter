import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class CryptoWallet extends StatefulWidget {
  const CryptoWallet({Key? key}) : super(key: key);

  @override
  State<CryptoWallet> createState() => _CryptoWalletState();
}

class _CryptoWalletState extends State<CryptoWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c0c0d),
      bottomNavigationBar: Container(
        padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 55,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: Colors.white,
              icon:const Icon(Boxicons.bx_home_alt),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.white,
              icon:const Icon(Boxicons.bx_transfer),
              onPressed: () {},
            ),
            ClipOval(
              child: Material(
                color: Colors.white, // button color
                child: InkWell(
                  splashColor: Colors.blueGrey.withOpacity(0.6), // inkwell color
                  child:const SizedBox(
                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
                  onTap: () {},
                ),
              ),
            ),
            IconButton(
              color: Colors.white,
              icon:const Icon(Boxicons.bx_bar_chart),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.white,
              icon:const Icon(Boxicons.bx_wallet),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32.0),
                  child: const ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.grey,
                      BlendMode.saturation,
                    ),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLRXjEoKDXoveL-JeNEFuutP47uaXuuN2xOxl18_7Q=s68-c-k-c0x00ffffff-no-rj'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                      color: Color(0xffe1e3e4),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Boxicons.bx_bell,
                      color: Color(0xffe1e3e4),
                    ))
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: const [
                  CryptoCard(
                    name: "Bitcoin",
                    shortName: "BTC",
                    amount: 6.09867,
                    icon: Boxicons.bx_bitcoin,
                    color: Color(0xff9CE5F4),
                  ),
                  CryptoCard(
                    name: "Etherum",
                    shortName: "ETH",
                    amount: 3.04,
                    icon: Boxicons.bxl_figma,
                    color: Color(0xffCEB8EC),
                  ),
                  CryptoCard(
                    name: "Instagram",
                    shortName: "IGM",
                    amount: 67.3,
                    icon: Boxicons.bxl_instagram,
                    color: Color(0xffAFA2F6),
                  ),
                  CryptoCard(
                    name: "Adobe",
                    shortName: "ADB",
                    amount: 0.231,
                    icon: Boxicons.bxl_adobe,
                    color: Color(0xffFFFD58),
                  ),
                  CryptoCard(
                    name: "Dribbble",
                    shortName: "DRBL",
                    amount: 6.09867,
                    icon: Boxicons.bxl_dribbble,
                    color: Color(0xffFD7E81),
                  ),
                  CryptoCard(
                    name: "Twitter",
                    shortName: "TWT",
                    amount: 18.0985,
                    icon: Boxicons.bxl_twitter,
                    color: Color(0xff08FFFD),
                  ),
                  CryptoCard(
                    name: "Apple",
                    shortName: "APPL",
                    amount: 6.09867,
                    icon: Boxicons.bxl_apple,
                    color: Color(0xff3080E8),
                  ),
                ])),
            const SizedBox(height: 15),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: const [
                  AvatarWidget(),
                  AvatarWidget(
                    img:
                        "https://yt3.ggpht.com/ytc/AKedOLRNTPMFvM1A4kh0lVeOo1yuIuSTJn1Il8Ut_3e4Cw=s68-c-k-c0x00ffffff-no-rj",
                  ),
                  AvatarWidget(
                    img:
                        "https://yt3.ggpht.com/kUWOfXa4nM33KpIxjCeiBKy7765h3dVfWRAZvF2qlBmAYr073ZJBVBSFsA6LeUgfb4tEVDxn=s68-c-k-c0x00ffffff-no-rj",
                  ),
                  AvatarWidget(),
                  AvatarWidget(
                    img:
                        "https://yt3.ggpht.com/bmEfn6VDNGo0-trYwSF3n5MHZpBTSNe_JfpPnt0wfL7cZeU6CkgvLMs2eUvnZ0v8z-hXIPecoQ=s68-c-k-c0x00ffffff-no-rj",
                  ),
                  AvatarWidget(),
                  AvatarWidget(),
                  AvatarWidget(),
                ])),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children:const [
                    BigImgCard(),
                    BigImgCard(img: "https://images.unsplash.com/photo-1657576989616-c1ce163a28b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",),
                    BigImgCard(img: "https://images.unsplash.com/photo-1657639809496-6a4af16ce1a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",),
                    BigImgCard(img: "https://images.unsplash.com/photo-1657596685829-2357cf3be779?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",),
                    BigImgCard(),

                  ])),
            )
          ],
        ),
      ),
    );
  }
}

class BigImgCard extends StatelessWidget {
  const BigImgCard({
     Key? key,
    this.img =
        "https://images.unsplash.com/photo-1503891450247-ee5f8ec46dc3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.grey,
              BlendMode.saturation,
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .70,
                  decoration: BoxDecoration(
                    borderRadius:
                      const  BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          img),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 25,
                  child: Padding(
                    padding:const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 10),
                    child: Row(
                      children:const [
                        Icon(
                          Icons.visibility,
                          color: Colors.white,
                        ),
                        Text(
                          '6K',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          Icons.movie_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '688',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
               const Positioned(
                  left: 20,
                  bottom: 25,
                  child: Text("Blockchain Life 2022", style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          )),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    this.img =
        'https://yt3.ggpht.com/ytc/AKedOLRXjEoKDXoveL-JeNEFuutP47uaXuuN2xOxl18_7Q=s68-c-k-c0x00ffffff-no-rj',
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(32.0),
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.saturation,
              ),
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(img),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 7,
              child: Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    Key? key,
    required this.shortName,
    required this.name,
    required this.amount,
    required this.icon,
    required this.color,
  }) : super(key: key);
  final String shortName;
  final String name;
  final double amount;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.grey.withOpacity(0.70), BlendMode.color),
          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        shortName,
                        style: const TextStyle(
                            color: Color(0xff3a3f49),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "+6.57%",
                        style: TextStyle(
                            color: Color(0xffe1e3e4),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    amount.toString(),
                    style: const TextStyle(
                        fontSize: 21,
                        color: Color(0xff3a3f49),
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            icon,
                            color: const Color(0xffe1e3e4),
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        shortName,
                        style: const TextStyle(
                            color: Color(0xff3a3f49),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
