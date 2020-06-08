function varargout = gr3(varargin)
% GR3 MATLAB code for gr3.fig
%      GR3, by itself, creates a new GR3 or raises the existing
%      singleton*.
%
%      H = GR3 returns the handle to a new GR3 or the handle to
%      the existing singleton*.
%
%      GR3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GR3.M with the given input arguments.
%
%      GR3('Property','Value',...) creates a new GR3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gr3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gr3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gr3

% Last Modified by GUIDE v2.5 02-Jun-2020 22:36:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gr3_OpeningFcn, ...
                   'gui_OutputFcn',  @gr3_OutputFcn, ...
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


% --- Executes just before gr3 is made visible.
function gr3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gr3 (see VARARGIN)

% Choose default command line output for gr3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.pushbutton1,'string','Построить','Fontsize',12);
set(handles.pushbutton2,'string','Очистить','Fontsize',12);
set(handles.pushbutton3,'string','Построить','Fontsize',12);
set(handles.pushbutton4,'string','Очистить','Fontsize',12);
set(handles.text2,'string','y=exp(-x^2)','Fontsize',12);
set(handles.text3,'string','y=sin(x)','Fontsize',12);

% UIWAIT makes gr3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gr3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes1);
x=-2:0.2:2;
axh=handles.axes1;
y=exp(-x.^2); 
plot(x,y);grid(axh, 'on');
xlabel('x');ylabel('y');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes1);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes2);
x1=0:0.1:4*pi;
axh1=handles.axes2;
y1=sin(x1); 
plot(x1,y1);grid(axh1, 'on');
xlabel('x');ylabel('y');



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);
