import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:sixteen_stacked_state_mangement_withoutservice_pt1/screens/profile/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(title: Text("Profile")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.counter.toString(),
                  style: TextStyle(fontSize: 40),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModel.addCounterValueFun();
                  },
                  child: Text("Count"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
