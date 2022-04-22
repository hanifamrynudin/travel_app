import 'package:flutter/material.dart';
import 'package:travel_app/models/buddies.dart';
import 'package:travel_app/models/places.dart';
import 'package:travel_app/utils/assets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          background(),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                tabbar(),
                const SizedBox(height: 40),
                header(),
                const SizedBox(height: 40),
                search(),
                const SizedBox(height: 80),
                titleList('Saved Places'),
                const SizedBox(height: 20),
                savedPlaces(),
                const SizedBox(height: 30),
                titleList('Travel Buddies'),
                const SizedBox(height: 20),
                travelBuddies(),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

Widget travelBuddies() {
  return SizedBox(
    height: 210,
    child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff828282)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff828282),
            size: 14,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 135),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Assets.travelBuddies.length,
              itemBuilder: (context, index) {
                Buddies travelBuddies = Assets.travelBuddies[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 25),
                            width: 140,
                            height: 185,
                            decoration: const BoxDecoration(
                                color: Color(0xff00664F),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(100),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Name',
                                          style: Assets.smallCaption
                                              .copyWith(color: Colors.white)),
                                      Text(
                                        travelBuddies.name,
                                        style: Assets.body
                                            .copyWith(color: Colors.white),
                                      ),
                                      Text('Age',
                                          style: Assets.smallCaption
                                              .copyWith(color: Colors.white)),
                                      Text(
                                        travelBuddies.age.toString(),
                                        style: Assets.body
                                            .copyWith(color: Colors.white),
                                      ),
                                      Text('Status',
                                          style: Assets.smallCaption
                                              .copyWith(color: Colors.white)),
                                      Text(
                                        travelBuddies.status,
                                        style: Assets.body
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 60),
                              child: Image.asset(
                                travelBuddies.image,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      ],
    ),
  );
}

Widget savedPlaces() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Expanded(
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 4 / 3,
          ),
          itemCount: Assets.savedPlace.length,
          itemBuilder: (context, index) {
            Places places = Assets.savedPlace[index];
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(places.image), fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  places.name,
                  style: Assets.caption.copyWith(color: Colors.white),
                ),
              ),
            );
          }),
    ),
  );
}

Widget titleList(String title) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: Assets.body.copyWith(color: const Color(0xff545454)),
      ));
}

Widget search() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: const Expanded(
        child: TextField(
          style: Assets.caption,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: Assets.smallCaption,
            prefixIcon: Icon(Icons.search_outlined, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Widget header() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome,', style: Assets.heading1.copyWith(color: Colors.white)),
        Text('Charlie',
            style: Assets.heading3.copyWith(color: const Color(0xffFEC242))),
      ],
    ),
  );
}

Widget tabbar() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Icon(
          Icons.notifications,
          color: Colors.white,
        ),
        SizedBox(
          width: 30,
        ),
        Icon(Icons.menu_rounded, color: Colors.white),
      ],
    ),
  );
}

Widget background() {
  return Container(
    height: 334,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        color: Color(0xff2E2A72),
        image: DecorationImage(image: AssetImage(Assets.header))),
  );
}
