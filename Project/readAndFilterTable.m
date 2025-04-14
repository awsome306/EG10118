function outputTable = readAndFilterTable()
%% Read the Data and Clean It for Processing
% Reads the data. Removes MEGA Pokemon. Converts "True" string to Boolean. 
% Read the Data
% * Author: Joseph Heston
% * Date: 4/13/2025
%

%% Do NOT Clear the Workspace

%% Use T2 (the simple table)
T = readtable("data"+filesep+"pokemonB.csv");
colNames = string(T.Properties.VariableNames);
%rawData = T.Variables; % Doesn't work when the data types are different

%% Clean the Data - Remove MEGAs
% Remove "Mega Pokemon" From the Data Set

% Init. row counter and list of the Pokemon removed.
iRow = 1;
rmList = [];

while iRow <= height(T)
    % The space after "Mega " matters! (Meganium is a false positive)
    if contains(T.Name(iRow),'Mega ') %& ~(contains(T.Name(iRow),'Meganium'))
        rmList = [rmList;T(iRow,"Name")]; %#ok<AGROW>
        T(iRow,:) = [];
    else
        iRow = iRow +1;
    end
end

% Used during debugging:
%rmList
%clear rmList

%% Clean Up the data types
T.Legendary = (string(T.Legendary) == "True")

%% Finalize Output
outputTable = T;
end