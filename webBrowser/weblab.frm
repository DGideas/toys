VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form weblab 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "网址库"
   ClientHeight    =   5580
   ClientLeft      =   7200
   ClientTop       =   3870
   ClientWidth     =   3495
   Icon            =   "weblab.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5580
   ScaleWidth      =   3495
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '所有者中心
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   2655
      Left            =   120
      TabIndex        =   11
      Top             =   2880
      Width           =   3255
      ExtentX         =   5741
      ExtentY         =   4683
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
   Begin VB.CommandButton Command10 
      Caption         =   "新浪(R)"
      Height          =   375
      Left            =   1800
      TabIndex        =   9
      Top             =   2040
      Width           =   1575
   End
   Begin VB.CommandButton Command9 
      Caption         =   "腾讯(R)"
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   2040
      Width           =   1575
   End
   Begin VB.CommandButton Command8 
      Caption         =   "邮箱"
      Height          =   375
      Left            =   1800
      TabIndex        =   7
      Top             =   1560
      Width           =   1575
   End
   Begin VB.CommandButton Command7 
      Caption         =   "体育"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   1560
      Width           =   1575
   End
   Begin VB.CommandButton Command6 
      Caption         =   "保健"
      Height          =   375
      Left            =   1800
      TabIndex        =   5
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton Command5 
      Caption         =   "健康"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "视频"
      Height          =   375
      Left            =   1800
      TabIndex        =   3
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "阅读"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "时事"
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "歌曲"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "更多:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   2520
      Width           =   1335
   End
End
Attribute VB_Name = "weblab"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
goonline.WebBrowser1.Navigate "www.google.cn/music"
Unload Me
End Sub

Private Sub Command10_Click()
goonline.WebBrowser1.Navigate "www.sina.com"
Unload Me
End Sub

Private Sub Command2_Click()
goonline.WebBrowser1.Navigate "news.sina.com.cn"
Unload Me
End Sub

Private Sub Command3_Click()
goonline.WebBrowser1.Navigate "www.qidian.com"
Unload Me
End Sub

Private Sub Command4_Click()
goonline.WebBrowser1.Navigate "www.tudou.com"
Unload Me
End Sub

Private Sub Command5_Click()
goonline.WebBrowser1.Navigate "http://health.sohu.com/"
Unload Me
End Sub

Private Sub Command6_Click()
goonline.WebBrowser1.Navigate "http://baby.sina.com.cn/"
Unload Me
End Sub

Private Sub Command7_Click()
goonline.WebBrowser1.Navigate "http://sports.sohu.com/"
Unload Me
End Sub

Private Sub Command8_Click()
goonline.WebBrowser1.Navigate "http://www.2345.com/mail.htm?1"
Unload Me
End Sub

Private Sub Command9_Click()
goonline.WebBrowser1.Navigate "www.qq.com"
Unload Me
End Sub

Private Sub Form_Load()
WebBrowser1.Navigate "www.2345.com"
End Sub
