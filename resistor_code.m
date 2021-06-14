% Copyright @ 2010 by www.matrixlab-examples.com
% All rights reserved
function varargout = resistor_code(varargin)
% RESISTOR_CODE M-file for resistor_code.fig
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Last Modified by GUIDE v2.5 09-Jan-2010 19:48:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resistor_code_OpeningFcn, ...
                   'gui_OutputFcn',  @resistor_code_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before resistor_code is made visible.
function resistor_code_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resistor_code (see VARARGIN)

% Choose default command line output for resistor_code
clc
handles.output = hObject;

% Initialize color of bands
init_bands(handles);
% Initialize and save resistor value
b(1) = 0;
b(2) = 0;
b(3) = 1;
handles.b = b;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = resistor_code_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% Hints: 
% contents = get(hObject,'String') returns menu1 contents as cell array
% contents{get(hObject,'Value')} returns selected item from menu1
contents = get(hObject,'String');
v = contents{get(hObject,'Value')};
% Update color of appropriate band
update_color(1, v, handles);
% Update resistor value
handles.b(1) = str2num(v(1)) * 10;
update_value(handles);
% Save data
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% Hints: 
% contents = get(hObject,'String') returns menu1 contents as cell array
% contents{get(hObject,'Value')} returns selected item from menu1
contents = get(hObject,'String');
v = contents{get(hObject,'Value')};
% Update color of appropriate band
update_color(2, v, handles);
% Update resistor value
handles.b(2) = str2num(v(1));
update_value(handles);
% Save data
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% Hints: 
% contents = get(hObject,'String') returns menu1 contents as cell array
% contents{get(hObject,'Value')} returns selected item from menu1
contents = get(hObject,'String');
v = contents{get(hObject,'Value')};
% Update color of appropriate band
update_color(3, v, handles);
% Update resistor value
handles.b(3) = 10^(str2num(v(1)));
update_value(handles);
% Save data
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% Hints: 
% contents = get(hObject,'String') returns menu1 contents as cell array
% contents{get(hObject,'Value')} returns selected item from menu1
contents = get(hObject,'String');
% Update color of appropriate band
update_color(4, contents{get(hObject,'Value')}, handles);
% Save data
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), ...
        get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
