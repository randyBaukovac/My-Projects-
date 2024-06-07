# math.random and set min max
$randomNumber = Get-Random -Minimum 1 -Maximum 50

# allowed guesses var
$maxTries = 5

# set variable for # of guesses 
$guessCount = 0

Write-Host "Welcome to the Guessing Game!"

# loop
do {
  # write to host and ask user for the guess
  Write-Host "Enter your guess (1-100):"
  $userGuess = Read-Host

  # Convert user input to integer
  $userGuess = [int]$userGuess

  # Check if guess is correct
  if ($userGuess -eq $randomNumber) {
    Write-Host "You are a stud! you guessed correctly in $($guessCount + 1) tries."
    break;  # break if they get the correct answer
  } elseif ($userGuess -lt $randomNumber) {
    Write-Host "higher"
  } else {
    Write-Host "lower"
  }

  # add to guess count if reaches makes break 
  $guessCount++
} while ($guessCount -lt $maxTries)

# Out of guesses message
if ($guessCount -eq $maxTries) {
  Write-Host "you are not that good at this are you: $randomNumber"

}
