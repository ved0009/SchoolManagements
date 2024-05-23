import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { InstituteProfileComponent } from './institute-profile/institute-profile.component';
import { FeeParticularComponent } from './fee-particular/fee-particular.component';
import { GeneralSettingComponent } from './general-setting.component';
import { FeeStructureComponent } from './fee-structure/fee-structure.component';
import { DiscountTypeComponent } from './discount-type/discount-type.component';
import { NotFoundComponent } from '../../../pages/miscellaneous/not-found/not-found.component';
import { DetailsForFeeChallanComponent } from './details-for-fee-challan/details-for-fee-challan.component';
import { RulesAndRegulationComponent } from './rules-and-regulation/rules-and-regulation.component';
import { MarksGradingComponent } from './marks-grading/marks-grading.component';
import { ThemeAndLanguageComponent } from './theme-and-language/theme-and-language.component';
import { AccountSettingComponent } from './account-setting/account-setting.component';


const routes: Routes = [
  {
    path: "",
    component: GeneralSettingComponent,
    children: [
      {
        path: "schoolinfo",
        component: InstituteProfileComponent,
      },
      {
          path: "feeparticulars",
        component: FeeParticularComponent,
      },
      {


        path: "feestructure",
        component: FeeStructureComponent,
      },
      {
        path: "discounttype",
        component: DiscountTypeComponent,
      },
      {
        path: "bankdetails",
        component: DetailsForFeeChallanComponent,
      },

      {
        path: "rules",
        component: RulesAndRegulationComponent,
      },
      {
        path: "grading",
        component: MarksGradingComponent,
      },
      {
        path: "themesettings",
        component: ThemeAndLanguageComponent,
      },
      {
        path: "accountsetting",
        component: AccountSettingComponent,
      },
      {
        path: "",
        redirectTo: "schoolinfo",
        pathMatch: "full",
      },
      {
        path: "**",
        component: NotFoundComponent,
      },
    ],
  },
];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class GeneralSettingRoutingModule { }
