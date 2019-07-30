import { Module } from '@nestjs/common';
import { AuthModule } from '../auth/auth.module';
import { PassportModule } from '@nestjs/passport';
import { ShipService } from './ship.service';
import { ShipController } from './ship.controller';

@Module({
  imports: [AuthModule, PassportModule],
  providers: [ShipService],
  controllers: [ShipController]
})
export class ShipModule {}
