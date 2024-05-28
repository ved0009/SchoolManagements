import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SubjectRoutingModule } from './subject-routing.module';
import { SubjectComponent } from '../subject/subject.component';
import { ClassessWithSubjectsComponent } from './classess-with-subjects/classess-with-subjects.component';
import { AssignSubjectComponent } from './assign-subject/assign-subject.component';
import { NbActionsModule, NbInputModule, NbListModule } from '@nebular/theme';
import { ThemetagsimportModule } from '../../../themetagsimport/themetagsimport.module';
import { ReactiveFormsModule } from '@angular/forms';


@NgModule({
  declarations: [
    SubjectComponent,
    ClassessWithSubjectsComponent,
    AssignSubjectComponent
  ],
  imports: [
    CommonModule,
    SubjectRoutingModule,
    NbInputModule,
    NbListModule,
    NbActionsModule,
    NbActionsModule,
    ThemetagsimportModule,
    ReactiveFormsModule
  ]
})
export class SubjectModule { }
