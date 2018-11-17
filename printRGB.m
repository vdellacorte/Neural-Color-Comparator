function [] = printRGBfromSpectrum(spectrum,titolo)
    spectrum = spectrum*100;
    rgb = roo2rgb(spectrum','srgb',380:1:800);
    fig = figure('visible', 'on');
    rect = rectangle('FaceColor', rgb);
    title(titolo);
    hold on
end