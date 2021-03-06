import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LoginComponent } from './login.component';
import {ReactiveFormsModule} from '@angular/forms';
import {AuthenticationService} from '../../core/services/authentication.service';
import {MockAuthenticationService} from '../../testing/mock-authentication.service';
import {Router} from '@angular/router';
import {RouterStub} from '../../testing/router-stubs';

describe('LoginComponent', () => {
  let component: LoginComponent;
  let fixture: ComponentFixture<LoginComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LoginComponent ],
        imports: [ReactiveFormsModule],
        providers: [
            {
              provide: AuthenticationService, useClass: MockAuthenticationService
            },
            {
              provide: Router, useClass: RouterStub
            }
        ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LoginComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
