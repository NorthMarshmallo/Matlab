function varargout = gr2(varargin)
% GR2 MATLAB code for gr2.fig
%      GR2, by itself, creates a new GR2 or raises the existing
%      singleton*.
%
%      H = GR2 returns the handle to a new GR2 or the handle to
%      the existing singleton*.
%
%      GR2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GR2.M with the given input arguments.
%
%      GR2('Property','Value',...) creates a new GR2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gr2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gr2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gr2

% Last Modified by GUIDE v2.5 03-Jun-2020 00:18:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gr2_OpeningFcn, ...
                   'gui_OutputFcn',  @gr2_OutputFcn, ...
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

% --- Executes just before gr2 is made visible.
function gr2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gr2 (see VARARGIN)

% Choose default command line output for gr2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
bg=handles.uibuttongroup1;
set(handles.pushbutton1,'string','Вычисление','Fontsize',20);
set(bg,'Title','Группа переключателей','Fontsize',10);
global r1 r2
r1 = uicontrol(bg,'Style',...
                  'checkbox',...
                  'String','График синуса',...
                  'Position',[11 130 140 22],'Fontsize',12);
             
r2 = uicontrol(bg,'Style','checkbox',...
                  'String','График косинуса',...
                  'Position',[10 60 160 30],'Fontsize',12);
% This sets up the initial plot - only do when we are invisible
% so window can get raised using gr2.

% UIWAIT makes gr2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gr2_OutputFcn(hObject, eventdata, handles)
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
global r1 r2
cla;
axes(handles.axes2);
hold on
x=0:0.01:4*pi;
y1=plot(x,sin(x),'b'); grid on;
y2=plot(x,cos(x),'g');
if r1.Value==1
    y1.HandleVisibility='off';
end
if r2.Value==1
    y2.HandleVisibility='off';
end
cla;
hold off
if r1.Value==1
    y1.HandleVisibility='on';
end
if r2.Value==1
    y2.HandleVisibility='on';
end

% hObject    handle to uibuttongroup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
