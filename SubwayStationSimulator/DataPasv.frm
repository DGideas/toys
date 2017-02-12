VERSION 5.00
Begin VB.Form DataPasv 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "参数传递"
   ClientHeight    =   3870
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6255
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3870
   ScaleWidth      =   6255
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Visible         =   0   'False
   Begin VB.Label daypro 
      Caption         =   "0"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label daytime 
      Caption         =   "0"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
End
Attribute VB_Name = "DataPasv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub daypro_Change()
Dim maxwidth As Long
Dim prowidth As Long
maxwidth = station.dgprobarv1bg.Width
prowidth = maxwidth / 100 * Me.daypro.Caption
station.dgprobarv1tg.Width = prowidth
End Sub

Private Sub daytime_Change()
station.mmtime.Caption = "现在时间:" & daytime
End Sub
