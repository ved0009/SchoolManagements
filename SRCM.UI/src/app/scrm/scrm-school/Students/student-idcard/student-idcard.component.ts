import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ToasterService } from '../../../../Services/Toaster/toaster.service';
import { MasterClientService } from '../../../../Services/MasterClient/master-client.service';
import { webToasterPosition } from '../../../../Services/Toaster/ToastSettings';

@Component({
  selector: 'ngx-student-idcard',
  templateUrl: './student-idcard.component.html',
  styleUrls: ['./student-idcard.component.scss']
})
export class StudentIDCardComponent {
  studentsLists: any;
  constructor(
    private router: Router,
    private toaster: ToasterService,
    private _api: MasterClientService,
    // private _dialong: DialongService
  ) {}

ngOnInit(): void {

  this.getStudentsLists();
}

  getStudentsLists() {
    this._api.GetList("Student", "GetAllStudentLists/0").subscribe({
      next: (res) => {
        this.studentsLists = res.responseData;

        this.studentsLists.forEach((item) => {
          item.image =
            item.image === null ? "../assets/images/lee.png" : item.image;
          item.studentId = "FPSSS" + item.id;
        });

        console.log("student lists", this.studentsLists);
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

}
