# Overall flow

## `#game_state ingame`
* 0: In lobby, waiting for the start of the game (including the 3 seconds for players to join)
* 1: In arena, waiting for the start of the game (5 seconds for preparation)
* 2: Playing
* 3: End of game

## `#timer_mode ingame`
* 0: increment
* 1: decrement

## markers
* `lobby`: representing the location of the lobby
* `lobby_prepare`: the center of the prepartion area (coordinate for the display)
* `lobby_spectate`: the center of the area for spectators (coordinate for the display)
* `ingame_spawn`: representing the location of the spawn in the playzone
* `playzone_center`: the location of the center of the playzone

## tags
* `ingame`: players playing the game
* `developer`: players developing or need to debug the system
* `out_of_range`: players outside of the lobby
* `non_adv`: players in not adventure mode
* `ready`: players ready to play
* `victory`: players who win the game (used for mode 2)

## function tags
* `jump:check_win`: check if the player wins in the current mode, all functions tagged with this tag would be called every tick when #game_state = 2