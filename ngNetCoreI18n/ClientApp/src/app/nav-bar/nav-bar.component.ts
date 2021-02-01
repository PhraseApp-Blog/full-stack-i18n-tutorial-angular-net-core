import { Component } from '@angular/core';
import { BsDropdownConfig } from 'ngx-bootstrap/dropdown';
import { TranslocoService } from '@ngneat/transloco';
import { CarService } from '../services/car.service';

@Component({
  selector: 'app-nav-bar',
  templateUrl: './nav-bar.component.html',
  styleUrls: ['./nav-bar.component.scss'],
  providers: [
    {
      provide: BsDropdownConfig,
      useValue: { isAnimated: true, autoClose: true },
    },
  ],
})
export class NavBarComponent {
  siteLanguage = 'English';

  languageList = [
    { code: 'en', label: 'English' },
    { code: 'hi', label: 'Hindi' },
  ];

  constructor(
    private carService: CarService,
    private translocoService: TranslocoService
  ) {}

  changeSiteLanguage(language: string): void {
    this.translocoService.setActiveLang(language);
    this.carService.currentCulture.next(language);

    this.siteLanguage = this.languageList.find(
      (f) => f.code === language
    ).label;
  }
}
