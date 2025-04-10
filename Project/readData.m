%% Read the Data and Clean It for Processing
% Read the Data
% * Author: Joseph Heston
% * Date: 4/5/2025
%

%% Clear the Workspace
clear, clc, close all

%% Load the Data 
% As a table.
% Working with Tables:
% Subscripting into a table using one subscript (as in t(i)) is not
% supported. Specify a row subscript and a variable subscript, as in
% t(rows,vars). To select variables, use t(:,i) or for one variable
% t.(i). To select rows, use t(i,:).

%T1 = readtable("data\pokemonA.csv");
%T2 = readtable("data\pokemonB.csv");

T1 = readtable("data/pokemonA.csv");
T2 = readtable("data/pokemonB.csv");


% Preview tables:
head(T1)
head(T2)

%% Use T2 (the simple table)
T = T2;
head(T)
colNames = string(T.Properties.VariableNames);

%rawData = T.Variables; % Doesn't work when the data types are different

%% Part 0: Filter Out Mega-Pokemon
% Remove "Mega Pokemon" From the Data Set

% Init. row counter:
iRow = 1;
c
rmList = [];
while iRow <= height(T)
    if contains(T.Name(iRow),'Mega') & ~(contains(T.Name(iRow),'Meganium'))
        rmList = [rmList;T(iRow,"Name")];
        T(iRow,:) = [];
    else
        iRow = iRow +1;
    end
end

rmList
T2 = T;

%% Part0a: Gen 1 Subset
% Limit analysis to Gen 1 for testing:
T = T(find(T.Generation == 1),:)

%% Part 0aa: Parse the Data
pokeNames = string(T.Name);
%% Part 0b: Get the list of Types
% I don't know all the types, and maybe they will add more. 
% So, I need a way to check the whole list of types, and check if the
% current type matches any I've seen already. Then, if it doesn't, I should
% record it to the list. 

bigListOfTypes      = string(T{:,"Type1"});
typesSeenAlready    = [""]; % Init with nothing
seenAlready     = false;

% Iterate through all the Pokemon:
for iRow = 1:length(bigListOfTypes)
    % Iterate throught the list of types seen already:
    for jCol = 1:length(typesSeenAlready)
        % If it's been seen, update the variable
        if bigListOfTypes(iRow) == typesSeenAlready(jCol)
            seenAlready = true;
        end
    end
    % If the current type hasn't been seen yet, add it to the list:
    if ~seenAlready
        typesSeenAlready = [typesSeenAlready,bigListOfTypes(iRow)];
    end
    % Update the variable so that we actually check the next Pokemon!
    seenAlready = false;
end

% Alphabetize & Finalize the list:
pokeTypes = sort(typesSeenAlready);

% Now that the list is sorted, let's assign a list of colors to use later:
pokeColors = ["#000000",%Null
            "#1dcb99", % Bug
            "#6602ee", % Dragon
            "#cca902", % Elec
            "#f7b3f4", % Fairy
            "#374756", % Fighting
            "#e06211", % Fire
            "#501068", % Ghost
            "#106819", % Grass
            "#685510", % Ground
            "#24dad5", % Ice
            "#2874a6", % Normal
            "#b000e8", % Poison
            "#d600e8", % Psychic
            "#281758", % Rock
            "#3498db" % Water
            ];

