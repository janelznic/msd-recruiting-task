import { Module } from '@nestjs/common';
import { ShipModule } from 'modules/ship/ship.module';
import { UserModule } from 'modules/user/user.module';

@Module({
  imports: [ShipModule, UserModule],
  controllers: [],
  providers: []
})
export class AppModule {}
