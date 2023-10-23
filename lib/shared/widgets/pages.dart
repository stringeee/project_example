import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScaffoldWithBlocListener<B extends BlocBase<S>,
    S extends BlocListenerBase<B, S>> extends StatelessWidget {
  const ScaffoldWithBlocListener(
      {Key? key,
      required void Function(BuildContext, S) listener,
      this.title = '',
      required this.body})
      : _listener = listener,
        super(key: key);

  final void Function(BuildContext, S) _listener;
  final Widget body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(title),
      ),
      body: BlocListener<B, S>(
        listener: _listener,
        child: body,
      ),
    );
  }
}
