import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ScrmDialongComponent } from './scrm-dialong.component';

describe('ScrmDialongComponent', () => {
  let component: ScrmDialongComponent;
  let fixture: ComponentFixture<ScrmDialongComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ScrmDialongComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ScrmDialongComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
