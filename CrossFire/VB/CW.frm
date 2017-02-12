VERSION 5.00
Begin VB.Form CW 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ChooseWepan"
   ClientHeight    =   4800
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3720
   ControlBox      =   0   'False
   Icon            =   "CW.frx":0000
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4800
   ScaleWidth      =   3720
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton AK 
      Caption         =   "AK"
      Height          =   255
      Left            =   1200
      TabIndex        =   6
      Top             =   720
      Width           =   615
   End
   Begin VB.Frame Frame2 
      Caption         =   "武器"
      Height          =   2535
      Left            =   120
      TabIndex        =   5
      Top             =   2160
      Width           =   3495
      Begin VB.CommandButton Wepan3 
         Caption         =   "请选择"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   960
         Width           =   3255
      End
      Begin VB.CommandButton Wepan2 
         Caption         =   "请选择"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   600
         Width           =   3255
      End
      Begin VB.CommandButton Wepan1 
         Caption         =   "请选择"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   3255
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "牵引"
      Height          =   1575
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   3495
      Begin VB.CommandButton OtherBu 
         Caption         =   "其他步枪"
         Height          =   255
         Left            =   1080
         TabIndex        =   10
         Top             =   1200
         Width           =   855
      End
      Begin VB.CommandButton AorK 
         Caption         =   "A/K"
         Height          =   255
         Left            =   2760
         TabIndex        =   9
         Top             =   240
         Width           =   615
      End
      Begin VB.CommandButton SUG 
         Caption         =   "SUG"
         Height          =   255
         Left            =   1920
         TabIndex        =   8
         Top             =   240
         Width           =   615
      End
      Begin VB.CommandButton Ju 
         Caption         =   "狙击枪"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   1200
         Width           =   855
      End
      Begin VB.CommandButton M4A1 
         Caption         =   "M4A1"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   300
      Left            =   2760
      TabIndex        =   2
      Top             =   120
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   720
      TabIndex        =   1
      ToolTipText     =   "例如:""m4a1"",""ak47""等"
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "搜索:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   495
   End
End
Attribute VB_Name = "CW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub AK_Click()
Wepan1.Enabled = True
Wepan1.Caption = "AK47"
Wepan2.Enabled = False
Wepan2.Caption = "AK47-G(级别不够)"
Wepan3.Enabled = True
Wepan3.Caption = "AK74"
End Sub

Private Sub AorK_Click()
Wepan1.Enabled = False
Wepan1.Caption = "K-2(期待……)"
Wepan2.Enabled = True
Wepan2.Caption = "AUG A2 552"
Wepan3.Enabled = False
Wepan3.Caption = "请选择"
End Sub

Private Sub Command1_Click()
MsgBox "尚未开放请谅解！", vbInformation, "CF"
End Sub
Private Sub Ju_Click()
Wepan1.Enabled = True
Wepan1.Caption = "AWM"
Wepan2.Enabled = False
Wepan2.Caption = "G-AWM(级别不够)"
Wepan3.Enabled = False
Wepan3.Caption = "请选择"
End Sub

Private Sub M4A1_Click()
Wepan1.Enabled = True
Wepan1.Caption = "M4A1"
Wepan2.Enabled = False
Wepan2.Caption = "M4A1-G(级别不够)"
Wepan3.Enabled = False
Wepan3.Caption = "请选择"
End Sub

Private Sub OtherBu_Click()
Wepan1.Enabled = False
Wepan1.Caption = "请选择"
Wepan2.Enabled = False
Wepan2.Caption = "请选择"
Wepan3.Enabled = False
Wepan3.Caption = "请选择"
End Sub

Private Sub SUG_Click()
Wepan1.Enabled = True
Wepan1.Caption = "SUG552"
Wepan2.Enabled = False
Wepan2.Caption = "请选择"
Wepan3.Enabled = False
Wepan3.Caption = "请选择"
End Sub

Private Sub Wepan1_Click()
MsgBox "选定了" & Wepan1.Caption, vbInformation, "CW"
wepan = Wepan1.Caption
GRForm.Info.Interval = 1
Unload Me
End Sub

Private Sub Wepan2_Click()
MsgBox "选定了" & Wepan1.Caption, vbInformation, "CW"
wepan = Wepan2.Caption
GRForm.Info.Interval = 1
Unload Me
End Sub

Private Sub Wepan3_Click()
MsgBox "选定了" & Wepan1.Caption, vbInformation, "CW"
wepan = Wepan3.Caption
GRForm.Info.Interval = 1
Unload Me
End Sub
