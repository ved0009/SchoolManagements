import { NbMenuItem } from "@nebular/theme";

export const MENU_ITEMS: NbMenuItem[] = [
  // {
  //   title: "School Admin",
  //   icon: "shopping-cart-outline",
  //   link: "/scrm/admin/dashboard",
  //   home: false,
  // },
  {
    title: "Dashboard",
    icon: "grid-outline",
    link: "/scrm/School/dashboard",
    home: true,
  },
  {
    title: "Students",
    icon: "award-outline",
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
];
