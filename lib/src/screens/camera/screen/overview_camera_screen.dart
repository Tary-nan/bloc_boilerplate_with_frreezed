import 'package:flutter/material.dart';

class OverviewCameraScreen extends StatelessWidget {
  const OverviewCameraScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            'Mon Compte',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'BAARS'),
          ),
        ),
        body: Column(
          children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text('Photo de profil', style: TextStyle(
                            fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                        ),),
                        Icon(Icons.photo_camera,)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    // CONATINER IMAGE ARONDIR LORS DE L'UPLOAD
                    Container(
                      height: MediaQuery.of(context).size.width / 2 ,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.person, color: Colors.white, size: 120,),
                    )
                  ],
                ),
                
              ),
            Expanded(
              flex: 1,
              child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                   OutlinedButton(
                    onPressed: () {  },
                    child: const Text('Choisir l\' Image'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                 // showImage(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // (false) ?
                  //  OutlineButton(
                  //   onPressed: ()async{
                  //     // await startUpload();
                  //     /*if(_loadingEnd){
                  //           final snackBar = SnackBar(
                  //             behavior: SnackBarBehavior.fixed,
                  //             backgroundColor: Styles.secondaryColor,
                  //             content: Text('Update profile successfuly'),
                  //           );
                  //         _scaffoldKey.currentState.showSnackBar(snackBar);
                  //     }*/
                  //   },
                  //   child: Text('Upload l\'Image'),
                  // ): Container(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'status',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Styles.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
        )),
      ],
    ),
    );
  }
}


class Styles {
  static double formRadius = 20;
  static double checkRadius = 5;
  static double hzPadding = 37;
  static double vtFormPadding = 18;

  static Color primaryColor = const Color.fromRGBO(250, 112, 53, 1);
  static Color secondaryColor = const Color(0xff007b80);
  static Color baseColor = const Color(0xff4a4a4a);

  static Color lightGrayColor = const Color(0xffe6e6e6);
  static Color grayColor = const Color(0xff505050);
  static Color darkGrayColor = const Color(0xff2d2d2d);

  static Color helperColor = const Color(0xff787878);
  static Color optionalColor = const Color(0xffA7A7A7);
  static Color errorColor = const Color(0xffea6060);

  static final BoxDecoration checkBoxDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
    border: Border.all(color: const Color(0xffd4d4d4)),
    borderRadius: const BorderRadius.all(Radius.circular(3), 
    ),
  );

  static TextStyle barlow = const TextStyle(fontFamily: "Barlow");
  static TextStyle baloo = const TextStyle(fontFamily: "Baloo");

  static TextStyle appTitle1 = barlow.copyWith(
    color: Styles.primaryColor,
    fontWeight: FontWeight.w800,
    fontSize: 8,
    letterSpacing: 1.95,
  );

  static const accanceColor =  Color.fromRGBO(17, 122, 139, 1);

  static TextStyle appTitle2 = baloo.copyWith(
      color: Styles.primaryColor,
      fontSize: 32,
      letterSpacing: -1.08,
      height: 1.1,
      decoration: TextDecoration.underline,
      decorationThickness: 1.2);


}