import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'categoryproider.dart';
import 'checkinternet.dart';
import 'products.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<InternetStatus>(
          create: (_) => InternetStatus(),
        ),
        ChangeNotifierProvider<Products>(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider<CategoryPro>(
          create: (_) => CategoryPro(),
        )
      ];
}
