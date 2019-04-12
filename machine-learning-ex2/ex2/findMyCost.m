## Copyright (C) 2019 kat29
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} findMyCost (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: kat29 <kat29@DESKTOP-3M4HUS2>
## Created: 2019-04-03

function c = findMyCost(u, v)
  # c is the name of the return value, to be set within the function
  ## (no need for a return statement)
  # findMyCost is the name of the function
  ## the function is called by findMyCost(arg1, arg2), not by c
  # u and v are parameters
  
  if v == 1
     c = -log(u);
  elseif v == 0
     c = -log(1-u);
  else 
     fprintf('findMyCost: invalid parameters\n');
  end

    # no need for explicit return statement 
    # return value is the value of c at this point
endfunction



