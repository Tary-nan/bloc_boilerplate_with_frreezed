import 'package:architecture_bloc/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterButton extends StatelessWidget {
  final bool visible;

  const FilterButton({required this.visible, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).textTheme.bodyText2;
    const activeStyle = TextStyle(color: Colors.orange);
    return BlocBuilder<FilteredBloc, FilteredState>(
        builder: (context, state) {

      final button = _Button(
        onSelected: (filter) {
          BlocProvider.of<FilteredBloc>(context)
              .add(FilteredEvent.updateFilter(filter));
        },
        activeFilter: state is LoadedSucces
            ? (state).filteredTodo
            : VisibilityFilter.all,
        activeStyle: activeStyle,
        defaultStyle: defaultStyle!,
      );
      return AnimatedOpacity(
        opacity: visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 150),
        child: visible ? button : IgnorePointer(child: button),
      );
    });
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.onSelected,
    required this.activeFilter,
    required this.activeStyle,
    required this.defaultStyle,
  }) : super(key: key);

  final PopupMenuItemSelected<VisibilityFilter> onSelected;
  final VisibilityFilter activeFilter;
  final TextStyle activeStyle;
  final TextStyle defaultStyle;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<VisibilityFilter>(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => <PopupMenuItem<VisibilityFilter>>[
        PopupMenuItem<VisibilityFilter>(
          value: VisibilityFilter.all,
          child: Text(
            'show all',
            style: activeFilter == VisibilityFilter.all
                ? activeStyle
                : defaultStyle,
          ),
        ),
        PopupMenuItem<VisibilityFilter>(
          value: VisibilityFilter.active,
          child: Text(
            'showActive',
            style: activeFilter == VisibilityFilter.active
                ? activeStyle
                : defaultStyle,
          ),
        ),
        PopupMenuItem<VisibilityFilter>(
          value: VisibilityFilter.complet,
          child: Text(
            'showCompleted',
            style: activeFilter == VisibilityFilter.complet
                ? activeStyle
                : defaultStyle,
          ),
        ),
      ],
      icon: const Icon(Icons.filter_list),
    );
  }
}