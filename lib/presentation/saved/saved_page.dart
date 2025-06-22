import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../application/saved/saved_bloc.dart';
import '../../domain/model/number_info.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SavedBloc()..add(const SavedEvent.loadSavedNumberInfo()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Saved Facts'),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          actions: [
            BlocBuilder<SavedBloc, SavedState>(
              builder: (context, state) {
                if (state.savedNumberInfo.isEmpty) {
                  return SizedBox();
                }
                return IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text('Clear All'),
                        content: Text(
                          'Are you sure you want to clear all saved facts?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<SavedBloc>().add(
                                const SavedEvent.clearAllNumberInfo(),
                              );
                              Navigator.pop(context);
                            },
                            child: Text('Clear'),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: Icon(Icons.delete_forever),
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<SavedBloc, SavedState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state.error != null) {
              return Center(child: Text('Error: ${state.error}'));
            }

            if (state.savedNumberInfo.isEmpty) {
              return Center(child: Text('No saved facts yet'));
            }

            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: state.savedNumberInfo.length,
              itemBuilder: (context, index) {
                final numberInfo = state.savedNumberInfo[index];
                return _buildNumberInfoCard(context, numberInfo, index);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildNumberInfoCard(
    BuildContext context,
    NumberInfo info,
    int index,
  ) {
    final dateFormat = DateFormat('MMM d, yyyy HH:mm');
    final formattedDate = dateFormat.format(info.savedAt);

    return Card(
      key: UniqueKey(),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Number: ${info.number}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    context.read<SavedBloc>().add(
                      SavedEvent.deleteNumberInfo(index),
                    );
                  },
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text('Type: ${info.type?.toUpperCase() ?? "Unknown"}'),
            SizedBox(height: 8),
            Text('${info.text}'),
            SizedBox(height: 8),
            Text(
              'Saved on: $formattedDate',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
