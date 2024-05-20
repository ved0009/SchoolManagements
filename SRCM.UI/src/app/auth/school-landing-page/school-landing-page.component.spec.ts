import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SchoolLandingPageComponent } from './school-landing-page.component';

describe('SchoolLandingPageComponent', () => {
  let component: SchoolLandingPageComponent;
  let fixture: ComponentFixture<SchoolLandingPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SchoolLandingPageComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SchoolLandingPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
