VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Dreamer抽号2011SP1-Start"
   ClientHeight    =   3495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6765
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3495
   ScaleWidth      =   6765
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   3120
      Top             =   480
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      Caption         =   "部分源代码开放(半开源);已启用DreamerQuickBoot(TM)加速技术."
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   2400
      Width           =   5895
   End
   Begin VB.Image Image3 
      Height          =   1215
      Left            =   240
      Picture         =   "Form1.frx":212A
      Stretch         =   -1  'True
      Top             =   1080
      Width           =   5775
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "中国程序员论坛"
      Height          =   255
      Left            =   5040
      TabIndex        =   1
      Top             =   720
      Width           =   1935
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   5040
      Picture         =   "Form1.frx":17E2C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Copyright(C) Dreamer Soft(TM)Co,.Ltd 1997-2011 All rights reserved."
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   8.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   2880
      Width           =   6375
   End
   Begin VB.Image Image1 
      Height          =   1095
      Left            =   0
      Picture         =   "Form1.frx":1F596
      Stretch         =   -1  'True
      Top             =   0
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
Form2.Show
Unload Me
End Sub
