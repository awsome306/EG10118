function pokeCorrFunction(app)
% POKECORRFUNCTION Generates a plot of the correlation between two
% statistics for a given type of Pokemon.
% If a Pokemon is weak in one stat, will it be strong, weak, or neutral in
% another? How does this correlation changed based on the Pokemon's "type"?
%
% Visual: A regular plot, (with a trendline and confidence interval)
% User Interactions:
% * Select X and Y stats
% * Filter by Type, or select all Pokemon

% % Removed a for loop that iterated through ALL the types 
% for i = 2:length(pokeTypes)
%     pokeType = pokeTypes(i);
% end

pokeType= app.PokemonTypeDropDown.Value;
statX   = app.XStatDropDown.Value;
statY   = app.YStatDropDown.Value;

T = app.pokeTable;
pokeColorDict = app.pokeColorDict;

pokeX   = createPokeData(T,pokeType,statX);
pokeY   = createPokeData(T,pokeType,statY);


% Plot to UI AXES:
cAxes = app.UIAxes; % Set of app axes to plot on
plot(cAxes,pokeX,pokeY,'x','DisplayName',pokeType,'Color',pokeColorDict(pokeType))
xlabel(cAxes,statX)
ylabel(cAxes,statY)
legend(cAxes,'Location','northwest')
grid(cAxes,"on")
hold(cAxes,"on")

% Create and plot trendline
fitOrder = 1;
p = polyfit(pokeX,pokeY,fitOrder);
xTrendVals = min(pokeX):1:max(pokeX);
yTrendVals = polyval(p,xTrendVals);

plot(cAxes,xTrendVals,yTrendVals,'--','LineWidth',2,'DisplayName','TrendLine','Color',pokeColorDict(pokeType))

hold(cAxes,"off")
