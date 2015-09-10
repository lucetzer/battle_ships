This is the battleships game, here's a Domain model:

Ship

* Takes in the name, position, coordinates, direction and size
* Checks if coordinates are out of bounds
* If coordinates are not out of bounds, it will log the coordinates and use the direction and size convert the coordinates into a ship in an array representation e.g. 'A1', :S, 2 will be [A1, A2]
* If a part of the ship has been hit, it will remove the coordinates from the ship's positions
* Tells you when your ship is sunk

Player

* Player is created and has a board
* Places a ship and sends this message to the board
* Fires coordinates
* Reports missed shots
* Reports hits

Board

* Checks for any overlapping before placing the ship on the board
* logs the all the ships on the board, shots received, hits and misses
* gives the status of the game

Game (in progress)

* Two players
* Each player gets a set of ships
* Players sets coordinates
* Starts the game
* logs turns
