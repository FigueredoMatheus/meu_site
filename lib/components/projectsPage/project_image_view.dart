import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImagesView extends StatefulWidget {
  final PageController pageController;
  final List<String> imagesList;

  ImagesView({
    Key? key,
    required this.imagesList,
  })  : pageController = PageController(initialPage: 0),
        super(key: key);

  @override
  State<ImagesView> createState() => _ImagesViewState();
}

class _ImagesViewState extends State<ImagesView> {
  late int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.9),
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Theme.of(context).primaryColor.withOpacity(0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                '${index + 1}/${widget.imagesList.length}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            IconButton(
              onPressed: () => widget.pageController.previousPage(
                duration: const Duration(microseconds: 100),
                curve: Curves.bounceIn,
              ),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: Colors.white,
              iconSize: 25,
            ),
            IconButton(
              onPressed: () => widget.pageController.nextPage(
                duration: const Duration(microseconds: 100),
                curve: Curves.bounceIn,
              ),
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              color: Colors.white,
              iconSize: 25,
            )
          ],
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor.withOpacity(0.9),
        padding: const EdgeInsets.all(30),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            PhotoViewGallery.builder(
              itemCount: widget.imagesList.length,
              pageController: widget.pageController,
              onPageChanged: (index) => setState(() => this.index = index),
              enableRotation: false,
              backgroundDecoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.05),
              ),
              builder: (context, index) {
                String imagePath = widget.imagesList[index];

                return PhotoViewGalleryPageOptions(
                  imageProvider: AssetImage(imagePath),
                  minScale: PhotoViewComputedScale.contained,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
