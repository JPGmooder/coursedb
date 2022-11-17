import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kursach/domain/employee/bloc/employee_bloc.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursach/domain/model/user_model.dart';

class CourierOrdersScreen extends StatefulWidget {
  CourierOrdersScreen({Key? key}) : super(key: key);

  @override
  State<CourierOrdersScreen> createState() => _CourierOrdersScreenState();
}

class _CourierOrdersScreenState extends State<CourierOrdersScreen> {
  List<OrderModel>? currentOrders;
  late StreamSubscription<Position> geoListener;
  @override
  void initState() {
    if (currentOrders == null) {
      Geolocator.getCurrentPosition().then((value) => context
          .read<EmployeeBloc>()
          .add(EmployeeEvent.findNearestOrders(
              userLogin: UserModel.get().login,
              currentLat: value.latitude,
              currentLon: value.longitude)));
    }
    geoListener = Geolocator.getPositionStream(
            locationSettings: LocationSettings(distanceFilter: 15))
        .listen((event) {
      EmployeeEvent.findNearestOrders(
          userLogin: UserModel.get().login,
          currentLat: event.latitude,
          currentLon: event.longitude);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmployeeBloc, EmployeeState>(
      listener: (context, state) {
     //   state.maybeWhen(orElse: () => null, ordersFounded: (orders) => );
      },
      child: CustomScrollView(
        slivers: [
     //     SliverAnimatedList(itemBuilder: itemBuilder)
        ],
      ),
    );
  }
}
