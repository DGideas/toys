VERSION 5.00
Begin VB.Form Form5 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "DreamerProtect"
   ClientHeight    =   1635
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4845
   ControlBox      =   0   'False
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1635
   ScaleWidth      =   4845
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton Command1 
      Caption         =   "Hide"
      Height          =   255
      Left            =   3600
      TabIndex        =   2
      Top             =   1200
      Width           =   975
   End
   Begin VB.Timer dpsafe 
      Interval        =   1000
      Left            =   720
      Top             =   0
   End
   Begin VB.Timer kexp 
      Interval        =   2000
      Left            =   360
      Top             =   0
   End
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   0
      Top             =   0
   End
   Begin VB.Label Label1 
      Caption         =   "��ȫϵͳ������..."
      Height          =   495
      Left            =   1440
      TabIndex        =   1
      Top             =   480
      Width           =   2895
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "DP"
      BeginProperty Font 
         Name            =   "����"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   480
      Width           =   495
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim zt As Long 'dpsafeģ��

Private Sub Command1_Click()
Me.Hide
End Sub

Private Sub dpsafe_Timer() '��ȫ
If zt = 0 Then
Shell "cmd.exe /c taskkill /im rundll32.exe /f", vbMinimizedNoFocus '��������פ��
MsgBox "��ȫ��Ϸ����Ϸ��ȫ���벻Ҫ���ң�", vbExclamation, "DP"
zt = 1
ElseIf zt = 1 Then
Shell "cmd.exe /c taskkill /im dllhost.exe /f", vbMinimizedNoFocus '�������̽ٳ�
zt = 2
ElseIf zt = 2 Then
MsgBox "Ϊ��������Ϸ��ݣ��ѹر�һЩ�����", vbInformation, "PD"
Shell "cmd.exe /c taskkill /im sogoucloud.exe /f", vbMinimizedNoFocus '�����ѹ���
zt = 3
ElseIf zt = 3 Then
Shell "cmd.exe /c taskkill /im msdtc.exe /f", vbMinimizedNoFocus '����msdtcʵ�ó���
zt = 4
ElseIf zt = 4 Then
Shell "cmd.exe /c taskkill /im TTPlayer.exe /f", vbMinimizedNoFocus '����TTPlayer
zt = 5
ElseIf zt = 5 Then
Shell "cmd.exe /c taskkill /im ����1.exe /f", vbMinimizedNoFocus '����vb6.0Ĭ��app
zt = 6
ElseIf zt = 6 Then
Shell "cmd.exe /c taskkill /im wmplayer.exe /f", vbMinimizedNoFocus '��������
zt = 7
ElseIf zt = 7 Then
Shell "cmd.exe /c taskkill /im realplayer.exe /f", vbMinimizedNoFocus '����real����
zt = 8
ElseIf zt = 8 Then
Shell "cmd.exe /c taskkill /im taskmgr.exe /f", vbMinimizedNoFocus '�������̹���
dpsafe.Interval = 10000
End If
End Sub

Private Sub Form_Load()
zt = 0
Form4.Show
Form5.Show
End Sub

Private Sub Form_Unload(Cancel As Integer) 'Unload����
MsgBox "�������0x_0����Ϸ����", vbSystemModal, "DP"
Shell "explorer.exe"
End
End Sub

Private Sub kexp_Timer()
Shell "cmd.exe /c taskkill /im explorer.exe /f", vbMinimizedNoFocus
kexp.Interval = 0
End Sub

Private Sub Timer1_Timer()
Me.Hide
Timer1.Interval = 0
End Sub

