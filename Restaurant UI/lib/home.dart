import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:snackui/recommended.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {

    
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu_sharp, size: 50, color: Colors.black),
                    Container(
                      padding: const EdgeInsets.only(left: 2, top: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQClB3_IDvWfG347xdB38Vn7jVUri6jGLio2HkkIGUtaGYxCSi9ROdsw7Q3AA_n6O3KSXc&usqp=CAU'),
                      ),
                    ),
                  ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SEARCH FOR',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Text('FOOD',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for food',
                    hintStyle: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    fillColor: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('RECOMMENDED',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 220,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                bulildListView(
                    'Burger',
                    'https://st2.depositphotos.com/1472772/7322/i/950/depositphotos_73222071-stock-photo-hamburger-3d-illustration.jpg',
                    '249',
                    Colors.pink.shade100,
                    Colors.pink.shade500),
                bulildListView(
                    'French fries',
                    'https://image.shutterstock.com/image-vector/fries-emoji-vector-260nw-1274677318.jpg',
                    '99',
                    Colors.blue.shade100,
                    Colors.blue.shade500),
                bulildListView(
                    'Burger',
                    'https://a-static.mlcdn.com.br/574x431/rosquinha-chocolate-cofre-porta-moeda-13-5cm-tascoinport/infinitypresentes2/cofrosqcho13/017835f3d9f04e961c856dc64449da38.jpg',
                    '99',
                    Colors.orange.shade100,
                    Colors.orange.shade500),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
unselectedLabelStyle: GoogleFonts.notoSans(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey)),
labelStyle: GoogleFonts.notoSans(textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 0.1,
              tabs: const [
                
                Tab(child: Text('Popular')),
                Tab(child: Text('Featured')),
                 Tab(child: Text('Combo')),
                 Tab(child: Text('Favorites')),
              ],
            ),
            SizedBox(
            height: 350,
              
              child: TabBarView(
                controller: _tabController,
                children: const [
                  FoodItemList(),
                    FoodItemList(),
                      FoodItemList(),
                        FoodItemList(),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
    }

class FoodItemList extends StatefulWidget {
  const FoodItemList({ Key? key }) : super(key: key);

  @override
  _FoodItemListState createState() => _FoodItemListState();
}

class _FoodItemListState extends State<FoodItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child:ListView(
        children: [
          itemList('Delicious Hotdog', '99', '149', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8tXx9aC3gT_VJTaQrP-1EgUr57Tq6cDIZ-1IC9jaqpd1xF58J00_uOXueh1yanCdjFQk&usqp=CAU',Colors.blue.shade100,),
          itemList('Cheese Pizza', '149', '199', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPZm5cryxiUccUj-oz9sW2wj95hoUEbvXNwjiBD7KQAlX4ikS_x_KDeuO3ITen2Xx47o0&usqp=CAU', Colors.pink.shade100, ),
          itemList('Taco', '149', '199', 'https://pbs.twimg.com/profile_images/631869040986755072/sfe5RTlA_400x400.png', Colors.pink.shade100, ),
      
        ],
      ),
      
    );
  }

  Row itemList(
    String foodName, String price , String oldPrice, String image, Color color,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image:  DecorationImage(
                        image: NetworkImage(
                            image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                )
              ),
              
            
           Column(
             children: [
               Text(foodName,style: GoogleFonts.notoSans(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),),
               SmoothStarRating(
                 allowHalfRating: true,
                 
                 filledIconData: Icons.star,
                 halfFilledIconData: Icons.star_half,
                 defaultIconData: Icons.star_border,
                 size: 25,
                  starCount: 5,
                 borderColor: Colors.grey,
                 spacing: 0,
                  color: Colors.yellow,
                  rating: 4,
                 
               ),
                Row(
                  children: [
                    Text('₹ '+ price ,style: GoogleFonts.notoSans(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),),
                    const SizedBox(width: 10,),
                     Text('₹ '+ oldPrice ,style: GoogleFonts.notoSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey,decoration: TextDecoration.lineThrough)),),

                  ],
                ),
             ],
           ),
           FloatingActionButton(onPressed: (){
            
            },
           
           backgroundColor: Colors.pink.shade500,
            child: const Icon(Icons.add,color: Colors.white,),
            ),
           
      ],
    );
    
  }
}


