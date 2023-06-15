import 'package:flutter/material.dart';

class filter extends StatefulWidget {
  const filter({Key? key}) : super(key: key);

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  List item = [
    {
      'icon': Icons.delivery_dining,
      'name': 'Fast Delivery',
    },
    {
      'icon': Icons.location_on,
      'name': 'Stores in my area',
    },
    {
      'icon': Icons.library_books,
      'name': 'Previous Orders',
    },
    {
      'icon': Icons.star_border,
      'name': 'Popular Orders',
    },
  ];

  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: List.generate(
                item.length,
                (index) => Column(
                  children: [
                    ListTile(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.green.shade50,
                        child: Icon(
                          item[index]['icon'],
                          color: Colors.green,
                          size: 25,
                        ),
                      ),
                      title: Text(
                        item[index]['name'],
                        textScaleFactor: 1.2,
                      ),
                      trailing: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              selected == index ? Colors.green : Colors.white,
                          border: Border.all(
                            color:
                                selected == index ? Colors.white : Colors.grey,
                          ),
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Divider(
                      thickness: 0.5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
