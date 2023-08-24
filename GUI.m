function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 28-Jul-2020 20:56:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
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
global im1 im2
axes(handles.axes1);
[fn1,pn1]=uigetfile('*.jpg','select cc view');
im1=imread(strcat(pn1,fn1));
imshow(im1);
axis equal;
axis off;
title('CC VIEW','fontsize',15);
axes(handles.axes2);
[fn2,pn2]=uigetfile('*.jpg','select mlo view');
im2=imread(strcat(pn2,fn2));
imshow(im2);
axis equal;
axis off;
title('MLO VIEW','fontsize',15);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im1 im2 bw1 bw2
% bw1=rgb2gray(im1);
bw1=adapthisteq(im1);
%figure, imshow(bw1);
axes(handles.axes3);
imshow(bw1);
bw2=adapthisteq(im2);
%figure, imshow(bw2);
axes(handles.axes4);
imshow(bw2);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global  bw1 bw2 c1 c2
I = im2double(bw1);
[J,K] = regiongrowing(I);
%figure, imshow(K);
axes(handles.axes5);
imshow(K);
title('SEGMENTED REGION','fontsize',15);
c1 = imcrop(K);
%figure, imshow(c1);
axes(handles.axes6);
%axis equal;
%axis off;
imshow(c1);
title('CROPPED','fontsize',15);
I = im2double(bw2);
[J,K] = regiongrowing(I);
%figure, imshow(K);
axes(handles.axes7);
imshow(K);
title('SEGMENTED REGION','fontsize',15);
c2 = imcrop(K);
%figure, imshow(c2);
axes(handles.axes8);
imshow(c2);
title('CROPPED','fontsize',15);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c1 c2
I = im2double(c1);
GLCM2 = graycomatrix(I,'Offset',[2 0;0 2]);
stats = glcmfeatures1(GLCM2,0);
% stats = sFeat;
statsTable = struct2table(stats)
%statsArray = table2array(statsTable)
%statsArray'
I = im2double(c2);
GLCM2 = graycomatrix(I,'Offset',[2 0;0 2]);
stats = glcmfeatures1(GLCM2,0);
% statsTable = struct2table(stats)
% stats = sFeat;
% statsTable = struct2table(stats)
% stats = sFeat;
statsTable = struct2table(stats)
%statsArray = table2array(statsTable)
%statsArray'
