clear; clc

letter = 'minds'; % word to be scrambled

mixed = randperm(5); % scrambling the word

mixLet = letter([mixed]) % setting variable for mixed word
while 1==1
    userGuess = input('Guess full word: ') % asking for users guess for scrambled word

    if userGuess == letter % checking if user guess is correct
        fprintf('Congrats')
    else
        fprintf('Try again')
    end
end
