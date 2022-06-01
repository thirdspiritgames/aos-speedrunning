# AoS-speedrunning
This repository contains tools, scripts and information related to speedrunning Arietta of Spirits.

## Game state

The game reports the current state the game is in, at a fixed memory address using a human readable format. The following strings are used for different states in the game:

| Description                  | State string in memory             |
|------------------------------|------------------------------------|
| In main menu                 | SPEEDRUN_NONE                      |
| Difficulty selected          | SPEEDRUN_DIFFICULTY_SELECTED       |
|                              |                                    |
| Wooden Sword                 | SPEEDRUN_WOODEN_SWORD              |
| Defeat Wasp Queen            | SPEEDRUN_DEFEAT_WASP_QUEEN         |
| Dream Scene                  | SPEEDRUN_ARCO_SAVIOUR_LAND         |
| Meet Midri in the Woods      | SPEEDRUN_MEET_MIDRI_IN_THE_WOODS   |
| Defeat Huge Roamer           | SPEEDRUN_DEFEAT_HUGE_ROAMER        |
| Meet Minerva                 | SPEEDRUN_FIND_MINERVAS_HUT         |
| Defeat Root Plant boss       | SPEEDRUN_DEFEAT_ROOT_PLANT         |
| Obtain Herbicide             | SPEEDRUN_HERBICIDE_COMPLETE        |
| Fall from bridge             | SPEEDRUN_FALL_FROM_BRIDGE          |
| Find Hatch to Gibb's Hideout | SPEEDRUN_DISCOVER_GIBB_HATCH       |
| Meet Gibb                    | SPEEDRUN_MEET_GIBB                 |
| Cloaked Roamer               | SPEEDRUN_DEFEAT_CLOAKED_ROAMER     |
| Climb the ladders            | SPEEDRUN_LADDERS_CLIMBED           |
| Mine entrance                | SPEEDRUN_MINE_ENTRANCE             |
| Left Lever Activated         | SPEEDRUN_ACTIVATE_LEFT_MINE_LEVER  |
| Right Lever Activated        | SPEEDRUN_ACTIVATE_RIGHT_MINE_LEVER |
| Defeat Roamer Behemoth       | SPEEDRUN_DEFEAT_ROAMER_BEHEMOTH    |
| Minerva's Demise             | SPEEDRUN_MINERVA_CLOSURE           |
| Sunken Boss part 1           | SPEEDRUN_MEET_SUNKEN_REALM_BOSS    |
| Defeat Sunken Realm Boss     | SPEEDRUN_DEFEAT_LIMBO_BOSS         |
| Close Call                   | SPEEDRUN_CLOSE_CALL                |
|                              |                                    |
| Adventure's End              | SPEEDRUN_END_OF_AN_ADVENTURE       |


## Disabling cutscene dialogs

The following setting can be used to disable the cutscene dialogs from the game. 

Add/modify these lines to the `%localappdata%/AriettaOfSpirits/settings.ini` file.

```
[Debug]
skipdialog="1.000000"
```


## LiveSplit
Currently this repo provides support for the LiveSplit software. This is a third party solution, which can be downloaded here: https://livesplit.org/

### Splits

The splits file for LiveSplit can be found from the `splits` folder. This split file contains splits that work with the game state reporting, and also include icons for the different states.

### AutoSplit

An autosplitter script can be found from the `scripts` folder. Once configured, this automatically detects the changes in the game state.