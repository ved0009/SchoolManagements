import { NbMenuItem } from '@nebular/theme';

export const MENU_ITEMS: NbMenuItem[] = [
  {
    title: 'SCRM',
    icon: 'shopping-cart-outline',
    link: '/scrm/admin/dashboard',
    home: true,
  },

  {
    title: 'School management',
    icon: 'message-circle-outline',
    children: [
      {
        title: 'Add school',
        link: '/scrm/admin/school',
      },
      {
        title: 'Add new account',
        link: '/scrm/admin/dashboard',
      },

      {
        title: 'Membership',
        link: '/scrm/admin/dashboard',
      },


    ],
  },
  // hiii
  {
    title: 'Profile',
    icon: 'home-outline',
    link: '/scrm/admin/profile',
  },

];
