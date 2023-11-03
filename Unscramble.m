% Cole Stoumbaugh
clear;clc

% This script required the addon of "Text Analytics Toolbox"

dict = fastTextWordEmbedding; % adding a dictionary of all english words
%letters = 'ynaroc';     % input for the letters to be unscrambled
letters = input('Input scrambled letters (make sure to use apostrophes before and after letters)')
% the above can be exchanged for the current 'letters' variable to work with any user input scrambled word 

word = perms(letters);  % finding all possible permutations of the scrambled letters

n = 1;  % setting arbitrary variable 'n' to 1 for iterations in for loop

for x = 1:length(word)  % beginning for loop to run through all permutations of scrambled letters

    tf = isVocabularyWord(dict,word(x,:));  % determining if current permutation of letters is a real word

    if tf == 1  % if the permutation was a real word

        solution(n,:) = word(x,:);  % adding word to possible solution matrix

        fprintf('The unscrambled word could be: %s \n',solution(n,:)) % printing possible solutions to scrambled word

        n = n+1;    % iterating arbitrary variable
        
    end
end
