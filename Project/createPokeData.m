function pokeData = createPokeData(T,pokeType,pokeStat,pokeExclusive)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if nargin <= 3
    pokeExclusive = false;
end

colNames = string(T.Properties.VariableNames);
%rawData = T.Variables;

pokeStats = ["HP","Attack","Defense","Sp_Atk","Sp_Def","Speed"]

%pokeType = "Electric";
%pokeStat = "Speed";

isType = (T.Type1 == pokeType)|(T.Type2==pokeType);
isExclusive = (T.Type2 == string());

%% TODO - Plot all


%%
% disp("These Pokemon:")
% disp(pokeNames(find(isType))')
% disp("are "+pokeType+" type.") 
% 
% disp("These Pokemon:")
% disp(pokeNames(find(isType & isExclusive))')
% disp("are exclusively "+pokeType+" type.") 

% Find all the pokemon of that type (i.e. find the rows):
rowInd = find(isType);
% Find the stat (column) of interest:
colInd = find(colNames == pokeStat);

% If you want to plot all the Pokemon, that's a special case:
if pokeType == "All"
    pokeData = table2array(T(:,colInd))
else
    pokeData = table2array(T(rowInd,colInd));
end


end