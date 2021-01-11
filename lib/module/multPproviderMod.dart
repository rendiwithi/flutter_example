import 'package:flutter/material.dart';
import 'package:flutter_example/class/cart_multi_provider.dart';
import 'package:flutter_example/class/saldo_multi_provider.dart';
import 'package:provider/provider.dart';

class MultiProviderMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartMultiProvider()),
        ChangeNotifierProvider(create: (context) => SaldoMultiProvider()),
      ],
      child: Consumer<SaldoMultiProvider>(
        builder: (context, saldo, _) => Consumer<CartMultiProvider>(
          builder: (context, cart, _) => Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (saldo.saldo >= 500) {
                    cart.quantity += 1;
                    saldo.saldo -= 500;
                  }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.purple),
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: Text("Multi Provider"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Saldo"),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        alignment: Alignment.centerRight,
                        width: 150,
                        height: 50,
                        child: Consumer<SaldoMultiProvider>(
                            builder: (context, saldo, _) =>
                                Text(saldo.saldo.toString())),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<CartMultiProvider>(
                        builder: (context, cart, _) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Apple (500) x " + cart.quantity.toString(),
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              (500 * cart.quantity).toString(),
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 2)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
