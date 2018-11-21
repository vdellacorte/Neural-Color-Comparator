clear();
load("IS_dataset.mat");

numCopies = 5;

extendedSpectra = zeros(421, 1269*numCopies);

for i= 1:1269
   
    for j = 1:numCopies
        
        extendedSpectra
    end
    
end


    
% FEATURE EXTRACTION

% per l'estrazione delle features dobbiamo dividere lo spettro in k range e
% per ciascun range trovare degli indicatori (mean, variance, skewness
% ecc.) che meglio approssimano ciascun range. 

% FEATURE SELECTION

%[fs, history] = sequentialfs(@trainAndGetMse, features, distance', 'cv', 'none', 'opt', opt, 'nfeatures', 12);

%sequentialfs prende in ingresso la rete neurale, le feature estratte e ne
%seleziona le n migliori. Queste feature selezionate andranno in input alla
%rete neurale
