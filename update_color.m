% Copyright @ 2010 by www.matrixlab-examples.com
% All rights reserved

function update_color(ax, val, handles)
% Select the appropriate place to update
switch ax
    case 1
        axes(handles.axes1);
    case 2
        axes(handles.axes2);
    case 3
        axes(handles.axes3);
    case 4
        axes(handles.axes4);
end 
 
% Choose the correct image to display
color = val(5 : length(val));
image(imread([color '.jpg']));
axis off;
