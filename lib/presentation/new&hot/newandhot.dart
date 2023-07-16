import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/Model/download_model/upcoming_model.dart';
import 'package:netflix/domain/functions/function.dart';
import 'package:netflix/presentation/new&hot/widgets/comingsoonwidget.dart';
import 'package:netflix/presentation/new&hot/widgets/everyoneswhatchingwidget.dart';
import '../../core/constants.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                size: 30,
                color: Colors.white,
              ),
              kwidth,
              SizedBox(
                height: 30,
                width: 30,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset('assets/images/Netflix-avatar.png')),
              ),
              kwidth
            ],
            bottom: TabBar(
                labelColor: kblackcolor,
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: kwhite,
                indicator:
                    BoxDecoration(color: kwhite, borderRadius: kradius30),
                tabs: const [
                  Tab(text: "🍿coming soon"),
                  Tab(
                    text: "👀Everyone's Whatching",
                  )
                ]),
          ),
        ),
        body: TabBarView(
            children: [_builComingsoon(), _buildEveryonsWhatching()]),
      ),
    );
  }
}

Widget _builComingsoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return FutureBuilder<UpcomingMovieModel?>(
        future: upcomingMovieList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }else if(snapshot.hasData){
           return  ComingSoonWidget(movieData: snapshot.data!.results[index],);
           }else{
             return Text("Something Went Wrong");
          }
          
        }
      );
    },
  );
}

Widget _buildEveryonsWhatching() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return FutureBuilder<UpcomingMovieModel?>(
        future: upcomingMovieList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }else if(snapshot.hasData){
           return  EveryOnesWhatchingwidget(movieData: snapshot.data!.results[index + 9]);
           }else{
             return Text("Something Went Wrong");
          }
          
        }
      );
      });
}
