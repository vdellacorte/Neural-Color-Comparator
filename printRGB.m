function [] = printRGB(spectrum,titolo, windowPosition)
    spectrum = spectrum*100;
    rgb = roo2rgb(spectrum','srgb',380:1:800);
    fig = figure('visible', 'on');
    fig.OuterPosition = windowPosition;
    rect = rectangle('FaceColor', rgb);
    title(titolo);
end