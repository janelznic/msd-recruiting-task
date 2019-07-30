import { Controller, Get, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiUseTags } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { UserService } from './user.service';

@Controller('users')
@ApiBearerAuth()
@ApiUseTags('ships')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Get('/')
  @UseGuards(AuthGuard('bearer'))
  async getUsers() {
    try {
      return await this.userService.getUsers();
    } catch (e) {
      throw Error(e);
    }
  }
}
