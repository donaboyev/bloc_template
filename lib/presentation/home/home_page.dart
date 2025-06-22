import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/home/home_bloc.dart';
import '../../infrastructure/info_type.dart';
import '../components/keyboard_dismisser.dart';
import '../saved/saved_page.dart';
import 'widget/selectable_info_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  late TextEditingController numberController;

  @override
  void initState() {
    numberController = TextEditingController();
    super.initState();

    // Check network status when app is initialized
    context.read<HomeBloc>().add(const HomeEvent.checkNetworkStatus());

    // Register observer for app lifecycle changes
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Check network status when app is resumed
      context.read<HomeBloc>().add(const HomeEvent.checkNetworkStatus());
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    numberController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          centerTitle: true,
          title: Text('Number Facts'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (_) => SavedPage()),
                );
              },
              child: Text('Saved Data'),
            ),
          ],
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final bloc = context.read<HomeBloc>();
            return state.isNetworkDisabled
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your network connection is disabled\nYou can check saved number facts',
                        ),
                        SizedBox(height: 24),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (_) => SavedPage()),
                            );
                          },
                          child: Text('Saved Data'),
                        ),
                      ],
                    ),
                  )
                : ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Text('Choose Info Type'),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SelectableInfoType(
                            isSelected: state.infoType == InfoType.math,
                            title: 'Math',
                            onTap: () {
                              bloc.add(HomeEvent.changeInfoType(InfoType.math));
                            },
                          ),
                          SizedBox(width: 16),
                          SelectableInfoType(
                            isSelected: state.infoType == InfoType.trivia,
                            title: 'Trivia',
                            onTap: () {
                              bloc.add(
                                HomeEvent.changeInfoType(InfoType.trivia),
                              );
                            },
                          ),
                          SizedBox(width: 16),
                          SelectableInfoType(
                            isSelected: state.infoType == InfoType.date,
                            title: 'Date',
                            onTap: () {
                              bloc.add(HomeEvent.changeInfoType(InfoType.date));
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Random'),
                          SizedBox(width: 20),
                          Switch(
                            value: state.isRandom,
                            onChanged: (value) {
                              if (value) {
                                numberController.clear();
                              }
                              bloc.add(HomeEvent.toggleRandom());
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      TextField(
                        readOnly: state.isRandom,
                        controller: numberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter a number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          bloc.add(
                            HomeEvent.fetchNumberInfo(
                              context,
                              number: numberController.text.trim(),
                              onSuccess: (data) {
                                showCupertinoDialog(
                                  context: context,
                                  builder: (context) {
                                    return CupertinoAlertDialog(
                                      title: (data.found ?? true)
                                          ? Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                            )
                                          : Icon(
                                              Icons.error,
                                              color: Colors.red,
                                            ),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('${data.text}'),
                                          SizedBox(height: 24),
                                          if (data.found ?? true)
                                            TextButton(
                                              onPressed: () {},
                                              child: Text('Save this fact'),
                                            ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('Close'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          );
                        },
                        child: state.isLoading
                            ? CupertinoActivityIndicator()
                            : Text('Get Info'),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
