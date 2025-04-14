function pokeDistFunc(app, GenNum, plotPercentage)
% POKEDISTFUNC Generate and Plot the distribution
%   app includes app.pokeTable and app.pokeColorDict
pokeTable = app.pokeTable;
pokeColorDict = app.pokeColorDict;
pokeTypes = app.pokeTypes;

if nargin == 1
    GenNum = 1;
end
if nargin <=2
    plotPercentage = false;
end

% Create a table that's filtered by Generation:
subPokeTable = pokeTable((pokeTable.Generation == GenNum),:);

% Initialize the numPoke vector:
numPoke = zeros([length(pokeTypes), 1]);

% Count how many Pokemon there are of each type
for iType = 1:length(numPoke)
    numPoke(iType) = length(createPokeData(subPokeTable,pokeTypes(iType),"HP"));
end

% Plot:

cAxes = app.UIAxes2;

if plotPercentage
    b = bar(cAxes,pokeTypes,numPoke./height(subPokeTable).*100); %#ok<UNRCH>
    ylabel(cAxes,'Amount of Pokemon [%]')
elseif ~plotPercentage
    b = bar(cAxes,pokeTypes,numPoke); %#ok<UNRCH>
    ylabel(cAxes,'Number of Pokemon')
end

% WIP: Add unique colors to the bar chart
%b(:).CData = hex2rgb(pokeColors);

tit = sprintf("Generation %i",GenNum);
subTit =sprintf("%i Pokemon in total",height(subPokeTable));

title(cAxes,tit)
subtitle(cAxes,subTit)

if app.GridLinesCheckBox.Value == true
    grid(cAxes,"on")
else
    grid(cAxes,"off")
end