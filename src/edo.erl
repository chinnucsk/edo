% Copyright (C) 2013 Johannes Huning
% This file is part of edo.
%
% edo is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% edo is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
%
% You should have received a copy of the GNU Lesser General Public License
% along with edo.  If not, see <http://www.gnu.org/licenses/>.

-module (edo).
-export ([start/0, start/1, another_fun/0, foo/0]).


-spec start() -> no_return().
start() -> start([]).

-spec start([string()]) -> no_return().
start(_Args0) ->
    io:format("Arguments: ~p~n", [init:get_plain_arguments()]),
    erlang:halt().
