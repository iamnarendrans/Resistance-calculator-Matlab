% Copyright @ 2010 by www.matrixlab-examples.com
% All rights reserved

% Initialize resistor bands
% Show 0 ohm +/- 5%
function init_bands(handles)

axes(handles.axes1);
image(imread('black.jpg'));
axis off;

axes(handles.axes2);
image(imread('black.jpg'));
axis off;

axes(handles.axes3);
image(imread('black.jpg'));
axis off;

axes(handles.axes4);
image(imread('gold.jpg'));
axis off;
