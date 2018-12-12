clear();
load("IS_dataset.mat");

numCopies = 5;
k = 3;

extendedSpectra = extendMasters(spectra, numCopies);

noisedCopies = createCopies(spectra, numCopies);

%plotSpectraAgainstCopies(spectra, noisedCopies, 120, numCopies);

distances = createDistances(extendedSpectra, noisedCopies, numCopies);



featuresMaster = computeFeatures(extendedSpectra, k, numCopies);
featuresCopies = computeFeatures(noisedCopies, k, numCopies);

%plotSpectraAgainstFeatures(spectra, featuresMaster, 1);

%features = zeros(k*10, 1269*numCopies);
%features(1:(k*5), :) = featuresMaster;
%features(((k*5)+1):(k*10), :) = featuresCopies;

%opt = statset('display', 'iter');
%[fs, history] = sequentialfs(@fs_trainAndGetMse, features', distances', 'cv', 'none', 'opt', opt, 'nfeatures', 16);

%selectedFeatures = features( boolean([0   1   0   0   0   0   1   0   0   1   0   1   0   0   1   0   1   0   0   0   0   1   0   1   1   0   0   0   1   0]), :);

%[mse,regr] = trainAndGetMse(selectedFeatures, distances);

