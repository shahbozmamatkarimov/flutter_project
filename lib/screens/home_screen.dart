import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_languages/utils.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            title: Container(
              padding: EdgeInsets.fromLTRB(12 * fem, 12, 12 * fem, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    child: SvgPicture.asset("assets/icons/logo.svg"),
                  ),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const Favorites()),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          height: 28,
                          width: 28,
                          child: SvgPicture.asset("assets/icons/heart.svg"),
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const Carts()),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          height: 28,
                          width: 28,
                          child: SvgPicture.asset("assets/icons/cart.svg"),
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const Messages()),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          height: 28,
                          width: 28,
                          child: SvgPicture.asset("assets/icons/bell.svg"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24 * fem),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40 * fem,
                    margin: EdgeInsets.symmetric(
                      vertical: 16 * fem,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: 'Search items',
                              hintStyle: SafeGoogleFont(
                                'Asap',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff6c6c6c),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFFFFFFF),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0 * fem, horizontal: 16 * fem),
                              // Adjust the vertical padding as needed for vertical centering
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10 * fem),
                                borderSide: const BorderSide(
                                  color: Color(0xFFE3E3E3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 12 * fem,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(50 * fem),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10 * fem),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF26522),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10 * fem)),
                            ),
                            height: 32 * fem,
                            width: 32 * fem,
                            child: SvgPicture.asset(
                              "assets/icons/search.svg",
                              // heightr: 18 * fem,
                              // width: 18 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10 * fem),
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 16 * fem, 66.5 * fem, 16 * fem),
                    height: 75 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x0c000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 14 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Wallet balance section
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wallet balance',
                                style: SafeGoogleFont(
                                  'Asap',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1475 * ffem / fem,
                                  color: const Color(0xff262626),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      "assets/icons/rp.svg",
                                      width: 18 * fem,
                                      height: 18 * fem,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Rp1.000.000",
                                    style: SafeGoogleFont(
                                      'Asap',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1475 * ffem / fem,
                                      color: const Color(0xff262626),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Divider
                        SizedBox(
                          width: 40,
                          child: SvgPicture.asset(
                            "assets/icons/line.svg",
                            width: 0 * fem,
                            height: 46 * fem,
                          ),
                        ),

                        // Top up balance section
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Top up balance",
                                style: SafeGoogleFont(
                                  'Asap',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1475 * ffem / fem,
                                  color: const Color(0xff262626),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      "assets/icons/topup.svg",
                                      width: 18 * fem,
                                      height: 18 * fem,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Top up",
                                    style: SafeGoogleFont(
                                      'Asap',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1475 * ffem / fem,
                                      color: const Color(0xff262626),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24 * fem),
                    child: const SpecialOffers(),
                  ),
                  Container(
                    // shopbycategoryqjz (14:3122)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 16 * fem),
                    child: Text(
                      'Shop by Category',
                      style: SafeGoogleFont(
                        'Bebas Neue',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2 * ffem / fem,
                        color: const Color(0xff262626),
                      ),
                    ),
                  ),
                  SizedBox(
                    // containermNk (14:3113)
                    width: double.infinity,
                    height: 103 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // footwearuUx (14:3106)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              22 * fem, 20 * fem, 21.33 * fem, 19 * fem),
                          width: 108.33 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Container(
                            // frame11271Xz (21:1547)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 2.67 * fem, 0 * fem, 0 * fem),
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // framewgY (21:1541)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10.67 * fem),
                                  width: 24 * fem,
                                  height: 26.67 * fem,
                                  child: SvgPicture.asset(
                                    "assets/icons/footwear.svg",
                                    width: 24 * fem,
                                    height: 26.67 * fem,
                                  ),
                                ),
                                Text(
                                  // footwear3zU (21:1546)
                                  'fOOTWEAR',
                                  style: SafeGoogleFont(
                                    'Bebas Neue',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2 * ffem / fem,
                                    color: const Color(0xfff26522),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // bagsBqn (14:3114)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              37.67 * fem, 20 * fem, 38.67 * fem, 19 * fem),
                          width: 108.33 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Container(
                            // frame1126JQc (21:1535)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 2.67 * fem, 0 * fem, 0 * fem),
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frameqQY (21:1526)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10.67 * fem),
                                  width: 21.33 * fem,
                                  height: 26.67 * fem,
                                  child: SvgPicture.asset(
                                    "assets/icons/bags.svg",
                                    width: 24 * fem,
                                    height: 26.67 * fem,
                                  ),
                                ),
                                Text(
                                  // bagswyN (21:1534)
                                  'Bags',
                                  style: SafeGoogleFont(
                                    'Bebas Neue',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2 * ffem / fem,
                                    color: const Color(0xfff26522),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // apparelJ3E (14:3115)
                          padding: EdgeInsets.fromLTRB(
                              25 * fem, 20 * fem, 25 * fem, 19 * fem),
                          width: 108.33 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Container(
                            // frame1128d5W (21:1551)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 2.67 * fem, 0 * fem, 0 * fem),
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // framemBi (21:1548)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10.67 * fem),
                                  width: 25.99 * fem,
                                  height: 26.67 * fem,
                                  child: SvgPicture.asset(
                                    "assets/icons/apparel.svg",
                                    width: 24 * fem,
                                    height: 26.67 * fem,
                                  ),
                                ),
                                Text(
                                  // apparelHfr (21:1550)
                                  'Apparel',
                                  style: SafeGoogleFont(
                                    'Bebas Neue',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2 * ffem / fem,
                                    color: const Color(0xfff26522),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32 * fem,
                  ),
                  Text(
                    "FOR YOU",
                    style: SafeGoogleFont(
                      'Bebas Neue',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2 * ffem / fem,
                      color: const Color(0xff262626),
                    ),
                  ),
                  SizedBox(
                    height: 16 * fem,
                  ),
                  SizedBox(
                    // width: 200,
                    child: GestureDetector(
                      onTap: () => {},
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200 * fem,
                                width: 165 * fem,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              SizedBox(height: 8 * fem),
                              Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: SafeGoogleFont(
                                  'Bebas Neue',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2 * ffem / fem,
                                  color: Color(0xff262626),
                                ),
                              ),
                              Text(
                                "Apparel",
                                style: SafeGoogleFont(
                                  'Asap',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1475 * ffem / fem,
                                  color: Color(0xff4d4d4d),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp250.000",
                                    style: SafeGoogleFont(
                                      'Asap',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1475 * ffem / fem,
                                      color: Color(0xfff26522),
                                    ),
                                  ),
                                  InkWell(
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(6 * fem),
                                      height: 24 * fem,
                                      width: 24 * fem,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8 * fem,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200 * fem,
                                width: 165 * fem,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              SizedBox(height: 8 * fem),
                              Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: SafeGoogleFont(
                                  'Bebas Neue',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2 * ffem / fem,
                                  color: Color(0xff262626),
                                ),
                              ),
                              Text(
                                "Apparel",
                                style: SafeGoogleFont(
                                  'Asap',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1475 * ffem / fem,
                                  color: Color(0xff4d4d4d),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp250.000",
                                    style: SafeGoogleFont(
                                      'Asap',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1475 * ffem / fem,
                                      color: Color(0xfff26522),
                                    ),
                                  ),
                                  InkWell(
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(6 * fem),
                                      height: 24 * fem,
                                      width: 24 * fem,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16 * fem,
                  ),
                  SizedBox(
                    // width: 200,
                    child: GestureDetector(
                      onTap: () => {},
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200 * fem,
                                width: 165 * fem,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              SizedBox(height: 8 * fem),
                              Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: SafeGoogleFont(
                                  'Bebas Neue',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2 * ffem / fem,
                                  color: Color(0xff262626),
                                ),
                              ),
                              Text(
                                "Apparel",
                                style: SafeGoogleFont(
                                  'Asap',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1475 * ffem / fem,
                                  color: Color(0xff4d4d4d),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp250.000",
                                    style: SafeGoogleFont(
                                      'Asap',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1475 * ffem / fem,
                                      color: Color(0xfff26522),
                                    ),
                                  ),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      height: 24 * fem,
                                      width: 24 * fem,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8 * fem,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200 * fem,
                                width: 165 * fem,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              SizedBox(height: 8 * fem),
                              Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: SafeGoogleFont(
                                  'Bebas Neue',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2 * ffem / fem,
                                  color: Color(0xff262626),
                                ),
                              ),
                              Text(
                                "Apparel",
                                style: SafeGoogleFont(
                                  'Asap',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1475 * ffem / fem,
                                  color: Color(0xff4d4d4d),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp250.000",
                                    style: SafeGoogleFont(
                                      'Asap',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1475 * ffem / fem,
                                      color: Color(0xfff26522),
                                    ),
                                  ),
                                  InkWell(
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(6 * fem),
                                      height: 24 * fem,
                                      width: 24 * fem,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60 * fem,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class Favorites extends StatelessWidget {
  const Favorites({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: const Center(
        child: Text("Favorites"),
      ),
    );
  }
}

class Carts extends StatelessWidget {
  const Carts({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carts"),
      ),
      body: const Center(
        child: Text("Carts"),
      ),
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
      ),
      body: const Center(
        child: Text("Messages"),
      ),
    );
  }
}

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/banner.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/banner.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return GestureDetector(
        onTap: press,
        child: Row(
          children: [
            SizedBox(
              width: 285 * fem,
              height: 100 * fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10 * fem),
                child: Stack(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: 285 * fem,
                      height: 100 * fem,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 8 * fem,
            ),
          ],
        ));
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: press,
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: const Text("See more"),
        ),
      ],
    );
  }
}
