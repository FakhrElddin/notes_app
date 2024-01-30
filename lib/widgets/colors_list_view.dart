import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 34,
      ),
    ) 
        : CircleAvatar(
      backgroundColor: color,
      radius: 38,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff008BF8),
    Color(0xffE5D352),
    Color(0xff04E762),
    Color(0xffF5B700),
    Color(0xffDC0073),
    Color(0xff89FC00),
    Color(0xffFC1717),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          );
        },
        itemCount: colors.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
      ),
    );
  }
}