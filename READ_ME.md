### Classes
- Player,
- Game,
- Turn,
- Question

#### Player
- state 
  - name_of_player
  - number_of_lives
- behaviour
  - set_number_of_lives
  - answer the question when prompted
  

#### Game
  - intitialize the game/ two players
  - initalize each question
  - should check players turn
  - should give current score
  - should be the main game loop
  - should check if lives > 0
  - should update current_player after each loop
  - state  
    - current_player 
  - behaviour
    - set_current_player
  - output_result- after every turn ,
  - end the game

#### Question
  - behavior
    - generate_question, 
    - get_answer, 
    - compare_answer
    - if incorrect- update the current_player score

when game terminates , next player is the winner

ask q
verify answer (.to_i) ---> convert to integer
check score (lives)
change currrent_player

set counter - odd/even to find the turns


