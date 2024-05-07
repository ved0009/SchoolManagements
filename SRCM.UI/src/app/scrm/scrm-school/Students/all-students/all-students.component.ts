import { Component, Input } from "@angular/core";
import { Router } from "@angular/router";
import { ToasterService } from "../../../../Services/Toaster/toaster.service";
import { webToasterPosition } from "../../../../Services/Toaster/ToastSettings";
import { MasterClientService } from "../../../../Services/MasterClient/master-client.service";

@Component({
  selector: "ngx-all-students",
  templateUrl: "./all-students.component.html",
  styleUrls: ["./all-students.component.scss"],
})
export class AllStudentsComponent {
  constructor(private router: Router,
    private toaster:ToasterService,
    private _api:MasterClientService
  ) {}
  @Input() profilePic: string;
  @Input() name: string;
  @Input() class: string;

 studentsLists:any;

  StudentsDetail = [
    {
      Profile: "../assets/images/jack.png",
      tRegistration: "F216-00TYU",
      tname: "Monu",
    },
    {
      Profile: "../assets/images/nick.png",
      tRegistration: "F216-0DRTU",
      tname: "Kapil",
    },
    {
      Profile: "../assets/images/lee.png",
      tRegistration: "F216-VDEZU",
      tname: "Naveen",
    },
    {
      Profile: "../assets/images/images.jpg",
      tRegistration: "F216-77VGU",
      tname: "Vayu",
    },
  ];

  showSearch: boolean = false;


  ngOnInit(): void {
    this._api.GetList('Student','GetAllStudentLists/1').subscribe({
      next:res=>{
        this.studentsLists = res.responseData;

        this.studentsLists.forEach(item => {
        item.image =  item.image === null ? "../assets/images/lee.png":item.image;
        item.studentId =  'FPSSS'+item.id ;
        });


        console.log('student lists',this.studentsLists);
      },
      error:err=>{
        this.toaster.showToast(webToasterPosition.toasterTopLeftPosition,'danger',err.message);
      }
    })

  }

  toggleSearch() {
    this.showSearch = !this.showSearch;
  }
  image: string = "../assets/images/jack.png";
  refresh() {
    alert("refresh works");
  }

  search() {
    alert("Search button Click !!");
    this.toaster.showToast(webToasterPosition.toasterTopLeftPosition,'success','success');
  }
  add() {
    debugger;
    this.router.navigate(["/scrm/School/Students/newstudent"]);
  }
  edit() {
    alert("edit button Click !!");
  }

  delete() {
    alert("Delete button Click !!");
  }
}