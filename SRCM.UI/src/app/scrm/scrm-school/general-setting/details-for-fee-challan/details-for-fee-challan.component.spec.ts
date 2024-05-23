import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DetailsForFeeChallanComponent } from './details-for-fee-challan.component';

describe('DetailsForFeeChallanComponent', () => {
  let component: DetailsForFeeChallanComponent;
  let fixture: ComponentFixture<DetailsForFeeChallanComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DetailsForFeeChallanComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(DetailsForFeeChallanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
