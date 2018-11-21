clear();
load("IS_dataset.mat");
testNoise(spectra);

% FEATURE EXTRACTION

% per l'estrazione delle features dobbiamo dividere lo spettro in k range e
% per ciascun range trovare degli indicatori (mean, variance, skewness
% ecc.) che meglio approssimano ciascun range. 

% FEATURE SELECTION

%sequentialfs prende in ingresso la rete neurale, le feature estratte e ne
%seleziona le n migliori. Queste feature selezionate andranno in input alla
%rete neurale
