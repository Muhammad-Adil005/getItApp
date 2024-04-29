import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_app/bloc/home_event.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<HomeBloc>(context).add(FetchData());
        },
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.initialState == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.fruits != null && state.fruits!.isNotEmpty) {
            return ListView.builder(
              itemCount: state.fruits!.length,
              itemBuilder: (context, index) {
                final fruit = state.fruits![index];
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fruit['name'],
                          style: const TextStyle(
                            color: Colors.pink,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Family: ${fruit['family']}'),
                        Text('Order: ${fruit['order']}'),
                        Text('Genus: ${fruit['genus']}'),
                        Text('Calories: ${fruit['nutritions']['calories']}'),
                        Text('Fat: ${fruit['nutritions']['fat']}'),
                        Text('Sugar: ${fruit['nutritions']['sugar']}'),
                        Text(
                            'Carbohydrates: ${fruit['nutritions']['carbohydrates']}'),
                        Text('Protein: ${fruit['nutritions']['protein']}'),
                      ],
                    ),
                  ),
                );
                // return ListTile(
                //   title: Text(
                //     fruit['name'],
                //     style: const TextStyle(
                //       color: Colors.pink,
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //   subtitle:
                //       Text('Calories: ${fruit['nutritions']['calories']}'),
                //   // You can display other properties of the fruit as needed
                // );
              },
            );
          } else {
            // Handle other states if needed
            return const Center(
              child: Text('No fruits data available.'),
            );
          }
        },
      ),
    );
  }
}

// return Scaffold(
//   body: BlocBuilder<HomeBloc, HomeState>(
//     builder: (context, state) {
//       if (state is HomeInitial) {
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       } else if (state is HomeSuccess) {
//         return ListView.builder(
//           itemCount: state.fruits.length,
//           itemBuilder: (context, index) {
//             final fruit = state.fruits[index];
//             return ListTile(
//               title: Text(fruit['name']),
//               subtitle:
//                   Text('Calories: ${fruit['nutritions']['calories']}'),
//               // You can display other properties of the fruit as needed
//             );
//           },
//         );
//       } else if (state is HomeError) {
//         return Center(
//           child: Text('Error: ${state.message}'),
//         );
//       } else {
//         // Handle other states if needed
//         return const Center(
//           child: Text('Unknown state'),
//         );
//       }
//     },
//   ),
// );
