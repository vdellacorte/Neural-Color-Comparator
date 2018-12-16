clear();
load("IS_dataset.mat");

numCopies = 5;
k = 3;

extendedSpectra = extendMasters(spectra, numCopies);

noisedCopies = createCopies(spectra, numCopies);

%plotSpectraAgainstCopies(spectra, noisedCopies, 120, numCopies);

distances = createDistances(extendedSpectra, noisedCopies, numCopies);

labSpectrum = zeros(3,1269*numCopies);

for i=1:1269*numCopies
    
    spectrum = extendedSpectra(:,i)*100;
    labSpectrum(:,i) = roo2lab(spectrum',[],380:1:800)';
end

%correctedDeltaE = calculateDeltaECorrection(labSpectrum, distances, numCopies)';


featuresMaster = computeFeatures(extendedSpectra, k, numCopies);
featuresCopies = computeFeatures(noisedCopies, k, numCopies);


%features = zeros(k*10, 1269*numCopies);
%features(1:(k*5), :) = featuresMaster;
%features(((k*5)+1):(k*10), :) = featuresCopies;

% DA MODIFICARE SE CAMBI LE FEATURES NEL FILE COMPUTEFEATURES.m
features = zeros(k*4, 1269*numCopies);
features(1:(k*2), :) = featuresMaster;
features(((k*2)+1):(k*4), :) = featuresCopies;


opt = statset('display', 'iter');
[fs, history] = sequentialfs(@fs_trainAndGetMse, features', distances', 'cv', 'none', 'opt', opt, 'nfeatures', 8);

%[fs, history] = sequentialfs(@fs_trainAndGetMse, features', correctedDeltaE', 'cv', 'none', 'opt', opt, 'nfeatures', 16);

selectedFeatures = features( logical([1   1   1   0   1   1   1   1   0   1   0   0]), :);

[mse,regr] = trainAndGetMse(selectedFeatures, distances);
%[mse,regr] = trainAndGetMse(features, distances);

%selectedFeatures = features( logical([1   1   0   0   1   1   1   0   1   0   1   1   1   1   0   1   1   0   0   0   0   1   0   1   1   0   0   1   0   0]), :);
%[mse,regr] = trainAndGetMse(selectedFeatures, correctedDeltaE);
