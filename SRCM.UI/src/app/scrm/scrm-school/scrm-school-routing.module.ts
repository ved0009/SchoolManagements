import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { NotFoundComponent } from "../../pages/miscellaneous/not-found/not-found.component";
import { ScrmSchoolComponent } from "./scrm-school.component";
import { DashboardComponent } from "./dashboard/dashboard.component";

const routes: Routes = [
  {
    path: "",
    component: ScrmSchoolComponent,
    children: [
      {
        path: "dashboard",
        component: DashboardComponent,
      },
      {
        path: "Students",
        loadChildren: () =>
          import("./Students/students.module").then((m) => m.StudentsModule),
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
  exports: [RouterModule],
})
export class ScrmSchoolRoutingModule {}
