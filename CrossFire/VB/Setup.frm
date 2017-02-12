VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Setup 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "设置"
   ClientHeight    =   6720
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6000
   Icon            =   "Setup.frx":0000
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6720
   ScaleWidth      =   6000
   StartUpPosition =   2  '屏幕中心
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   495
      Left            =   600
      TabIndex        =   4
      Top             =   3360
      Width           =   5055
      ExtentX         =   8916
      ExtentY         =   873
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Timer TESTMusic 
      Left            =   0
      Top             =   3480
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   1170
      Hidden          =   -1  'True
      Left            =   0
      TabIndex        =   2
      Top             =   1440
      Width           =   6015
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "检测线路音乐(点此)"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2760
      Width           =   5655
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "浏览程序文件(获得最新版本:wangwanlin2468@foxmail.com)"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   1200
      Width           =   5655
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "穿越火线设置窗口"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   600
      Width           =   5655
   End
   Begin VB.Image CFpic 
      Height          =   1215
      Left            =   0
      Picture         =   "Setup.frx":1042
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6015
   End
End
Attribute VB_Name = "Setup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim bgm1 As String '背景音乐
Dim bgm2 As String '背景音乐
Dim bgm10 As String '背景音乐
Dim wf As String '背景音乐
Dim test As Long 'testnumber

Private Sub Form_Load()
test = 0
End Sub

Private Sub Label3_Click()
Dim msgtest
msgtest = MsgBox("测试吗?", vbYesNo, "Mr.CFDebugger") 'CFDebugger
If msgtest = vbYes Then
TESTMusic.Interval = 3000
Label3.Caption = "测试中如发现问题则说明缺少文件"
Else
MsgBox "用户主动取消操作(CFMr.Debugger错误16_0)", vbExclamation, "CFMr.Debugger"
End If
End Sub

Private Sub TESTMusic_Timer()
bgm1 = "/bgm1.htm" '设置music
bgm2 = "/bgm2.htm" '设置music
bgm10 = "/bgm10.htm" '设置music
wf = "/wf.htm" '设置music
If test = 0 Then
WebBrowser1.Navigate App.Path & bgm1
test = 1
ElseIf test = 1 Then
WebBrowser1.Navigate App.Path & bgm2
test = 2
ElseIf test = 2 Then
WebBrowser1.Navigate App.Path & bgm10
test = 3
ElseIf test = 3 Then
WebBrowser1.Navigate App.Path & wf
test = 4
ElseIf test = 4 Then
Label3.Caption = "检测线路音乐(点此)"
WebBrowser1.Navigate "about:blank"
Text = 0
TESTMusic.Interval = 0
End If
End Sub
