import { Component } from '@angular/core';
import { MasterClientService } from '../../../../Services/MasterClient/master-client.service';
import { ToasterService } from '../../../../Services/Toaster/toaster.service';
import { DialongService } from '../../../../Services/Dialong/dialong.service';
import { webToasterPosition } from '../../../../Services/Toaster/ToastSettings';
import { Router } from '@angular/router';

@Component({
  selector: 'ngx-classess-with-subjects',
  templateUrl: './classess-with-subjects.component.html',
  styleUrls: ['./classess-with-subjects.component.scss']
})
export class ClassessWithSubjectsComponent {
  SubjectLists:any;
  SubjectDetail = [];
  constructor( private _api: MasterClientService,
    private toaster: ToasterService,
    private _dialong: DialongService,
    private router: Router
  ){
    this.AllSubjects()
  }

  classes = [
    {
      name: '1st',
      totalSubjects: 5,
      totalMarks: 500,
      subjects: [
        { name: 'Hindi', marks: 100 },
        { name: 'English', marks: 100 },
        { name: 'Maths', marks: 100 },
        { name: 'Evs', marks: 100 },
        { name: 'Drawing', marks: 100 }
      ]
    },
    {
      name: '2nd',
      totalSubjects: 5,
      totalMarks: 500,
      subjects: [
        { name: 'Hindi', marks: 100 },
        { name: 'English', marks: 100 },
        { name: 'Maths', marks: 100 },
        { name: 'Science', marks: 100 },
        { name: 'SST', marks: 100 }
      ]
    },
    {
      name: '6th',
      totalSubjects: 6,
      totalMarks: 600,
      subjects: [
        { name: 'Hindi', marks: 100 },
        { name: 'English', marks: 100 },
        { name: 'Maths', marks: 100 },
        { name: 'Science', marks: 100 },
        { name: 'SST', marks: 100 },
        { name: 'Drawing', marks: 100 }
      ]
    },
    {
      name: '7th',
      totalSubjects: 5,
      totalMarks: 500,
      subjects: [
        { name: 'Hindi', marks: 100 },
        { name: 'English', marks: 100 },
        { name: 'Maths', marks: 100 },
        { name: 'Science', marks: 100 },
        { name: 'SST', marks: 100 }
      ]
    }
  ];

  AllSubjects(){
    debugger
    let obj={
      SchoolId:1
    }
    
    this._api.Post(obj,"Subject", "GetAllSubjectsN").subscribe({
      next: (res) => {
        this.SubjectLists = res.responseData;
        this.fliterSubject(this.SubjectLists);
        console.log("Subject lists", this.SubjectLists);
      },
      error: (err) => {
        this.toaster.showToast(
          webToasterPosition.toasterTopLeftPosition,
          "danger",
          err.message
        );
      },
    });
  }

  fliterSubject(result){
    debugger
    for(let i =0; i < result.length; i++) {
      this.SubjectDetail.push({ text: result[i], value: result[i] });
  }}

  add(){
    debugger
    this.router.navigateByUrl('/scrm/School/Subject/assignsubject');

  }
}
