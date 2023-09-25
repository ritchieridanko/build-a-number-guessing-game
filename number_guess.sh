#!/bin/bash

# connect to db
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# ask the user for username
echo "Enter your username:"
read USERNAME

# generate a random secret number
SECRET_NUMBER=$((RANDOM % 1000 + 1))

# check if user already exists
USER_EXISTS=$($PSQL "SELECT username FROM players WHERE username = '$USERNAME'")

# if user does not exist
if [[ -z $USER_EXISTS ]]
then
  # create a new user to db
  NEW_USER=$($PSQL "INSERT INTO players(username) VALUES ('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # retrieve existing user's info from db
  TOTAL_GAMES=$($PSQL "SELECT COUNT(username) FROM games WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT total_guesses FROM games WHERE username = '$USERNAME' ORDER BY total_guesses LIMIT 1")
  echo "Welcome back, $USERNAME! You have played $TOTAL_GAMES games, and your best game took $BEST_GAME guesses."
fi

# count the attempts made
TOTAL_GUESS=0

# ask the user to guess a number
echo "Guess the secret number between 1 and 1000:"

while read GUESS_NUMBER
do
  ((TOTAL_GUESS++))

  # check if number is an integer
  if [[ $GUESS_NUMBER =~ ^-?[0-9]+$ ]]
  then

    # if guessed number is correct
    if [[ $GUESS_NUMBER == $SECRET_NUMBER ]]
    then
      echo "You guessed it in $TOTAL_GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"

      # document this game to db
      NEW_GAME=$($PSQL "INSERT INTO games(username, total_guesses) VALUES ('$USERNAME', '$TOTAL_GUESS')")
      break

    # if guessed number is higher
    elif [[ $GUESS_NUMBER > $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"

    # if guessed number is lower
    elif [[ $GUESS_NUMBER < $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    fi

  # back to asking the user if number is not an integer
  else
    echo "That is not an integer, guess again:"
  fi
done
