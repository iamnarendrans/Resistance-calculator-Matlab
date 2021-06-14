% Copyright @ 2010 by www.matrixlab-examples.com
% All rights reserved

function update_value(handles)
b = handles.b;

b_ttl = (b(1) + b(2)) * b(3);

if b_ttl < 1000
    b_str = num2str(b_ttl);
end

% Format the number to make it more readable
% Consider to format only values >= 1000 k ohms
bs1 = num2str(b(1)/10);
bs2 = num2str(b(2));
switch b(3)
    case 1e2
        b_str = [bs1 '.' bs2 ' K'];
    case 1e3
        b_str = [bs1 bs2 ' K'];
    case 1e4
        b_str = [bs1 bs2 '0 K'];        
    case 1e5
        b_str = [bs1 '.' bs2 ' M'];
    case 1e6
        b_str = [bs1 bs2 ' M'];
    case 1e7
        b_str = [bs1 bs2 '0 M'];
    case 1e8
        b_str = [bs1 '.' bs2 ' G'];
    case 1e9
        b_str = [bs1 bs2 ' G'];
end 
% Actual display of the value in the 'static text'
set(handles.text2, 'String', b_str);

