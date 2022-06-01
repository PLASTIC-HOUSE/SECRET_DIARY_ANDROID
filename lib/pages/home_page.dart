import 'package:flutter/material.dart';
import 'package:secret_diary/models/post_model.dart';
import 'package:secret_diary/pages/add_post_page.dart';
import 'package:secret_diary/services/post_api.dart';
import 'package:secret_diary/widgets/post_list_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Post>(
      future: getPost(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.data == null) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFFFA786),
            elevation: 0.0,
            title: Text(
              snapshot.data!.name!,
              style: const TextStyle(color: Colors.black),
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
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/background3.png',
                fit: BoxFit.cover,
                color: Colors.white38,
                colorBlendMode: BlendMode.dstOut,
              ),
              PostListWidget(snapshot: snapshot),
            ],
          ),
        );
      },
    );
  }
}
