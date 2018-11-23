clear();
load("IS_dataset.mat");

numCopies = 5;
k = 4;

extendedSpectra = extendMasters(spectra, numCopies);

noisedCopies = createCopies(spectra, numCopies);
distances = createDistances(extendedSpectra, noisedCopies, numCopies);

featuresMaster = computeFeatures(extendedSpectra, k, numCopies);
featuresCopies = computeFeatures(noisedCopies, k, numCopies);

features = zeros(k*10, 1269*numCopies);
features(1:(k*5), :) = featuresMaster;
features(((k*5)+1):(k*10), :) = featuresCopies;

opt = statset('display', 'iter');
[fs, history] = sequentialfs(@fs_trainAndGetMse, features', distances', 'cv', 'none', 'opt', opt, 'nfeatures', 10);

%selectedFeatures = features( boolean([0   1   0   0   0   0   1   0   0   1   0   1   0   0   1   0   1   0   0   0   0   1   0   1   1   0   0   0   1   0]), :);

%[mse,regr] = trainAndGetMse(selectedFeatures, distances);

