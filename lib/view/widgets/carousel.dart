import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../my_colors.dart';

class Carousel extends StatefulWidget {
  const Carousel({required this.paths, super.key});
  final List<String> paths;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late CarouselController carouselController;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      width: 800,
      child: Stack(
        children: [
          CarouselSlider.builder(
              carouselController: carouselController,
              itemCount: widget.paths.length,
              itemBuilder: (context, index, pageViewIndex) {
                return SizedBox(
                  child: Image.asset(
                    widget.paths[index],
                    height: 80,
                  ),
                );
              },
              options: CarouselOptions(
                height: 800,
                enlargeCenterPage: true,
                enlargeFactor: 0.4,
                viewportFraction: 0.5,
              )),
          Row(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  MyColors.accentColor,
                  MyColors.accentColor.withOpacity(0),
                ])),
                child: Center(
                    child: IconButton(
                  onPressed: () {
                    carouselController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  iconSize: 80,
                  icon: const Icon(Icons.arrow_left),
                  color: MyColors.darkColor,
                )),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  MyColors.accentColor.withOpacity(0),
                  MyColors.accentColor,
                ])),
                child: Center(
                    child: IconButton(
                  onPressed: () {
                    carouselController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  iconSize: 80,
                  icon: const Icon(Icons.arrow_right),
                  color: MyColors.darkColor,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
