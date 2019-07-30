import { Test, TestingModule } from '@nestjs/testing';
import { ShipController } from './ship.controller';
import { ShipService } from './ship.service';

describe('Ship Controller', () => {
  let module: TestingModule;
  beforeAll(async () => {
    module = await Test.createTestingModule({
      controllers: [ShipController],
      providers: [ShipService]
    }).compile();
  });
  it('should be defined', () => {
    const controller: ShipController = module.get<ShipController>(ShipController);
    expect(controller).toBeDefined();
  });
});
