import 'package:flutter/material.dart';
import 'package:secret_diary/models/post_model.dart';
import 'package:secret_diary/pages/add_post_page.dart';
import 'package:secret_diary/services/post_api.dart';
import 'package:secret_diary/widgets/post_list_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA786),
        elevation: 0.0,
        title: const Text(
          '콩순이의 일기장',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_outlined,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPostPage(),
                ),
              );
            },
          )
        ],
      ),
      body: FutureBuilder<Post>(
        future: getPost(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/background3.png',
                fit: BoxFit.fitHeight,
                color: Colors.white38,
                colorBlendMode: BlendMode.dstOut,
              ),
              PostListWidget(snapshot: snapshot),
            ],
          );
        },
      ),
    );
  }
}
