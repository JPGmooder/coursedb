import 'package:flutter/cupertino.dart';
import 'package:kursach/domain/model/order_model.dart';

class CourierOrdersScreen extends StatefulWidget {
  CourierOrdersScreen({Key? key}) : super(key: key);

  @override
  State<CourierOrdersScreen> createState() => _CourierOrdersScreenState();
}

class _CourierOrdersScreenState extends State<CourierOrdersScreen> {
  List<OrderModel>? currentOrders;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
