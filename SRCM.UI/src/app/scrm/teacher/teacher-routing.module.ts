import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TeacherComponent } from './teacher.component';
import { DashboardComponent } from '../../pages/dashboard/dashboard.component';
import { NotFoundComponent } from '../../pages/miscellaneous/not-found/not-found.component';

const routes: Routes = [
  {
    path: "",
    component: TeacherComponent,
    children: [
      {
        path: "dashboard",
        component: DashboardComponent,
      },
      {
        path: "Students",
        loadChildren: () =>
          import("./../scrm-school/Students/students.module").then((m) => m.StudentsModule),
      },
      {
        path: "Class",
        loadChildren: () =>
          import("./../scrm-school/classes/classes.module").then((m) => m.ClassesModule),
      },
      {
        path: "Subject",
        loadChildren: () =>
          import("./../scrm-school/subject/subject.module").then((m) => m.SubjectModule),
      },


    ],
  },

  {
    path: "",
    redirectTo: "dashboard",
    pathMatch: "full",
  },
  {
    path: "**",
    component: NotFoundComponent,
  },
];


@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class TeacherRoutingModule { }
