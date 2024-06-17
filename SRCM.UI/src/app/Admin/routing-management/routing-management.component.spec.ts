import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RoutingManagementComponent } from './routing-management.component';

describe('RoutingManagementComponent', () => {
  let component: RoutingManagementComponent;
  let fixture: ComponentFixture<RoutingManagementComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RoutingManagementComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(RoutingManagementComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
