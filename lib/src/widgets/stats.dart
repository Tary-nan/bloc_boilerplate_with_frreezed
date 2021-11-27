import 'package:architecture_bloc/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loading_indicator.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatBloc, StatState>(
      builder: (context, state) {
        if (state is StatStateLoading) {
          return const LoadingIndicator(
          );
        } else if (state is StatStateLoadedSuccess) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'completedTodos',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.only(bottom: 24.0),
                  child: Text(
                    '${state.numComplet}',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'activeTodos',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.only(bottom: 24.0),
                  child: Text(
                    "${state.numActive}",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
