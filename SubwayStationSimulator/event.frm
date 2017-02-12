VERSION 5.00
Begin VB.Form event 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "消息"
   ClientHeight    =   2805
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5670
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2805
   ScaleWidth      =   5670
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.Label title 
      Caption         =   "消息"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   5055
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   120
      Top             =   120
      Width           =   135
   End
End
Attribute VB_Name = "event"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
