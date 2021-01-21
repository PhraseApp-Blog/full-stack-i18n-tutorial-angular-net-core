import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Car } from '../models/car';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class CarService {
  public currentCulture = new BehaviorSubject<string>('en');

  constructor(private http: HttpClient) {}

  getProductDetails(culture: string) {
    return this.http.get<Car[]>(`/api/${culture}/car`);
  }
}
