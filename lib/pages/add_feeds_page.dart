import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/model/image_model.dart';
import 'package:woofers/pages/feeds_page.dart';
import 'package:woofers/services/feeds/feeds_service.dart';
import 'package:woofers/services/image_service.dart';

class AddFeedsPage extends StatefulWidget {
  const AddFeedsPage({super.key});

  @override
  _AddFeedsPageState createState() => _AddFeedsPageState();
}


class _AddFeedsPageState extends State<AddFeedsPage> {
  String? uploadedImage;
  final _captionController = TextEditingController();
  // UploadImageResponse? uploadedImage = await ImageService().uploadFeeds();

  Future<void> uploadFeeds(File image) async {
    try {
      // const api = '/upload/feeds';
      // final dio = await DioInstance.getInstance();
      UploadImageResponse? pickedFile = await ImageService().uploadFeeds(image);
          // await ImagePicker().pickImage(source: ImageSource.gallery);

      // if (pickedFile != null) {
      //   UploadImageResponse image = UploadImageResponse(pickedFile);
      //   String fileName = image.path.split('/').last;
      //   FormData formData = FormData.fromMap({
      //     'file': await MultipartFile.fromFile(image.path, filename: fileName),
      //   });
      //   var response = await dio.post(api, data: formData);
      //   final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      //   if (errorSchema.errorCode != 'WOF-000') {
      //     return UploadImageResponse.fromJson(
      //         response.data['errorSchema']);
      //   } else {
      //     // String filename = response.data['outputSchema']['fileName'];
      //     // print (filename);
      //     return UploadImageResponse.fromJson(
      //         response.data['outputSchema']);
      //   }
        if (pickedFile != null) {
          setState(() {
          uploadedImage = pickedFile.fileName;
          print(uploadedImage);
        });
        }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        centerTitle: true,
        title: Text(
          "POST NEW FEED",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: addFeeds(),
    );
  }

  Widget addFeeds() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Image(image: AssetImage('assets/dog_picture/dog1.jpg')),
        IconButton(
          onPressed: () async {
            final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
            if (pickedFile != null) {
              File image = File(pickedFile.path);
              uploadFeeds(image);
            }
            // ImageService().uploadFeeds();
          },
          icon: const Icon(Icons.camera)
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: TextField(
            controller: _captionController,
            decoration: const InputDecoration(
              labelText: 'Enter your captions..',
              hintText: 'Type here...',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
            maxLines: null,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 45,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.5);
                  }
                  return null; // Use the component's default.
                },
              ),
            ),
            child: const Text('POST'),
            onPressed: () {
              // ImageService().uploadFeeds();
              // FutureBuilder(future: ImageService().uploadFeeds(), builder: ((context, snapshot) {
              //   uploadedImage = snapshot.data;
              //   return uploadedImage;
              // }));
              final PostFeedsRequest request = PostFeedsRequest(
                caption: _captionController.text,
                image: uploadedImage,
              );

              FeedsService().postFeeds(request).then((value) =>
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const FeedsPage())));
              // FeedsService().postFeeds();
            },

            /*
          oonPressed: () {
            print(_isLike);
            setState(() {
              _isLike = null;
              print(_isLike);
              FeedsService()
                  .likeFeeds(feedsDetail.feedsId ?? '');
            });
          },
          */
          ),
        ),
      ],
    );
  }
}
