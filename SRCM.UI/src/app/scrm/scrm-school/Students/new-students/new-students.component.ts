import { Component } from '@angular/core';
import { FormBuilder,   FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'ngx-new-students',
  templateUrl: './new-students.component.html',
  styleUrls: ['./new-students.component.scss']
})
export class NewStudentsComponent {
  StudentForm: FormGroup;

  constructor(private formBuilder: FormBuilder) {  }

  ngOnInit(): void {

    this.loadForm();

  }

  onSubmit(): void {
    console.log(this.StudentForm);
  }
  //      StudentName : new FormControl([''],[Validators.required]),

  loadForm():void{
      console.log('formdata');
      this.formBuilder.group({
      StudentName :['',Validators.required],
       RegistrationNo: ['', Validators.required],
       Class: ['', Validators.required],
       DateOfAdmission: ['', Validators.required],
       DiscountInFee: ['', Validators.required],
       MobileNoWhatsapp: '',

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

     });


     console.log('formdata',this.StudentForm.value);

  }
}
