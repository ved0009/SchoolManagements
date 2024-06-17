import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import {
  NbAccordionModule,
  NbActionsModule,
  NbButtonModule,
  NbCalendarModule,
  NbCardModule,
  NbCheckboxModule,
  NbContextMenuModule,
  NbDatepickerModule,
  NbIconModule,
  NbInputModule,
  NbListModule,
  NbRadioModule,
  NbRouteTabsetModule,
  NbSelectModule,
  NbStepperModule,
  NbTabsetModule,
  NbTreeGridModule,
  NbUserModule,
} from "@nebular/theme";
import { FormsRoutingModule } from "../pages/forms/forms-routing.module";
import { ThemeModule } from "../@theme/theme.module";
import { LayoutRoutingModule } from "../pages/layout/layout-routing.module";
import { ReactiveFormsModule } from "@angular/forms";
import { TablesRoutingModule } from "../pages/tables/tables-routing.module";
import { Ng2SmartTableModule } from "ng2-smart-table";

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    ThemeModule,
    NbInputModule,
    NbCardModule,
    NbButtonModule,
    NbActionsModule,
    NbUserModule,
    NbCheckboxModule,
    NbRadioModule,
    NbDatepickerModule,
    FormsRoutingModule,
    NbSelectModule,
    NbIconModule,
    NbTabsetModule,
    NbRouteTabsetModule,
    NbStepperModule,
    NbListModule,
    LayoutRoutingModule,
    NbAccordionModule,
    NbTreeGridModule,
    TablesRoutingModule,
    Ng2SmartTableModule,
  ],
  exports: [
    CommonModule,
    ThemeModule,
    NbInputModule,
    NbCardModule,
    NbButtonModule,
    NbActionsModule,
    NbUserModule,
    NbCheckboxModule,
    NbRadioModule,
    NbDatepickerModule,
    FormsRoutingModule,
    NbSelectModule,
    NbIconModule,
    NbTabsetModule,
    NbRouteTabsetModule,
    NbStepperModule,
    NbListModule,
    LayoutRoutingModule,
    NbAccordionModule,
    NbTreeGridModule,
    TablesRoutingModule,
    Ng2SmartTableModule,
  ],
})
export class ThemetagsimportModule {}
