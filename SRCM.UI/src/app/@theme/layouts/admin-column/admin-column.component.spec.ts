import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminColumnComponent } from './admin-column.component';

describe('AdminColumnComponent', () => {
  let component: AdminColumnComponent;
  let fixture: ComponentFixture<AdminColumnComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AdminColumnComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AdminColumnComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
