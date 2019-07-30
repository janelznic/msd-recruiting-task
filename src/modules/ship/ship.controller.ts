import { Body, Controller, Get, Param, Post, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiUseTags } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { ShipDto } from './dto/ship.dto';
import { ShipService } from './ship.service';

@Controller('ships')
@ApiUseTags('ships')
@ApiBearerAuth()
export class ShipController {
  constructor(private readonly shipService: ShipService) {}

  @Get('/')
  async getShips() {
    try {
      return await this.shipService.getShips();
    } catch (e) {
      throw Error(e);
    }
  }

  @Post('/')
  @UseGuards(AuthGuard('bearer'))
  async addShip(@Body() shipObj: ShipDto) {
    try {
      return await this.shipService.addShip(shipObj);
    } catch (e) {
      throw Error(e);
    }
  }
}
