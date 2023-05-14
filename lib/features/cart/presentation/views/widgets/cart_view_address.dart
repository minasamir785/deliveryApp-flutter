import 'package:delivery/features/cart/presentation/views/widgets/cart_view_address_button.dart';
import 'package:delivery/features/cart/presentation/views/widgets/cart_view_adress_plus_button.dart';
import 'package:flutter/material.dart';

class CartViewAddress extends StatelessWidget {
  const CartViewAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        AddressButton(fill: true, name: "Address 1"),
        AddressButton(fill: false, name: "Address 1"),
        AddressPlusButton()
      ],
    );
  }
}
