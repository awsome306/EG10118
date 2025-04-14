function pokeColorDict = matchTypesAndColors(pokeTable)
%% MATCHTYPESANDCOLORS Output a dictionary that matches types to colors
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

% Now that the list is sorted, let's assign a list of colors to use later:
pokeColors = [
            "#000000", ...Null
            "#1dcb99", ...Bug
            "#524e9b", ...Dark
            "#6602ee", ...Dragon
            "#cca902", ...Elec
            "#f7b3f4", ...Fairy
            "#374756", ...Fighting
            "#e06211", ...Fire
            "#A98FF3", ...Flying
            "#501068", ...Ghost
            "#106819", ...Grass
            "#685510", ...Ground
            "#24dad5", ...Ice
            "#A8A77A", ...Normal
            "#b000e8", ...Poison
            "#d600e8", ...Psychic
            "#281758", ...Rock
            "#577784", ...Steel
            "#3498db"  ...Water
            ];

pokeColorDict = dictionary(pokeTypes,pokeColors);
end