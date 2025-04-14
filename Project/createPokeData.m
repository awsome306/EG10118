function pokeData = createPokeData(T,pokeType,pokeStat,pokeExclusive)
%CREATEPOKEDATA Take an array of Pokemon data filtered by type and
%individual stats. 
%   Detailed explanation goes here

% For reference, the list of all the stats is:
%pokeStats = ["Total","HP","Attack","Defense","Sp_Atk","Sp_Def","Speed"]

% If only two inputs are used, assume the user doesn't care about single
% vs. dual typing. 
if nargin <= 3
    pokeExclusive = false;
end

% Get a 'logical' array of whether or not a Pokemon belongs to the type:
isType = (string(T.Type1) == pokeType)|(string(T.Type2)==pokeType);
% If a Pokemon has only one typing, the second type is blank:
isExclusive = (string(T.Type2) == string());

%%
% disp("These Pokemon:")
% disp(pokeNames(find(isType))')
% disp("are "+pokeType+" type.") 
% 
% disp("These Pokemon:")
% disp(pokeNames(find(isType & isExclusive))')
% disp("are exclusively "+pokeType+" type.") 

%%

% Find all the pokemon of that type (i.e. find the rows)
if pokeExclusive == false
    rowInd = find(isType);
elseif  pokeExclusive == true
    rowInd = find(isType&isExclusive);
end

% Find the stat (column) of interest:
colNames = string(T.Properties.VariableNames);
colInd = find(colNames == pokeStat);

% If you want to plot all the Pokemon, that's a special case:
if pokeType == "All" || pokeType == ""
    pokeData = table2array(T(:,colInd));
else
    pokeData = table2array(T(rowInd,colInd));
end


end