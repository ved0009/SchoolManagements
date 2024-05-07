import { NbMenuItem } from "@nebular/theme";

export const MENU_ITEMS: NbMenuItem[] = [
  {
    title: "SCRM",
    icon: "shopping-cart-outline",
    link: "/scrm/admin/dashboard",
    home: true,
  },

  {
    title: "School management",
    icon: "message-circle-outline",
    children: [
      {
        title: "Add school",
        link: "/pages/extra-components/calendar",
      },
      {
        title: "Add new account",
        link: "/pages/extra-components/spinner",
      },

      {
        title: "Membership",
        link: "/pages/extra-components/spinner",
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
];
