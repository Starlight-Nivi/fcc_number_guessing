#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

# Get user data
USER_DATA=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_DATA ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  echo "$USER_DATA" | while IFS="|" read GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

echo "Guess the secret number between 1 and 1000:"
GUESS_COUNT=0

while true
do
  read GUESS
  
  # Check if input is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    ((GUESS_COUNT++))
    if [[ $GUESS -eq $SECRET_NUMBER ]]
    then
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
      break
    elif [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
  fi
done

# Update database after win
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
UPDATE_GAMES=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE user_id=$USER_ID")
CURRENT_BEST=$($PSQL "SELECT best_game FROM users WHERE user_id=$USER_ID")

if [[ -z $CURRENT_BEST || $GUESS_COUNT -lt $CURRENT_BEST ]]
then
  UPDATE_BEST=$($PSQL "UPDATE users SET best_game = $GUESS_COUNT WHERE user_id=$USER_ID")
fi
