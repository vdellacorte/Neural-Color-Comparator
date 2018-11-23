selection =  boolean([1   1   1   0   0   0   1   1   0   1   0   0   0   1   0   0   1   1   0   1   1   1   0   1   0   0   0   0   0   1]);
selectedFeatures = features(selection, :);
[mse,regr] = trainAndGetMse(selectedFeatures, distances);