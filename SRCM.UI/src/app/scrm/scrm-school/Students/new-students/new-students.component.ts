import { Component } from '@angular/core';
import { FormBuilder,   FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'ngx-new-students',
  templateUrl: './new-students.component.html',
  styleUrls: ['./new-students.component.scss']
})
export class NewStudentsComponent {
  StudentBasicForm: FormGroup;
  StudentOtherForm: FormGroup;
  isExpand:Boolean=true;

  validationMessages = {
    'StudentName': {
       'required': 'StudentName is required.',
    },
    'RegistrationNo': {
       'required': 'RegistrationNo is required.',

    },
    'Class': {
       'required': 'Class is required.'
    },
    'DateOfAdmission': {
       'required': 'DateOfAdmission is required.',

    }  ,
    'DiscountInFee': {
       'required': 'DateOfAdmission is required.',

    } ,
    'MobileNoWhatsapp': {
       'pattern': 'DateOfAdmission is required.',

    }
 };
 formErrors = {};
  constructor(private formBuilder: FormBuilder) { }

  ngOnInit(): void {
    debugger
    this.StudentBasicForm = this.formBuilder.group({
      StudentName: ['', [Validators.required]],
       RegistrationNo: ['', [Validators.required]],
       Class: ['', [Validators.required]],
       DateOfAdmission: ['', [Validators.required]],
       DiscountInFee: ['', [Validators.required]],
       MobileNoWhatsapp: ['',Validators.pattern('0-9')],

       DOB: [''],
       StudentBirthForm: [''],
       isOrphan: [''],
       Gender: [''],
       Cast: [''],
       OSC: [''],
       IdentificationMark: [''],
       PreviousSchool: [''],
       Religion: [''],
       BloodGroup: [''],
       BoardRollNo: [''],
       Family: [''],
       Disease: [''],
       AdditionalNote: [''],
       TotalSiblings: [''],
       Address: [''],

       FatherName: [''],
       FatherNationalID: [''],
       FOccupation: [''],
       FEducation: [''],
       FMobileNo: [''],
       FProfession: [''],
       FIncome: [''],

       MotherName: [''],
       MotherNationalID: [''],
       MOccupation: [''],
       MEducation: [''],
       MMobileNo: [''],
       MProfession: [''],
       MIncome: ['']
      })
  //   this.StudentBasicForm.valueChanges.subscribe(
  //     value => {
  //        this.logValidationErrors()
  //     }
  //  );

  }

  onSubmit(): void {
     console.log(this.StudentBasicForm.value);

  }


//   logValidationErrors() {
//     debugger
//     this.formErrors = this._validation.getValidationErrors(this.StudentBasicForm, this.validationMessages);
// }
toggleExpand(){
  this.isExpand=!this.isExpand;
}
}
