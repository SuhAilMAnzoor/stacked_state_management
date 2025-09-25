import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:sixteen_stacked_state_mangement_withoutservice_pt1/screens/home/home_viewmodel.dart';
import 'package:sixteen_stacked_state_mangement_withoutservice_pt1/screens/profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(title: Text("Home")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.counter.toString(),
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    viewModel.CountedValue();
                  },
                  child: Text("Count"),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileView(),
                      ),
                    );
                  },
                  child: Text("Go to Profile Screen"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
