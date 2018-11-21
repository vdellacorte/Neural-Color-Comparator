function [mse] = fs_trainAndGetMse(features, realDistance)
    hiddenLayerSize = 10;
    net = fitnet(hiddenLayerSize);
    net.trainParam.showWindow = false;
    features = features';
    realDistance = realDistance';
    [net, tr] = train(net, features, realDistance);
    y = net(features);
    mse = perform(net, realDistance, y);
end
