import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FeeParticularComponent } from './fee-particular.component';

describe('FeeParticularComponent', () => {
  let component: FeeParticularComponent;
  let fixture: ComponentFixture<FeeParticularComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FeeParticularComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FeeParticularComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
