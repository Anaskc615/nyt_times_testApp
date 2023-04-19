import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:test_project/domain/home/models/home/home_list/result.dart';

import '../../components.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static const detailPageRoute = '/detailsPageRoute';

  //sorry there are more option for code extraction when look to ui part .

  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final Result itemDetails = routes['item'];
    print(itemDetails);
    return Scaffold(
      appBar: AppBar(title: Text('Title')),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 240,
              child: Image.network(
                itemDetails.multimedia != null
                    ? itemDetails.multimedia![0].url.toString()
                    : "",
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
              height: 8,
            ),
            Text(itemDetails.title.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 8,
            ),
            Text(itemDetails.abstract.toString(),
                style: TextStyle(color: Colors.grey.shade800)),
            const SizedBox(
              height: 8,
            ),
            Text("author", style: TextStyle(color: Colors.grey.shade800)),
            const SizedBox(
              height: 8,
            ),
            InkWell(
                onTap: () async {
                  launchURL(itemDetails.url.toString());
                },
                child: Text("See more", style: TextStyle(color: Colors.blue)))
          ],
        ),
      )),
    );
  }
}
