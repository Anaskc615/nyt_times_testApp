import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/application/bloc/home_bloc.dart';
import 'package:test_project/presentation/Details/DetailsScreen.dart';

import '../../components.dart';
import 'Widgets/SingleGridView.dart';
import 'Widgets/SingleView.dart';

class HomeListView extends StatelessWidget {
  HomeListView({super.key});

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context).add(const LoadInitialListData('home'));
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          onChanged: (value) {
            _debouncer.run(() {
              BlocProvider.of<HomeBloc>(context).add(Search(value));
            });

            if (value.isEmpty) {
              BlocProvider.of<HomeBloc>(context)
                  .add(const LoadInitialListData('home'));
            }
          },
          decoration: const InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.filter_list,
              color: Colors.grey,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                      title: const Text(
                        'Select a Category',
                        style: TextStyle(color: Colors.black),
                      ),
                      content: DropdownButton<String>(
                        hint: const Text(
                          'Select a Category',
                          style: TextStyle(color: Colors.black),
                        ),
                        isExpanded: true,
                        onChanged: (value) {
                          // adding the value to block event stream
                          BlocProvider.of<HomeBloc>(context)
                              .add(LoadInitialListData(value.toString()));
                          Navigator.pop(context);
                        },
                        items: categoryList
                            .map((String option) => DropdownMenuItem<String>(
                                value: option, child: Text(option)))
                            .toList(),
                      )));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.view_list,
              color: Colors.grey,
            ),
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(const ChangeView(false));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.grid_view,
              color: Colors.grey,
            ),
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(const ChangeView(true));
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        // block builder widget is provided by bloc which for being listing data .if there is any change it automaticly update the ui
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            }
            if (state.isError) {
              return const Center(
                child: Text('Error while loading'),
              );
            }
            if (state.homeList.isEmpty) {
              return const Center(
                child: Text('List is empty'),
              );
            } else {
              return state.gridView == true
                  ? Expanded(
                      child: GridView.count(
                        shrinkWrap: true,
                        childAspectRatio: (1 / 1.5),
                        padding: const EdgeInsets.all(10.0),
                        crossAxisCount: 2, // number of columns in the grid
                        children: List.generate(
                            state.filtredList.isEmpty
                                ? state.homeList.length
                                : state.filtredList.length, (index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, DetailsScreen.detailPageRoute,
                                  arguments: {
                                    'item': state.filtredList.isEmpty
                                        ? state.homeList[index]
                                        : state.filtredList[index]
                                  });
                            },
                            child: SingleGridView(
                              item: state.filtredList.isEmpty
                                  ? state.homeList[index]
                                  : state.filtredList[index],
                            ),
                          );
                        }),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                          itemCount: state.filtredList.isEmpty
                              ? state.homeList.length
                              : state.filtredList.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                                onTap: (() {
                                  Navigator.pushNamed(
                                      context, DetailsScreen.detailPageRoute,
                                      arguments: {
                                        'item': state.filtredList.isEmpty
                                            ? state.homeList[index]
                                            : state.filtredList[index]
                                      });
                                }),
                                child: SingleView(
                                    item: state.filtredList.isEmpty
                                        ? state.homeList[index]
                                        : state.filtredList[index]));
                          })),
                    );
            }
          },
        ),
      )),
    );
  }
}
