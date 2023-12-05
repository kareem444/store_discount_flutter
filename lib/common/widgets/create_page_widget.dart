// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/controller/app_provider.dart';
import 'package:my_flutter_app/common/widgets/loading_widget.dart';
import 'package:provider/provider.dart';

class CreatePageWidget extends StatefulWidget {
  final Widget page;
  final String? appBarTitle;
  final FloatingActionButton? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;

  const CreatePageWidget({
    Key? key,
    required this.page,
    this.appBarTitle,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  State<CreatePageWidget> createState() => _CreatePageWidgetState();
}

class _CreatePageWidgetState extends State<CreatePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.bottomNavigationBar,
      appBar: widget.appBarTitle != null
          ? AppBar(
              title: Text(widget.appBarTitle!),
              centerTitle: true,
              backgroundColor: Theme.of(context).primaryColor,
            )
          : null,
      floatingActionButtonLocation: widget.floatingActionButtonLocation ??
          FloatingActionButtonLocation.centerDocked,
      floatingActionButton: widget.floatingActionButton,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: widget.page,
              ),
            ),
            if (context.watch<AppProvider>().showLoadingScreen)
              const LoadingWidget(),
          ],
        ),
      ),
    );
  }
}
