import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants.dart';
import 'confirm_screen.dart';

class AddVideoScreen extends StatelessWidget {
  const AddVideoScreen({Key? key}) : super(key: key);

  pickVideo(ImageSource src, BuildContext context) async {
    final video = await ImagePicker().pickVideo(source: src);
    if (video != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ConfirmScreen(
            videoFile: File(video.path),
            videoPath: video.path,
          ),
        ),
      );
    }
  }

  showOptionsDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          SimpleDialogOption(
            onPressed: () => pickVideo(ImageSource.gallery, context),
            child: Row(
              children: const [
                Icon(Icons.image),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    'Gallery',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () => pickVideo(ImageSource.camera, context),
            child: Row(
              children: const [
                Icon(Icons.camera_alt),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    'Camera',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.of(context).pop(),
            child: Row(
              children: const [
                Icon(Icons.cancel),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
             height:MediaQuery.of(context).size.height,child: Image.network("https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80",fit: BoxFit.fill,)),
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/5),
                child: Container(height:MediaQuery.of(context).size.height/2,width:MediaQuery.of(context).size.width,color: Colors.black.withOpacity(0.5) ,
                  child: Center(child: Text("Now Earn Money on Uploading video on this app",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),),
              ),
              SizedBox(height: 90,),
              Center(
                child: InkWell(
                  onTap: () => showOptionsDialog(context),
                  child: Container(
                    width: 190,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white)),
                    child: const Center(
                      child: Text(
                        'Add Video',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
