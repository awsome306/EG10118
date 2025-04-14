function [typesList] = getTypesList(pokeTable)
% GETTYPESLIST Get the list of Types
    % I don't know all the types, and maybe they will add more. 
    % So, I need a way to check the whole list of types, and check if the
    % current type matches any I've seen already. 
    % Then if it doesn't, I'll record it to the list. 

T = pokeTable;

bigListOfTypes  = string(T.Type1);
typesSeenAlready= ""; % Init with nothing
seenAlready     = false;

% Iterate through all the Pokemon:
for iRow = 1:length(bigListOfTypes)
    % Iterate throught the list of types seen already:
    for jCol = 1:length(typesSeenAlready)
        % If it's been seen, update the variable to reflect that.
        if bigListOfTypes(iRow) == typesSeenAlready(jCol)
            seenAlready = true;
        end
    end
    % If the current type hasn't been seen yet, add it to the list:
    if ~seenAlready
        typesSeenAlready = [typesSeenAlready,bigListOfTypes(iRow)]; %#ok<AGROW>
    end
    % Update the variable so that we actually check the next Pokemon!
    seenAlready = false;
end

% Alphabetize the list:
pokeTypes = sort(typesSeenAlready);
typesList = pokeTypes;

end