/* (filename).vala
 *
 * Copyright (C) 2010  Pontus Östlund
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Author:
 * 	Pontus Östlund <pontus@poppa.se>
 */

int main(string[] args)
{
  string[] env = Environment.list_variables();

  foreach (string e in env)
    stdout.printf("Env: %s: %s\n", e, Environment.get_variable(e));

  stdout.printf("\n");
  stdout.printf("User config dir:   %s\n", Environment.get_user_config_dir());
  stdout.printf("User data dir:     %s\n", Environment.get_user_data_dir());
  stdout.printf("User special dir:  %s\n", 
                Environment.get_user_special_dir(UserDirectory.DOWNLOAD));

  return 0;
}