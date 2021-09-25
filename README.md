# bowling-scorecard

In this project I will be creating the logic behind a game of bowling for an individual player.

#### Overview of functionality

- Count & Sum scores of bowling for 1 player
- There are 10 frames
- Each frame, a player tries to knock down 10 pins
- Every frame, player can roll 1 or 2 times
  - depends on strikes / spares
- score = number of pins knocked down + bonuses for strikes / spares
- after every frame, pins are reset

#### Bowling rules

- Strikes

  - Knocking down ALL pins in the FIRST roll
  - The frame ENDS as there are NO MORE PINS
  - the bonus is the number of pins knocked down by the next 2 rolls.
  - That might be the next frame, unless the player rolls another strike

- Spares
  - Knocking down ALL pins in TWO rolls
  - bonus = number of pins knocked down on the next roll (FIRST roll of NEXT frame)
- 10th frame

  - This is the LAST frame
  - If STRIKE or SPARE
    - 10th game can only have 3 ROLLS MAX

- Gutter Game = no pins knocked (20 0 scores)
- Perfect Game = 12 strikes

#### My Approach

I decided to map out the requirements into User Stories, breaking down the various rules and features of the game into testable and client readable step (see `User Stories`).

I have ordered the user stories in terms of complexity, each test will increase in complexity allowing while allowing my tests to be in keeping with the rules of the game.

Tests will provide an accurate assessment of the behavior of my application, I will not be testing specific implementation.

##### User Stories

```
As a Player
So that I can start a game of bowling
I want to be able to knock over 10 pins in a roll

As a Player
so that I can play again
I want the pins to reset after every game

As a Player
So that I can have a second chance to hit 10 pins
I want to be able to have a second roll

As a Player
So that I can finish a game of bowling
I want the game to have 10 frames

As a Player
So that I know how well I am playing
I want to know my score so far after each roll

As a Player
So that I can be rewarded for hitting all 10 pins in one go
I want to receive a bonus for a Strike, my roll score should be incremented by the number of pins knocked in the next 2 rolls

As a Player
So that I can move onto my next turn after a knocking all 10 pins in one go
I want my current frame to be marked complete after a strike

As a Player
So that I can be rewarded for hitting all 10 pins in 2 goes (in a frame)
I want to receive a bonus for my Spare, my roll score should be incremented by the number of pins knocked in the next 1 roll

As a Player
So that I can finish the game
My 10th frame should go for no longer than 3 rolls in total

As a Player
So that everyone can see how I played
I want to be informed of my final score

As a Player
So that I can brag to my friends for hitting 12 strikes
I want to be informed that I scored a Perfect Game

As a Player
So that I can laugh at my performance hitting 20 zeros
I want to be informed that I scored a Gutter Game


```

##### Diagramming
