
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MasterClientService } from '../../../../Services/MasterClient/master-client.service';
import { ToasterService } from '../../../../Services/Toaster/toaster.service';
import { webToasterPosition } from '../../../../Services/Toaster/ToastSettings';
import { log } from 'console';

@Component({
selector: 'ngx-assign-subject',
templateUrl: './assign-subject.component.html',
styleUrls: ['./assign-subject.component.scss']
})
export class AssignSubjectComponent {
newSubjectForm: FormGroup;
ArrSubject = []
subjectListObj:any={}


constructor(private fb:FormBuilder,private _api:MasterClientService,private _toaster:ToasterService){}
ngOnInit():void{
this.subjectListObj= {Subject:'',Marks:0,isRemoved:false}
this.ArrSubject.push(this.subjectListObj)

 this.newSubjectForm=this.fb.group({
   classname:['', [Validators.required]]
  })

}
addNewRow() {
debugger
this.subjectListObj= {Subject:'',Marks:0,isRemoved:false}
this.ArrSubject.push(this.subjectListObj)
console.log(this.ArrSubject)
}
// RemoveNewRow(){
// debugger
// this.ArrSubject.splice(1); 
// }
onSubmit(): void {
 console.log(this.newSubjectForm.value);
  const data = {
   id: 0,
   className: this.newSubjectForm.controls['classname'].value,
   monthTutionFees: this.newSubjectForm.controls['tutionfee'].value,
   classTeacherId: this.newSubjectForm.controls['classteacher'].value,
   totalBoys: 1,
   totalGirls: 2,
   totalStudents: 2
 }
 this._api.Post(data,'Classes','InsertUpdatedClassess').subscribe({
   next: (res) => {
     if (res.statusCode === 200 && res.success) {
       this._toaster.showToast(webToasterPosition.toasterTopLeftPosition,'success',res.message);
       this.newSubjectForm.reset();
     } else {
       this._toaster.showToast(webToasterPosition.toasterTopLeftPosition,'info',res.message);
     }
   },
   error: (err) => {
     this._toaster.showToast(webToasterPosition.toasterTopLeftPosition,'danger',err.message);
   },
 });
}

}
