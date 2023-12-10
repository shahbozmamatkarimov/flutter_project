import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Programming languages',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Padding(
          padding: const EdgeInsets.only(right: 3, left: 3),
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
                    onTap: () {},
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
                    onTap: () {},
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
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      height: 28,
                      width: 28,
                      child: SvgPicture.asset("assets/icons/bell.svg"),
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: 'Search items',
                              hintStyle: const TextStyle(fontSize: 12.0),
                              filled: true,
                              fillColor: const Color(0xFFFFFFFF),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16),
                              // Adjust the vertical padding as needed for vertical centering
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFFE3E3E3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              height: 1,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              color: Color(0xFFF26522),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset("assets/icons/search.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(
                          0xFFFFFFFF), // Replace with your desired background color
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                          offset: Offset(0, 4),
                          blurRadius: 28.0,
                          spreadRadius: 0.0,
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
                              const Text(
                                "Wallet balance",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    child:
                                        SvgPicture.asset("assets/icons/rp.svg"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Rp1.000.000",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
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
                          child: SvgPicture.asset("assets/icons/line.svg"),
                        ),

                        // Top up balance section
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Top up balance",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    child: SvgPicture.asset(
                                        "assets/icons/topup.svg"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Top up",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: SpecialOffers(),
                  ),
                  const Text("Shop by Category",
                      style: TextStyle(fontSize: 20)),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius here
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset("assets/icons/footwear.svg"),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "FOOTWEAR",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFFF26522)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius here
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset("assets/icons/bags.svg"),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "BAGS",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFFF26522)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius here
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset("assets/icons/apparel.svg"),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "APPAREL",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFFF26522)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text("FOR YOU", style: TextStyle(fontSize: 20)),
                  const SizedBox(
                    height: 16,
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
                                height: 200,
                                width: 165,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                "Apparel",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Rp250.000",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFF26522)),
                                  ),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      height: 24,
                                      width: 24,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 165,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                "Apparel",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Rp250.000",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFF26522)),
                                  ),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      height: 24,
                                      width: 24,
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
                  const SizedBox(height: 16,),
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
                                height: 200,
                                width: 165,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                "Apparel",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Rp250.000",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFF26522)),
                                  ),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      height: 24,
                                      width: 24,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 165,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/pict.png",
                                    fit: BoxFit.cover
                                    // fit: BoxFit.cover,
                                    ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "AIR LEGGING SPORT",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                "Apparel",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Rp250.000",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFF26522)),
                                  ),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      height: 24,
                                      width: 24,
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
                  const SizedBox(height: 60,),
                ],
              ),
            ),
          ),
        ));
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
    return GestureDetector(
        onTap: press,
        child: Row(
          children: [
            SizedBox(
              width: 285,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 8,
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