pokeColorDict = dictionary(pokeTypes,pokeColors');

% Clean-up:
clear iRow jCol seenAlready typesSeenAlready bigListOfTypes

%% Question 01: Correlation
% Are Pokemon of a particular type stronger/weaker than others? 
% Is this strength/weakness greater for a particular stat?
%
% Visual: 
% Histogram of number of pokemon vs. Stat value, plotting for each type
% User Interactions: 
% * Select Stat from Dropdown
% * Select Types from Bubble-list
% * Filter by Single vs. Double typing
% * Filter by Evolution stage (From another data set)




%% Question 02: Poke-Power Creep
% Have Pokemon gotten stronger as the franchise has grown? 

% Count the number of legendaries in each generation, 
% But really, look at the distribution of stats in each generation


%% Question 03: What would be the best Pokemon?
% Instead of looking at the total, what if I take a weighted-average based
% on the mean stats of the legendary pokemon

%% Question 04: How many Pokemon are there in each type?
% How does this number vary with Generation?

% REUSE YOUR POKEDATA FUNCTION, since you already have it!
% This took me literally 5 minutes during Andrew's class

GenNum = 1;
plotPercentage = true;

T = T2(find(T2.Generation == GenNum),:)
for iType = 1:length(pokeTypes)
    numPoke(iType) = length(createPokeData(T,pokeTypes(iType),"HP"));
end

figure()

if plotPercentage
    b = bar(pokeTypes,numPoke./height(T).*100)
    ylabel('Amount of Pokemon [%]')
elseif ~plotPercentage
    b = bar(pokeTypes,numPoke)
end

% WIP: Add unique colors to the bar chart
%b(:).CData = hex2rgb(pokeColors);

tit = sprintf("Generation %i",GenNum);
subTit =sprintf("%i Pokemon in total",height(T));
title(tit)
subtitle(subTit)
grid on
% If I wanted to compare generations, I could tweek my createPokeData
% function slightly to accept GEN as an argument, then I could look at this
% for each generation


%% Question 05: Is there a correlation between strong and weak?
% If a Pokemon is weak in one stat, will it be strong, weak, or neutral in
% another? How does this correlation changed based on the Pokemon's "type"?
%
% Visual: A regular plot, (with a trendline and confidence interval)
% User Interactions:
% * Select X and Y stats
% * Filter by Type, or select all Pokemon

% 
% for i = 2:length(pokeTypes)
%     pokeType = pokeTypes(i);
% end


pokeType= "Ground";
statX   = "Attack";
statY   = "Defense";

pokeX   = createPokeData(T,pokeType,statX);
pokeY   = createPokeData(T,pokeType,statY);

close all
figure()
plot(pokeX,pokeY,'x','DisplayName',pokeType,'Color',pokeColorDict(pokeType))
xlabel(statX)
ylabel(statY)
legend()
grid on

hold on


% Create and plot trendline
fitOrder = 1;
p = polyfit(pokeX,pokeY,fitOrder);
xTrendVals = min(pokeX):1:max(pokeX);
yTrendVals = polyval(p,xTrendVals);

hold on
plot(xTrendVals,yTrendVals,'b--','LineWidth',2,'DisplayName','TrendLine')



%% Sort and Filter the Data By Type

% disp("The types are:")
% disp(listOfTypes)
% disp("The stats are:")
% disp(colNames)
clc
pokeStats = ["HP","Attack","Defense","Sp_Atk","Sp_Def","Speed"]

pokeType = "Electric";
pokeStat = "Speed";

isType = (T.Type1 == pokeType)|(T.Type2==pokeType);
isExclusive = (T.Type2 == string());

disp("These Pokemon:")
disp(pokeNames(find(isType))')
disp("are "+pokeType+" type.") 

disp("These Pokemon:")
disp(pokeNames(find(isType & isExclusive))')
disp("are exclusively "+pokeType+" type.") 

% Find all the pokemon of that type (i.e. find the rows):
rowInd = find(isType);
% Find the stat (column) of interest:
colInd = find(colNames == pokeStat);

pokeData = table2array(T(rowInd,colInd));

% Plot it

binEdges = [20 40 60 80 100 120 140];
h = histogram(pokeData,binEdges,'DisplayName',pokeType);
grid on
xlabel(pokeStat)
ylabel("Number of Pokemon")
legend()
%tit = sprintf("")
hold on


% Stats about stats:


% Plot all for reference:
%histogram(table2array(T(:,colIndex)));


%% Plot Stats by type:
function plotPoke(T,pokeType,pokeStats)
% FUNCTION_NAME Short Desc
% Longer Description goes here
% If only one argument, return all stats. 

if nargin == 2
    
end

for statNum = 1:length(pokeStats)
    pokeStat   = T(:,pokeStats(iStat))
    T(:,pokeStat)
end

end