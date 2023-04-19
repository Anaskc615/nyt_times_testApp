import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/application/bloc/home_bloc.dart';
import 'package:test_project/presentation/Details/DetailsScreen.dart';

import 'domain/core/di/injectable.dart';
import 'presentation/Home/HomeListView.dart';

// application entry point and root
Future<void> main() async {
  // it will ensure all initialization for this app
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MyApp());
}
// application entry point and root

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //registering all block inside the multiblocprovider .So we can can use all bloc in entire applicatiion
    // here actually not need multiblocprovider
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getit<HomeBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        // setting named route
        routes: {
          DetailsScreen.detailPageRoute: (context) => const DetailsScreen(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeListView(),
      ),
    );
  }
}
