import 'package:bloc_pattern_examples/complex_list_example/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'complex_list/view/complex_list_page.dart';

class App extends MaterialApp {
  App({super.key, required Repository repository})
      : super(
          home: RepositoryProvider.value(
            value: repository,
            child: const ComplexListPage(),
          ),
        );
}
