import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ThemeAndLanguageComponent } from './theme-and-language.component';

describe('ThemeAndLanguageComponent', () => {
  let component: ThemeAndLanguageComponent;
  let fixture: ComponentFixture<ThemeAndLanguageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ThemeAndLanguageComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ThemeAndLanguageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
