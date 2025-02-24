import 'package:blood_bank/features/home/presentation/views/widgets/all_posts_view_body.dart';
import 'package:flutter/material.dart';

class AllPostsView extends StatelessWidget {
  const AllPostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "All Posts",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const AllPostsViewBody(),
    );
  }
}
