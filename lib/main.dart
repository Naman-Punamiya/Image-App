import 'package:flutter/material.dart';

void main() {
  runApp(const ImageFunc());
}

class ImageFunc extends StatelessWidget {
  const ImageFunc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeImage(),
    );
  }
}

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //This is main PlaceHolder/Container for holding full project
      appBar: AppBar(
        title: Text(
          "Image App", //This is the title of the HomeScreen
          style: TextStyle(color: Colors.white,fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column( //We used Column To set Two Widget(Images) in the single Screen
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding( //Padding is to provide the space to image from all sides
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border( //We have given border to all the sides using the following function
                      right: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside),
                      bottom: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside),
                      top: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside),
                      left: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside)),
                  boxShadow: [
                    BoxShadow( // Shadow can be made using the boxshadow function
                        color: Colors.black, blurRadius: 5, spreadRadius: 5)
                  ]),
              child: Image.asset( //Using this we have shown the image which are in the assets
                "assets/car.jpg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 50,),
          Padding( //Padding is used to provide the space to image from all sides
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border( //We have given border to all the sides using the following function
                      right: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside),
                      bottom: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside),
                      top: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside),
                      left: BorderSide(
                          color: Colors.black,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignInside)),
                  boxShadow: [
                    BoxShadow( // Shadow can be made using the boxshadow function
                        color: Colors.black, blurRadius: 5, spreadRadius: 5)
                  ]),
              child: Image.network( //Using this we have shown the image from the internet
                  "https://www.autoblog.com/.image/c_fill,g_faces:center/MjEyMzI3MTA1NzA5NDgzNjQ4/koenigsegg-agera-rs.jpg",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill, 
                  loadingBuilder: (BuildContext context,
                      Widget child, ImageChunkEvent? loadingProgress) { //This is to show the loading before we get the image from internet
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              }, errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) { //This is to show the error if any occur while getting the image from internet
                return const Text('Error',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
