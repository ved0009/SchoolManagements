import { Component } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { MasterClientService } from '../../../../Services/MasterClient/master-client.service';
import { ToasterService } from '../../../../Services/Toaster/toaster.service';
import { webToasterPosition } from '../../../../Services/Toaster/ToastSettings';

@Component({
  selector: 'ngx-manage-families',
  templateUrl: './manage-families.component.html',
  styleUrls: ['./manage-families.component.scss']
})
export class ManageFamiliesComponent {
  studentLists: string[] = [];
  searchStudents : FormGroup;
  searchText: string = "";
  classLists: any;
  studentsLists: any;
  enableStudentsLists: boolean = false;
  StudentLetter: any;
  enableStudentsLetter: boolean;

  constructor(
    private _api: MasterClientService,
    private _toaster: ToasterService,
    private _fb:FormBuilder
  ) {}
  ngOnInit(): void {
    this.getAllClass();
    this.searchStudents =  this._fb.group({
      classId:new FormControl('',Validators.required),
      studentFilter:new FormControl('',Validators.required)
    });
  }

  onSearchChange(searchValue: string): void {
    this._api.GetList("searchValue", "").subscribe((fruits) => {
      this.studentLists = fruits;
    });
  }

  onFruitSelect(fruit: string): void {
    // Perform any additional logic here
    console.log(`Selected fruit: ${fruit}`);
    // For example, you could call another method or service
    this.performActionOnSelect(fruit);
  }

  performActionOnSelect(fruit: string): void {
    // Example action: log the selected fruit to the console
    console.log(`Action performed on: ${fruit}`);
    // You can add more logic here, such as making another API call
  }

  // get all classes
  getAllClass() {
    this._api.GetList("Classes", "GetAllClassess").subscribe({
      next: (res) => {
        if (res.statusCode === 200 && res.success) {
          this.classLists = res.responseData;
          console.log("class", this.classLists);
        } else {
          this._toaster.showToast(
            webToasterPosition.toasterTopLeftPosition,
            "info",
            "No record found"
          );
        }
      },
      error: (err) => {
        this._toaster.showToast(
          webToasterPosition.toasterTopLeftPosition,
          "danger",
          err.message
        );
      },
    });
  }
  // get All students

  getStudentsLists() {
    const data ={
      classId: this.searchStudents.controls['classId'].value,
      name:  this.searchStudents.controls['studentFilter'].value
    }
    this._api.Post(data,"Student", "GetStudentLetter").subscribe({
      next: (res) => {
        this.studentsLists = res.responseData;
        this.studentsLists.forEach((item) => {
          item.image =
            item.image === null ? "../assets/images/lee.png" : item.image;
          item.studentId = "FPSSS" + item.id;
        });
        this.enableStudentsLists = true;

        console.log("student lists", this.studentsLists);
      },
      error: (err) => {
        this._toaster.showToast(
          webToasterPosition.toasterTopLeftPosition,
          "danger",
          err.message
        );
      },
    });
  }

  showLetter(item:any){
    this.enableStudentsLists = false;
    this.enableStudentsLetter = true;
    this.StudentLetter = item;
  }

}
