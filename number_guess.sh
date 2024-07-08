#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

random_number=$((1 + RANDOM % 1000))
counter=1
echo "Enter your username:"
read NAME
USERNAME=$($PSQL "select username from users where username = '$NAME'")
if [[ -z $USERNAME ]]
then
  $($PSQL "insert into users(username) values('$NAME')") > /dev/null 2>&1
  echo "Welcome, $NAME! It looks like this is your first time here."
  USER_ID=$($PSQL "select user_id from users where username = '$NAME'")
  GAMES_PLAYED=$($PSQL "select count(best_game) from games where user_id = $USER_ID")
  BEST_GUESS=$($PSQL "select min(best_game) from games where user_id = $USER_ID")
else
  USER_ID=$($PSQL "select user_id from users where username = '$NAME'")
  GAMES_PLAYED=$($PSQL "select count(best_game) from games where user_id = $USER_ID")
  BEST_GUESS=$($PSQL "select min(best_game) from games where user_id = $USER_ID")

  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
fi
  echo "Guess the secret number between 1 and 1000:"
  read GUESS

  while [[ $GUESS -ne $random_number ]]; do
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    elif [[ $GUESS -lt $random_number ]]
    then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $random_number ]]
    then
      echo "It's lower than that, guess again:"
    fi
    ((counter++))
    read GUESS
  done
    $($PSQL "insert into games(user_id, best_game) values($USER_ID, $counter)") > /dev/null 2>&1
    echo "You guessed it in $counter tries. The secret number was $random_number. Nice job!"
