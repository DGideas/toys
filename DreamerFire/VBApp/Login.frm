VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "DreamerFireLogin"
   ClientHeight    =   3945
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   3420
   Icon            =   "Login.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3945
   ScaleWidth      =   3420
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox Text2 
      Height          =   270
      Left            =   1200
      TabIndex        =   3
      Top             =   840
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   1200
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "用户名:"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "密码:"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
