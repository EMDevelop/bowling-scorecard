# bowling-scorecard

In this project I will be creating the logic behind a game of bowling for an individual player.

---

#### My Approach

I decided to map out the requirements into User Stories, breaking down the various rules and features of the game into testable and client readable step (see `User Stories`).

I have ordered the user stories in terms of complexity, each test will increase in complexity allowing while allowing my tests to be in keeping with the rules of the game.

Tests will provide an accurate assessment of the behavior of my application, I will not be testing specific implementation.

---

#### Planning

##### User Stories

```
As a Player
So that I can finish a game of bowling
I want the game to have 10 frames

As a Player
So that I can start a game of bowling
I want to be able to knock over 10 pins in a roll

As a Player
so that I can play again
I want the pins to reset after every frame

As a Player
So that I can have a second chance to hit 10 pins
I want to be able to have a second roll

As a Player
So that I know how well I am playing
I want to be able to keep track of my scores

As a Player
So that I can move onto my next turn after a knocking all 10 pins in one go
I want my current frame to be marked complete after a strike

As a Player
So that everyone can see how I played
I want to be informed of my final score

As a Player
So that I can be rewarded for hitting all 10 pins in one go
I want to receive a bonus for a Strike, my roll score should be incremented by the number of pins knocked in the next 2 rolls

As a Player
So that I can be rewarded for hitting all 10 pins in 2 goes (in a frame)
I want to receive a bonus for my Spare, my roll score should be incremented by the number of pins knocked in the next 1 roll


```

```


As a Player
So that I know how well I am playing
I want to know my score so far after each frame

As a Player
So that I can finish the game
My 10th frame should go for no longer than 3 rolls in total

As a Player
So that I can brag to my friends for hitting 12 strikes
I want to be informed that I scored a Perfect Game

As a Player
So that I can laugh at my performance hitting 20 zeros
I want to be informed that I scored a Gutter Game
```

##### Domain / Class Model

`class: Player`
|Methods|Attributes|
|-|-|
|roll()||
|current_score(Game.calculate)||

`class: Game`
|Methods|Attributes|
|-|-|
|start_game()|NUMBER_OF_PINS Constant = 10|
|setup_frames()|
|calculate_score()|NUMBER_OF_FRAMES Constant = 10|
|end_game()|@frames Array[frame,frame]|
||@player|

`class: Frame`
|Methods|Attributes|
|-|-|
|play()|
|end_frame?()|MAX_ROLLS Constant = 3|
||@frame_number|
||@first_roll_score Integer|
||@second_roll_score Integer|
||@remaining_pins Integer|

##### Creating Code

- Project Setup
  - `git init`
  - `rspec --init`
  - `mkdir lib`
  - `touch ./spec/game_spec.rb`
  - `echo "require 'game'" >> ./spec/game_spec.rb`
  - `touch ./lib/game.rb`
  - this didn't work `echo "class Game"\ && echo "end" >> ./lib/game.rb`

##### Questions

- How well did I conform to Behavioral testing? I feel like at parts I had no choice but to test instance variables
