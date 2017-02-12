VERSION 5.00
Begin VB.Form station 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "模拟地铁站1 - 站台"
   ClientHeight    =   7170
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   11895
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7170
   ScaleWidth      =   11895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.Shape dgprobarv1tg 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   0
      Top             =   0
      Width           =   11895
   End
   Begin VB.Shape dgprobarv1bg 
      FillColor       =   &H8000000F&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   0
      Top             =   0
      Width           =   11895
   End
   Begin VB.Menu mmtime 
      Caption         =   "现在时间:加载中"
   End
   Begin VB.Menu ttnoentry 
      Caption         =   "封闭站台"
   End
   Begin VB.Menu ttnowc 
      Caption         =   "封闭厕所"
   End
End
Attribute VB_Name = "station"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
