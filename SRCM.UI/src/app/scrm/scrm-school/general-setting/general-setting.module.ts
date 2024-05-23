import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { GeneralSettingRoutingModule } from "./general-setting-routing.module";
import { GeneralSettingComponent } from "./general-setting.component";
import { InstituteProfileComponent } from "./institute-profile/institute-profile.component";
import { FeeParticularComponent } from "./fee-particular/fee-particular.component";
import { FeeStructureComponent } from "./fee-structure/fee-structure.component";
import { DiscountTypeComponent } from "./discount-type/discount-type.component";
import { DetailsForFeeChallanComponent } from "./details-for-fee-challan/details-for-fee-challan.component";
import { RulesAndRegulationComponent } from "./rules-and-regulation/rules-and-regulation.component";
import { MarksGradingComponent } from './marks-grading/marks-grading.component';
import { ThemeAndLanguageComponent } from './theme-and-language/theme-and-language.component';
import { AccountSettingComponent } from './account-setting/account-setting.component';

@NgModule({
  declarations: [
    GeneralSettingComponent,
    InstituteProfileComponent,
    FeeParticularComponent,
    FeeStructureComponent,
    DiscountTypeComponent,
    DetailsForFeeChallanComponent,
    RulesAndRegulationComponent,
    MarksGradingComponent,
    ThemeAndLanguageComponent,
    AccountSettingComponent,
  ],
  imports: [CommonModule, GeneralSettingRoutingModule],
})
export class GeneralSettingModule {}
