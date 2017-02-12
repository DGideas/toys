VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form goonline 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "老年人上网程序:来自:梦想者"
   ClientHeight    =   11070
   ClientLeft      =   -150
   ClientTop       =   435
   ClientWidth     =   15720
   Icon            =   "goonline.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   11070
   ScaleWidth      =   15720
   StartUpPosition =   1  '所有者中心
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command4 
      Caption         =   "更新"
      Height          =   375
      Left            =   5160
      TabIndex        =   5
      Top             =   120
      Width           =   2535
   End
   Begin VB.CommandButton Command3 
      Caption         =   "前进"
      Height          =   375
      Left            =   3720
      TabIndex        =   4
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "后退"
      Height          =   375
      Left            =   2280
      TabIndex        =   3
      Top             =   120
      Width           =   1335
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   9975
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   15495
      ExtentX         =   27331
      ExtentY         =   17595
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
   Begin VB.CommandButton Command1 
      Caption         =   "选择网站"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "By:WANTWIZ"
      Height          =   375
      Left            =   7920
      TabIndex        =   6
      Top             =   120
      Width           =   3615
   End
   Begin VB.Label Label1 
      Caption         =   "网页错误:0个"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   10680
      Width           =   14415
   End
End
Attribute VB_Name = "goonline"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim errornum As Long
Private Sub Command1_Click()
weblab.Show
End Sub

Private Sub Command2_Click()
On Error GoTo errorwwl
WebBrowser1.GoBack
On Error GoTo errorwwl
errorwwl:
errornum = errornum + 1
Label1.Caption = "网页错误:" & errornum & "个"
If errornum = 15 Then
error.Show
End If
End Sub

Private Sub Command3_Click()
On Error GoTo errorwwl
WebBrowser1.GoForward
On Error GoTo errorwwl
errorwwl:
errornum = errornum + 1
Label1.Caption = "网页错误:" & errornum & "个"
If errornum = 15 Then
error.Show
End If
End Sub

Private Sub Command4_Click()
update.Show
End Sub

Private Sub Form_Load()
errornum = 0
End Sub
