import 'package:bloc_example/BloC/bloc_provider.dart';
import 'package:bloc_example/BloC/location_bloc.dart';
import 'package:bloc_example/DataLayer/location.dart';
import 'package:bloc_example/views/restaurant_page.dart';
import 'package:flutter/material.dart';

import 'location_page.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
        stream: BlocProvider.of<LocationBloc>(context).locationStream,
        builder: (context, snapshot) {
          final location = snapshot.data;

          if (location == null) {
            return LocationScreen();
          }

          return RestaurantScreen(location: location);
        });
  }
}
