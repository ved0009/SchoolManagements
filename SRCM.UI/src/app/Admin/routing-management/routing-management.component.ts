import { Component } from "@angular/core";
import { MasterClientService } from "../../Services/MasterClient/master-client.service";
import { LocalDataSource } from "ng2-smart-table";
import { SmartTableData } from "../../@core/data/smart-table";
interface TableRow {
  id: number;
  name: string;
  age: number;
}
@Component({
  selector: "ngx-routing-management",
  templateUrl: "./routing-management.component.html",
  styleUrls: ["./routing-management.component.scss"],
})
export class RoutingManagementComponent {
  menuList: any;
  pageno: number = 0;
  pagesize: number = 5;
  totalRecords :number = 0;
  menuListPagination: any;
  dataSource: TableRow[] = [];
  allColumns: string[] = ['id', 'name', 'age', 'actions'];

  constructor(private _api: MasterClientService,private service: SmartTableData) {
    const data = this.service.getData();
    this.source.load(data);
  }
  settings = {

    columns: {
      // id: {
      //   title: 'ID',
      //   type: 'number',
      // },
      moduleName: {
        title: 'Module',
        type: 'string',
      },
      componentName: {
        title: 'Component',
        type: 'string',
      },
      title: {
        title: 'Title',
        type: 'string',
        width: '100%',  // Take full width
      },
      icon: {
        title: 'Icon',
        type: 'string',
        width: '100%',  // Take full width

      },
      expanded: {
        title: 'Expanded',
        type: 'number',
        valuePrepareFunction: (value) => {
          return value === 1 ? 'Yes' : 'No';
        }
      },
      link: {
        title: 'Link',
        type: 'string',
      },
      orderby: {
        title: 'Order',
        type: 'number',
      },
      children: {
        title: 'Children',
        type: 'bool',
        valuePrepareFunction: (value) => {
          return value === 1 ? 'Yes' : 'No';
        }
      },
      isActive: {
        title: 'Active',
        type: 'boolean',
        valuePrepareFunction: (value) => {
          return value === 1 ? 'Yes' : 'No';
        }
      },
    },
    isPagerDisplay: true,
    perPageSelect:5,
    hideSubHeader: true,  // Hide the filter row
    delete: {
      deleteButtonContent: '<i class="nb-trash text-danger"></i>',
      confirmDelete: true,
    },
    edit: {
      editButtonContent: '<i class="nb-edit text-info"></i>',
      confirmDelete: true,
    },
    actions: {
      add: false,     // Disable the add button
      edit: false,    // Disable the edit button
      delete: {
        deleteButtonContent: '<i class="nb-trash"></i>',
        confirmDelete: true,
      },  // Disable the delete button

      // custom: [
      //   {
      //     name: 'add',
      //     title: '<button   class="btn btn-md btn-light" > <i class="fa fa-trash text-danger fs-2"></i> </button>',
      //   },

      // ],
      position: 'right'  // Position custom button to the right
    },
    defaultSettings:{
      isHideHeader: true,
      isHideSubHeader: true,
      isPagerDisplay: false
    }


  };

  source: LocalDataSource = new LocalDataSource();


  ngOnInit(): void {
    this._api.GetList("Admin", "GetAllRoutings").subscribe({
      next: (res) => {
        this.menuList = res.responseData;
        this.source.load(this.menuList)
        console.log(this.menuList);
      },
    });
  }

  // ngOnInit() {
  //   // Initialize with some data
  //   this.dataSource = [
  //     { id: 1, name: 'John Doe', age: 25 },
  //     { id: 2, name: 'Jane Smith', age: 30 },
  //     { id: 3, name: 'Sam Johnson', age: 35 }
  //   ];
  // }

  view(row: TableRow) {
    alert(`Viewing: ${row.name}`);
  }

  edit(row: TableRow) {
    const newName = prompt('Enter new name:', row.name);
    if (newName !== null) {
      row.name = newName;
    }
  }

  delete(row: TableRow) {
    if (confirm(`Are you sure you want to delete ${row.name}?`)) {
      this.dataSource = this.dataSource.filter(item => item !== row);
    }
  }
}

