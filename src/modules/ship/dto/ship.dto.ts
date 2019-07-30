import { ApiModelProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class ShipDto {
  @IsNotEmpty()
  @ApiModelProperty()
  readonly name: string;

  @IsNotEmpty()
  @ApiModelProperty()
  readonly speed: string;
}
