import { Injectable } from '@nestjs/common';
import { Ship } from './interfaces/ship.interface';
import { ShipDto } from './dto/ship.dto';
import ShipModel from './ship.model';

@Injectable()
export class ShipService {
  public getShips = async (): Promise<Ship[]> => {
    try {
      const ships: Ship[] = ShipModel.findAll().then(ship => {
        return ship;
      });

      return ships;
    } catch (error) {
      throw new Error('Error fetching ships from database');
    }
  }

  public addShip = async (shipObj: ShipDto): Promise<Ship> => {
    try {
      const ship: Ship = ShipModel.create(shipObj).then(log => log);
      return ship;
    } catch (error) {
      throw new Error('Error add ship to database');
    }
  }
}
