VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Microsoft MFC ������Ӧ�ó���"
   ClientHeight    =   5865
   ClientLeft      =   150
   ClientTop       =   480
   ClientWidth     =   10485
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5865
   ScaleWidth      =   10485
   StartUpPosition =   2  '��Ļ����
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      Caption         =   $"Form2.frx":212A
      BeginProperty Font 
         Name            =   "����"
         Size            =   9.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1215
      Left            =   1080
      TabIndex        =   3
      Top             =   4320
      Width           =   8895
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "����:�¾�����ѧ��У(����У��) ������ 2010"
      BeginProperty Font 
         Name            =   "����"
         Size            =   15.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   1560
      TabIndex        =   2
      Top             =   3600
      Width           =   7695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "wangwanlin2468@Foxmail.com"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   495
      Left            =   3120
      TabIndex        =   1
      Top             =   2880
      Width           =   5775
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Դ���뿪��(��Դ)"
      BeginProperty Font 
         Name            =   "����"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   3000
      TabIndex        =   0
      Top             =   2280
      Width           =   3975
   End
   Begin VB.Menu AppMenu 
      Caption         =   "Application"
      Begin VB.Menu ISOmenu 
         Caption         =   "��׼�����"
      End
      Begin VB.Menu Fenmenu1 
         Caption         =   "-"
      End
      Begin VB.Menu Exitmenu 
         Caption         =   "�˳�"
      End
   End
   Begin VB.Menu cppopenMenu 
      Caption         =   "����Դ����"
      Begin VB.Menu soppertMenu 
         Caption         =   "֧��"
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Exitmenu_Click()
End
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub ISOmenu_Click()
Form3.Show
End Sub

Private Sub soppertMenu_Click()
Form4.Show
End Sub
