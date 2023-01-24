import 'package:flutter/material.dart';
import 'package:wallpaperapp/views/widgets/CustomAppBar.dart';
import 'package:wallpaperapp/views/widgets/SearchBar.dart';

import '../widgets/catBlock.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: CustomAppBar(
            word1: "Wallpaper",
            word2: "subham",
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      "https://images.pexels.com/photos/7046979/pexels-photo-7046979.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black38,
                  ),
                  Positioned(
                    left: 150,
                    top: 50,
                    child: Column(
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Mountains",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 400,
                      crossAxisCount: 2,
                      crossAxisSpacing: 13,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 16,
                    itemBuilder: ((context, index) => Container(
                          height: 700,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                                height: 800,
                                width: 50,
                                fit: BoxFit.cover,
                                "https://images.pexels.com/photos/1337247/pexels-photo-1337247.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ))),
              ),
            ],
          ),
        ));
  }
}
