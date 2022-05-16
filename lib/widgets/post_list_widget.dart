import 'package:flutter/material.dart';
import 'package:secret_diary/models/post_model.dart';
import 'package:secret_diary/pages/post_detail_page.dart';

class PostListWidget extends StatelessWidget {
  final AsyncSnapshot<Post> snapshot;

  const PostListWidget({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: snapshot.data!.posts!.length,
      itemBuilder: (context, index) {
        var data = snapshot.data!.posts![index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostDetailPage(data: data),
                ),
              );
            },
            child: Container(
              height: 80,
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFEE3D9),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 6,
                  color: const Color(0xFFEE9E05),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.title!,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(data.date!),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
