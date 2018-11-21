clear();
load("IS_dataset.mat");

numCopies = 5;

extendedSpectra = extendMasters(spectra, numCopies);

noisedCopies = createCopies(spectra, numCopies);
distances = createDistances(extendedSpectra, noisedCopies, numCopies);

featuresMaster = computeFeatures(extendedSpectra, 3, numCopies);
featuresCopies = computeFeatures(noisedCopies, 3, numCopies);

features = zeros(30, 1269*numCopies);
features(1:15, :) = featuresMaster;
features(16:30, :) = featuresCopies;

opt = statset('display', 'iter');
%[fs, history] = sequentialfs(@fs_trainAndGetMse, features', distances', 'cv', 'none', 'opt', opt, 'nfeatures', 16);


[mse,regr] = trainAndGetMse(features, distances);

