import { NbMenuItem } from "@nebular/theme";

export const MENU_ITEMS: NbMenuItem[] = [
  // {
  //   title: "SCRM",
  //   icon: "shopping-cart-outline",
  //   link: "/scrm/admin/dashboard",
  //   home: true,

  // },
  {
    title: "Dashboard",
    icon: "grid-outline",
    link: "/scrm/admin/dashboard",
    home: true,
    expanded: true,

  },

  {
    title: "Students",
    icon: "award-outline",
    expanded: true,
    children: [
      {
        title: "All Students",
        link: "/scrm/School/Students/allstudent",
        icon: "list-outline",
      },
      {
        title: "Add new",
        link: "/scrm/School/Students/newstudent",
        icon: "person-add-outline",
      },

      {
        title: "Manage Families",
        link: "/scrm/School/Students/managefamilies",
        icon: "people-outline",
      },
      {
        title: "Active / Inactive",
        link: "/scrm/School/Students/activeinactive",
        icon: "person-done-outline",
      },
      {
        title: "Admission Letter",
        link: "/scrm/School/Students/admissionletter",
        icon: "file-text-outline",
      },
      {
        title: "Student ID Card",
        link: "/scrm/School/Students/studentcard",
        icon: "person-outline",
      },
      {
        title: "Print Basic List",
        link: "/scrm/School/Students/printbasiclist",
        icon: "download-outline",
      },
      {
        title: "Promote Students",
        link: "/scrm/School/Students/promotestudent",
        icon: "trending-up-outline",
      },
    ],
  },
  {
    title: "Class",
    icon: "award-outline",
    children: [
      {
        title: "All Class",
        link: "/scrm/School/Class/allclass",
        icon: "list-outline",
      },
      {
        title: "New Class",
        link: "/scrm/School/Class/newclass",
        icon: "person-add-outline",
      },
    ],
  },
  {
    title: "Subject",
    icon: "award-outline",
    children: [
      {
        title: "Classess with Subject",
        link: "/scrm/School/Subject/classesswithsubject",
        icon: "list-outline",
      },
      {
        title: "Assign Subject",
        link: "/scrm/School/Subject/assignsubject",
        icon: "person-add-outline",
      },
    ],
  },
  {
    title: "Employees",
    icon: "award-outline",
    children: [
      {
        title: "All Employees",
        link: "/scrm/School/Employees/allemployees",
        icon: "list-outline",
      },
      {

        title: "Add Employees",
        link: "/scrm/School/Employees/newemployees",
        icon: "person-add-outline",
      },
      {


        title: "Staff ID Card",
        link: "/scrm/School/Employees/staffcard",
        icon: "person-add-outline",
      },
      {
        title: "Job Letter",
        link: "/scrm/School/Employees/jobletter",
        icon: "person-add-outline",
      },

    ],
  },
  {
    title: "GeneralSetting",
    icon: "award-outline",
    children: [
      {
        title: "Institute Profile",
        link: "/scrm/School/GeneralSetting/schoolinfo",
        icon: "list-outline",
      },
      {

        title: "Fee Particular",
        link: "/scrm/School/GeneralSetting/feeparticulars",
        icon: "person-add-outline",
      },
      {


        title: "Fee Structure",
        link: "/scrm/School/GeneralSetting/feestructure",
        icon: "person-add-outline",
      },
      {
        title: "Discount Type",
        link: "/scrm/School/GeneralSetting/discounttype",
        icon: "person-add-outline",
      },
      {
        title: "Details For Fee Challan",
        link: "/scrm/School/GeneralSetting/bankdetails",
        icon: "person-add-outline",
      },
      {
        title: "Rules & Regulations",
        link: "/scrm/School/GeneralSetting/rules",
        icon: "person-add-outline",
      },
      {
        title: "Marks Grading",
        link: "/scrm/School/GeneralSetting/grading",
        icon: "person-add-outline",
      },
      {
        title: "Theme & Language",
        link: "/scrm/School/GeneralSetting/themesettings",
        icon: "person-add-outline",
      },
      {
        title: "Account Setting",
        link: "/scrm/School/GeneralSetting/accountsetting",
        icon: "person-add-outline",
      },

    ],
  },
];

