
### GAMETYPE
global const GAMETYPE_MINI = "minishogi"
global const GAMETYPE_STANDARD = "standard"
global const GAMETYPE_CHU = "chu"
global const GAMETYPE_TEN = "ten"

global const gameType = getType(ARGS[1])

if gameType == GAMETYPE_STANDARD #"standard"
  global const BOARD_DIMENSIONS = 9 #BOARD_DIMENSIONS
  global const PROMOTION_TOP = 7
  global const PROMOTION_BOTTOM = 3
elseif gameType == GAMETYPE_MINI
  global const BOARD_DIMENSIONS = 5
  global const PROMOTION_TOP = 5
  global const PROMOTION_BOTTOM = 1
elseif gameType == GAMETYPE_CHU
  global const BOARD_DIMENSIONS = 12
  global const PROMOTION_TOP = 9
  global const PROMOTION_BOTTOM = 4
elseif gameType == GAMETYPE_TEN
  global const BOARD_DIMENSIONS = 16
  global const PROMOTION_TOP = 12
  global const PROMOTION_BOTTOM = 5
else
  assert(false)
end


global const WHITE = "White"
global const BLACK = "Black"



#Types of moves
global const MOVETYPE_MOVEMENT = "move"
global const MOVETYPE_DROP = "drop"
global const MOVETYPE_RESIGN = "resign"


#Options in moves
global const timeLimits = false #PLACEHOLDING VALUE
global const timeIncrement = false #PLACEHOLDING VALUE




global const DIFFICULTY_NORMAL = "normalDiff"
global const DIFFICULTY_HARD = "hardDiff"
global const DIFFICULTY_SUICIDE = "suicideDiff"
global const DIFFICULTY_PROTRACTED = "protractedDiff"
global const DIFFICULTY_RANDOM = "randomDiff"

global const difficulty = DIFFICULTY_NORMAL #PLACEHOLDING VALUE
