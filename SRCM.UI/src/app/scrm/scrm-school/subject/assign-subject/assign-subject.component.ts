import { Component, OnInit } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MasterClientService } from '../../../../Services/MasterClient/master-client.service';
import { webToasterPosition } from '../../../../Services/Toaster/ToastSettings';
import { ToasterService } from '../../../../Services/Toaster/toaster.service';

@Component({
  selector: 'ngx-assign-subject',
  templateUrl: './assign-subject.component.html',
  styleUrls: ['./assign-subject.component.scss']
})
export class AssignSubjectComponent implements OnInit {
  newSubjectForm: FormGroup;
  classList:any;

  constructor(private fb: FormBuilder, 
    private _api: MasterClientService,
    private toaster: ToasterService) {
    this.newSubjectForm = this.fb.group({
      classname: ['', Validators.required],
      subjects: this.fb.array([this.createSubject()])
    });
  }

  ngOnInit(): void {
    this.getClassList();
  }

  get ArrSubject(): FormArray {
    return this.newSubjectForm.get('subjects') as FormArray;
  }

  createSubject(): FormGroup {
    return this.fb.group({
      subjectName: ['', Validators.required],
      marks: ['', [Validators.required, Validators.pattern('^[0-9]*$')]],
      isRemoved:[false]
    });
  }
  addNewRow(): void {
    this.ArrSubject.push(this.createSubject());
  }
  removeLastRow(): void {
    if (this.ArrSubject.length > 1) {
      this.ArrSubject.removeAt(this.ArrSubject.length - 1);
    }
  }
  onSubmit(): void {
    debugger
    if (this.newSubjectForm.valid) {
      debugger
      let obj={
        classID:parseInt(this.newSubjectForm.controls.classname.value),
        schoolId:1,
        createdBy:"dev_ved",
        typOrderDetail:"",
        typSubjectDetailjson:this.ArrSubject.value
      }
      console.log(obj)
      this._api.Post(obj,'Subject','InsertUpdateSubjects').subscribe({
        next:(res) =>{
          this.toaster.showToast(
            webToasterPosition.toasterTopLeftPosition,
            "success",
            "Subject Assigned Successfully !!"
          );
        },error:(err)=> {
          this.toaster.showToast(
            webToasterPosition.toasterTopLeftPosition,
            "danger",
            err.message
          );
        },
      })
      this.newSubjectForm.reset();
      this.ArrSubject.clear();
        this.addNewRow();

    } else {
      console.error('Form is invalid');
    }
  }
  getClassList(){
    debugger
    this._api.Get('Classes','GetAllClassess').subscribe({
      next:(res) =>{
        this.classList=res.responseData
        console.log(res)
      },error:(err)=> {
        this.toaster.showToast(
          webToasterPosition.toasterTopLeftPosition,
          "danger",
          err.message
        );
      },
    })
  }
}
