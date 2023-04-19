import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_project/domain/home/models/home/home_list/home_list.dart';
import 'package:test_project/domain/home/models/home/home_list/result.dart';

class SingleGridView extends StatelessWidget {
  final Result item;
  SingleGridView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Colors.grey.shade300),
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 90,
            child: Image.network(
              item.multimedia != null ? item.multimedia![0].url.toString() : "",
              fit: BoxFit.fill,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ));
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                    child: Icon(
                  Icons.wifi,
                  color: Colors.white,
                ));
              },
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6,
              ),
              Text(item.title.toString(),
                  style: TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 12,
              ),
              Text("Author ${item.byline}",
                  style: TextStyle(color: Colors.grey.shade800))
            ],
          )
        ],
      ),
    );
  }
}
