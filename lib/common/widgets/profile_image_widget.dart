// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/constants/image_src_constants.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    Key? key,
    this.image,
    this.size,
    this.showCameraIcon = false,
  }) : super(key: key);

  final String? image;
  final double? size;
  final bool? showCameraIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          SizedBox(
            width: size,
            height: size,
            child: CircleAvatar(
              child: image != null
                  ? CachedNetworkImage(
                      imageUrl: image!,
                      placeholder: (context, url) => Image.asset(
                        ImageSrcConstants.user,
                        height: 80,
                        color: Colors.white,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    )
                  : Image.asset(
                      ImageSrcConstants.user,
                      height: 80,
                      color: Colors.white,
                    ),
            ),
          ),
          if (showCameraIcon!)
            Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(200),
                ),
                child: const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
              ),
            )
        ],
      ),
    );
  }
}
