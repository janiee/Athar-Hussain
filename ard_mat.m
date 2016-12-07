function varargout = ard_mat(varargin)
% ARD_MAT MATLAB code for ard_mat.fig
%      ARD_MAT, by itself, creates a new ARD_MAT or raises the existing
%      singleton*.
%
%      H = ARD_MAT returns the handle to a new ARD_MAT or the handle to
%      the existing singleton*.
%
%      ARD_MAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARD_MAT.M with the given input arguments.
%
%      ARD_MAT('Property','Value',...) creates a new ARD_MAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ard_mat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ard_mat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ard_mat

% Last Modified by GUIDE v2.5 07-Dec-2016 22:49:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ard_mat_OpeningFcn, ...
                   'gui_OutputFcn',  @ard_mat_OutputFcn, ...
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


% --- Executes just before ard_mat is made visible.
function ard_mat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ard_mat (see VARARGIN)

% Choose default command line output for ard_mat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
clear all;
global a;
a=arduino('COM3');
a.pinMode(13,'OUTPUT');


% UIWAIT makes ard_mat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ard_mat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in led_on.
function led_on_Callback(hObject, eventdata, handles)
% hObject    handle to led_on (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a;
a.digitalWrite(13,1);


% --- Executes on button press in led_off.
function led_off_Callback(hObject, eventdata, handles)
% hObject    handle to led_off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a;

a.digitalWrite(13,0);
