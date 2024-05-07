import { Component, Input } from "@angular/core";
import { Router } from "@angular/router";
import { ToasterService } from "../../../../Services/Toaster/toaster.service";
import { webToasterPosition } from "../../../../Services/Toaster/ToastSettings";

@Component({
  selector: "ngx-all-students",
  templateUrl: "./all-students.component.html",
  styleUrls: ["./all-students.component.scss"],
})
export class AllStudentsComponent {
  constructor(private router: Router,
    private toaster:ToasterService
  ) {}
  @Input() profilePic: string;
  @Input() name: string;
  @Input() class: string;

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
