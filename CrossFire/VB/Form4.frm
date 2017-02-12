VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form4 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CrossFire"
   ClientHeight    =   11040
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   15270
   ControlBox      =   0   'False
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   11040
   ScaleWidth      =   15270
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BPC 
      Caption         =   "爆破模式"
      Enabled         =   0   'False
      Height          =   375
      Left            =   5880
      TabIndex        =   9
      Top             =   2160
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Frame room 
      BackColor       =   &H00000000&
      Caption         =   "选择模式"
      ForeColor       =   &H00E0E0E0&
      Height          =   6975
      Left            =   3240
      TabIndex        =   7
      Top             =   1560
      Visible         =   0   'False
      Width           =   11295
      Begin VB.Frame GR 
         BackColor       =   &H00000000&
         Caption         =   "个人歼灭"
         ForeColor       =   &H00E0E0E0&
         Height          =   2775
         Left            =   360
         TabIndex        =   13
         Top             =   1200
         Visible         =   0   'False
         Width           =   6375
         Begin VB.CommandButton GRR 
            Caption         =   "返回"
            Height          =   255
            Left            =   240
            TabIndex        =   16
            Top             =   360
            Width           =   1215
         End
         Begin VB.CommandButton GRS 
            Caption         =   "进入游戏"
            Height          =   375
            Left            =   4200
            TabIndex        =   15
            Top             =   1920
            Width           =   2055
         End
         Begin VB.ListBox List1 
            Height          =   960
            ItemData        =   "Form4.frx":1042
            Left            =   360
            List            =   "Form4.frx":1067
            TabIndex        =   14
            Top             =   840
            Width           =   5895
         End
      End
      Begin VB.CommandButton TWC 
         Caption         =   "突围模式"
         Enabled         =   0   'False
         Height          =   375
         Left            =   9120
         TabIndex        =   12
         Top             =   600
         Width           =   2055
      End
      Begin VB.CommandButton TSC 
         Caption         =   "特殊战"
         Enabled         =   0   'False
         Height          =   375
         Left            =   6960
         TabIndex        =   11
         Top             =   600
         Width           =   2055
      End
      Begin VB.CommandButton TDC 
         Caption         =   "TD团队模式"
         Enabled         =   0   'False
         Height          =   375
         Left            =   4800
         TabIndex        =   10
         Top             =   600
         Width           =   2055
      End
      Begin VB.CommandButton GRC 
         Caption         =   "GR个人歼灭"
         Height          =   375
         Left            =   480
         TabIndex        =   8
         Top             =   600
         Width           =   2055
      End
   End
   Begin SHDocVwCtl.WebBrowser BGM 
      Height          =   30
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   25
      ExtentX         =   44
      ExtentY         =   44
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
   Begin VB.Timer sptimer 
      Interval        =   1000
      Left            =   1320
      Top             =   5520
   End
   Begin VB.Timer apperr 
      Interval        =   1000
      Left            =   960
      Top             =   5520
   End
   Begin VB.Timer timetimer 
      Interval        =   1000
      Left            =   600
      Top             =   5520
   End
   Begin VB.Timer lt 
      Interval        =   4000
      Left            =   240
      Top             =   5520
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Loading All Texturs..."
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
      Height          =   375
      Left            =   8760
      TabIndex        =   0
      Top             =   10560
      Width           =   6255
   End
   Begin VB.Label cfroom 
      BackStyle       =   0  'Transparent
      Caption         =   "CrossFireVer010"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   9000
      TabIndex        =   5
      Top             =   360
      Width           =   6015
   End
   Begin VB.Label cfverinfo 
      BackStyle       =   0  'Transparent
      Caption         =   "CF刀锋战士版本让您体验使用""刀锋""角色的快乐。"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   1095
      Left            =   120
      TabIndex        =   4
      Top             =   6120
      Visible         =   0   'False
      Width           =   2655
   End
   Begin VB.Label CFVer 
      BackStyle       =   0  'Transparent
      Caption         =   "CF穿越火线Ver010刀锋战士II版本"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   3120
      TabIndex        =   3
      Top             =   1200
      Visible         =   0   'False
      Width           =   5535
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      ForeColor       =   &H00E0E0E0&
      Height          =   375
      Left            =   14880
      TabIndex        =   2
      Top             =   120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
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
      Left            =   6240
      TabIndex        =   1
      Top             =   720
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Image Image1 
      Height          =   3735
      Left            =   0
      Picture         =   "Form4.frx":10DC
      Stretch         =   -1  'True
      Top             =   0
      Width           =   3015
   End
   Begin VB.Image Image3 
      Height          =   1215
      Left            =   5160
      Picture         =   "Form4.frx":1EACA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   3615
   End
   Begin VB.Image Image2 
      Height          =   1215
      Left            =   0
      Picture         =   "Form4.frx":24E5C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   6015
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim loadzt As Byte '加载
Public errornum As String '错误代码
Dim sp As String '位置
Dim bgm1 As String '背景音乐
Dim bgm2 As String '背景音乐
Dim bgm10 As String '背景音乐
Dim wf As String '背景音乐
Private Sub apperr_Timer() '错误提示
If errornum = "0x_1" Then 'Unload错误0x_1
MsgBox "CF客户端错误提示0x_1", vbCritical, "CF"
errornum = "0"
End If
If errornum = "ldok" Then '加载完
loadzt = 128
errornum = "0"
End If
End Sub

