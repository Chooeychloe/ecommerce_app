import 'package:flutter/material.dart';

import '../../widget/widgets.dart';

class WishListScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(
          name: routeName,
        ),
        builder: (_) => WishListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Wishlist",
        autoImplyLeading: false,
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
