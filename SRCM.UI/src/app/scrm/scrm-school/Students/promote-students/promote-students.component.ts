import { Component } from "@angular/core";
import { MasterClientService } from "../../../../Services/MasterClient/master-client.service";
import { ToasterService } from "../../../../Services/Toaster/toaster.service";
import { SmartTableData } from "../../../../@core/data/smart-table";
import { LocalDataSource } from "ng2-smart-table";

@Component({
  selector: "ngx-promote-students",
  templateUrl: "./promote-students.component.html",
  styleUrls: ["./promote-students.component.scss"],
})
export class PromoteStudentsComponent {
  classLists: any;
  studentsLists: any;

  constructor(
    private _api: MasterClientService,
    private _toaster: ToasterService,
    private smttable: SmartTableData
  ) {}

  source: LocalDataSource = new LocalDataSource();
  settings = {
    columns: {
      // id: {
      //   title: 'ID',
      //   type: 'number',
      // },
      images: {
        title: "Image",
        type: "string",
      },
      name: {
        title: "Name",
        type: "string",
      },
      studentId: {
        title: "Student id",
        type: "string",
      },
      class: {
        title: "Class",
        type: "string",
      },

    },
    isPagerDisplay: true,
    perPageSelect: 5,
    hideSubHeader: true, // Hide the filter row
    delete: {
      deleteButtonContent: '<i class="nb-trash text-danger"></i>',
      confirmDelete: true,
    },

    actions: {
      add: false, // Disable the add button
      edit: false, // Disable the edit button
      delete: {
        deleteButtonContent: '<i class="nb-trash"></i>',
        confirmDelete: true,
      }, // Disable the delete button


      position: "right", // Position custom button to the right
    },

  };

  ngOnInit(): void {
    this.getAllClass();
    // this.source.load(data);
    this.getStudentsLists();
  }

  getAllClass() {
    this._api.GetList("Classes", "GetAllClassess").subscribe({
      next: (res) => {
        if (res.statusCode === 200 && res.success) {
          this.classLists = res.responseData;
          console.log("class", this.classLists);
        } else {
          this._toaster.Norecordfound();
        }
      },
      error: (err) => {
        this._toaster.SomeThingWrong();
      },
    });
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
        this.source.load(this.studentsLists);
        console.log(this.studentsLists);

      },
      error: (err) => {
        this._toaster.SomeThingWrong();
      },
    });
  }
}
