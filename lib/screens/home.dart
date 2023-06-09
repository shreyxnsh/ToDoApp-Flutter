import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';
import '../widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: Text(
                      'All ToDos',
                      style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,),
                    ),
                  ),
                  ToDoItem(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search, color: tdBlack, size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
                maxHeight: 20,
                minWidth: 25),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(
                color: tdGrey
            )

        ),
      ),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
      title: Row(
        // to split menu icon and profile icon on both ends
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // icon properties
          Icon(Icons.menu,
            color: tdBlack,
            size: 30
          ),
          // images in a container
          Container(
            height: 55,
            width: 55,
            child: ClipRRect(child: Image.asset('images/avatar.png')
            ),
          )
        ],
      ),
    );
  }
}
