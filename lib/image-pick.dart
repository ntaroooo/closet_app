import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerView extends StatefulWidget {
  @override
  State createState() {
    return ImagePickerViewState();
  }
}

class ImagePickerViewState extends State {
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ImagePicker'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (imageFile == null)
                  ? Icon(
                      Icons.camera_alt,
                      size: 40,)
                  : Image.file(
                imageFile,
                height: 100.0,
                width: 100.0,
              ),
              Container(
                child:  Padding(
                    padding: const EdgeInsets.only(top: 50.0, right: 50.0, bottom: 30.0, left: 50.0),
                    child: Container(
                      child: Center(
                        child: InkWell(
                          child: Text('撮影'),
                          onTap: (){
                            _getImageFromDevice(ImageSource.camera);

                          },
                        ),
                      ),
                      height: 75,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Color(0xffa1a1a1),
                              offset: Offset(
                                5,
                                5,
                              ),
                            ),
                            BoxShadow(
                              blurRadius: 10,
                              color: Color(0xffffffff),
                              offset: Offset(
                                -5,
                                -5,
                              ),
                            ),
                          ],
                          gradient: LinearGradient(
                            stops: [0, 1],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors:
                            [Color(0xffffffff), Color(0xffe6e6e6)],
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              )
                          )
                      ),




                    )
                ),


              ),
              Container(
                child:  Padding(
                    padding: const EdgeInsets.only(top: 50.0, right: 50.0, bottom: 30.0, left: 50.0),
                    child: Container(
                      child: Center(
                        child: InkWell(
                          child: Text('ギャラリー'),
                          onTap: (){
                            _getImageFromDevice(ImageSource.gallery);
                          },
                        ),
                      ),
                      height: 75,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Color(0xffa1a1a1),
                              offset: Offset(
                                5,
                                5,
                              ),
                            ),
                            BoxShadow(
                              blurRadius: 10,
                              color: Color(0xffffffff),
                              offset: Offset(
                                -5,
                                -5,
                              ),
                            ),
                          ],
                          gradient: LinearGradient(
                            stops: [0, 1],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors:
                            [Color(0xffffffff), Color(0xffe6e6e6)],
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              )
                          )
                      ),




                    )
                ),


              ),
            ],
          ),
        ));
  }

// カメラまたはライブラリから画像を取得
  void _getImageFromDevice(ImageSource source) async {
    // 撮影/選択したFileが返ってくる
    var imageFile = await ImagePicker.pickImage(source: source);
    // Androidで撮影せずに閉じた場合はnullになる
    if (imageFile == null) {
      return;
    }
    setState(() {
      this.imageFile = imageFile;
    });
  }
}