Private Sub CFVer_Click()
MsgBox "CF版本为:" & CFVer.Caption, vbSystemModal, "CF版本信息"
End Sub

Private Sub Form_Load() '程序初始化
bgm1 = "/bgm1.htm" '设置music
bgm2 = "/bgm2.htm" '设置music
bgm10 = "/bgm10.htm" '设置music
wf = "/wf.htm" '设置music
CFVer.Caption = "CF穿越火线Ver010刀锋战士II版本" '版本
loadzt = 1 '加载状态
errornum = "0" '没有错误
sp = "穿越火线大厅" '初始位置
Unload EF
End Sub

Private Sub Form_Unload(Cancel As Integer) '恢复
Shell "explorer.exe"
End Sub

Private Sub GRC_Click()
GR.Visible = True
sp = GRC.Caption
End Sub

Private Sub GRR_Click()
GR.Visible = False
sp = "穿越火线大厅"
End Sub

Private Sub GRS_Click()
GRForm.Show
BGM.Navigate App.Path & wf
End Sub

Private Sub Label3_Click()
errornum = "0x_1" 'Unload0x_1错误
Unload Form5 '卸载安全系统
End Sub

Private Sub lt_Timer() '加载
If loadzt = 1 Then
Label1.Caption = "Loading Exciting Visual Files..."
loadzt = 2
ElseIf loadzt = 2 Then
Label1.Caption = "Loading Reserved Files..."
loadzt = 3
ElseIf loadzt = 3 Then
Label1.Caption = "Setup 3D Engine Files..."
loadzt = 4
BGM.Navigate App.Path & bgm1 '背景音乐TEST
BGM.Navigate App.Path & bgm2 '背景音乐TEST
BGM.Navigate App.Path & bgm10 '背景音乐TEST
BGM.Navigate App.Path & wf '背景音乐TEST
BGM.Navigate App.Path & bgm1 '设置BGSound
ElseIf loadzt = 4 Then
loadzt = 100 '加载完
errornum = "ldok" '加载完
Image1.Top = 2160
Label1.Visible = False
lt.Interval = 0
Image2.Visible = True
Image3.Visible = True
Label2.Visible = True
cfverinfo.Visible = True
Label3.Visible = True
CFVer.Visible = True
BGM.Navigate App.Path & bgm1 '背景音乐
room.Visible = True
BPC.Visible = True
End If
End Sub

Private Sub sptimer_Timer()
cfroom.Caption = sp
End Sub

Private Sub timetimer_Timer()
Label2.Caption = Time
End Sub
