import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:secret_diary/models/post_model.dart';

Future<String> _loadAddressAsset(String location) async {
  return await rootBundle.loadString(location);
}

Future<Post> getPost() async {
  final response = await _loadAddressAsset('assets/posts.json');
  return Post.fromJson(jsonDecode(response));
}
