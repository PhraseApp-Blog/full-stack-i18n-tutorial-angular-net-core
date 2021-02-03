import { Component, OnInit } from '@angular/core';
import { Car } from '../models/car';
import { CarService } from '../services/car.service';

@Component({
  selector: 'app-car',
  templateUrl: './car.component.html',
  styleUrls: ['./car.component.scss'],
})
export class CarComponent implements OnInit {
  public carData: Car[];
  private culture: string;

  constructor(private carService: CarService) { }

  ngOnInit(): void {
    this.carService.currentCulture.subscribe((currentCulture) => {
      this.culture = currentCulture;
      this.getProductDetails();
    });
  }

  getProductDetails() {
    this.carService
      .getProductDetails(this.culture)
      .subscribe((carData) => (this.carData = carData));
  }
}
