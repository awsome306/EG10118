function pokePic = getPokemonPicture(pokedexNum)
%UNTITLED Summary of this function goes here
%   Retrieve a png asset of a Pokemon from the official Pokemon website


baseURL     = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/';
URLEnding   = '.png';
pokeURL     = num2str(pokedexNum,'%03.f');

picURL = [baseURL,pokeURL,URLEnding];

[pokePic,pokeMap,pokeAlpha] = imread(picURL);

%%% Display the picture
% close all
% figure()
% image(pokePic)

end