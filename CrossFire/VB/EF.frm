VERSION 5.00
Begin VB.Form EF 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "EXIT"
   ClientHeight    =   4230
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3870
   ControlBox      =   0   'False
   Icon            =   "EF.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form7"
   ScaleHeight     =   4230
   ScaleWidth      =   3870
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "切换大区"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   1800
      Width           =   3135
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "即时菜单"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   7.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   360
      Width           =   3135
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   0
      Picture         =   "EF.frx":1042
      Stretch         =   -1  'True
      Top             =   0
      Width           =   3855
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "设置"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   1320
      Width           =   3135
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "退出"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   840
      Width           =   3135
   End
End
Attribute VB_Name = "EF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 27 Then
Unload Me
End If
End Sub

Private Sub Label1_Click()
Unload Form5
End Sub

Private Sub Label2_Click()
Setup.Show
End Sub

Private Sub Label4_Click()
Dim cd
cd = MsgBox("退出并更换大区吗?", vbYesNo, "CF")
If cd = vbYes Then
Shell ("crossfire.exe"), vbNormalFocus
Shell ("explorer.exe")
End
End If
End Sub
