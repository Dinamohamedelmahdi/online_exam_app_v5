import 'package:flutter/material.dart';

import '../../../domain/models/subject.dart';
import 'browse_subject_widget.dart';

class AllSubjectWidgets extends StatelessWidget {
   AllSubjectWidgets(
      {

        required this.allSubjects,
        super.key});

   List<Subject>? allSubjects;


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
     shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount:allSubjects?.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context,index){
        return BrowseSubjectWidget(iconImageName: allSubjects?[index].icon, subjectName: allSubjects?[index].name);
      },
    );
  }
}