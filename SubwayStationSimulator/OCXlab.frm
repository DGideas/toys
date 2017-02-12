VERSION 5.00
Begin VB.Form OCXlab 
   Caption         =   "OCXlab"
   ClientHeight    =   4440
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8460
   LinkTopic       =   "Form1"
   ScaleHeight     =   4440
   ScaleWidth      =   8460
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   2040
      TabIndex        =   0
      Text            =   "1"
      Top             =   2400
      Width           =   3135
   End
   Begin VB.Shape dgprobarv1tg 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   1920
      Top             =   1200
      Width           =   495
   End
   Begin VB.Shape dgprobarv1bg 
      FillColor       =   &H8000000F&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   1920
      Top             =   1200
      Width           =   3975
   End
End
Attribute VB_Name = "OCXlab"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Text1_Change()
Dim maxwidth As Long
Dim prowidth As Long
maxwidth = Me.dgprobarv1bg.Width
prowidth = maxwidth / 100 * Me.Text1.Text
Me.dgprobarv1tg.Width = prowidth
End Sub
