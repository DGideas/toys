VERSION 5.00
Begin VB.Form dgp 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "DGideas Processor"
   ClientHeight    =   4830
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7485
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4830
   ScaleWidth      =   7485
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Visible         =   0   'False
   Begin VB.Timer daytimeTimer 
      Interval        =   1000
      Left            =   1080
      Top             =   2640
   End
End
Attribute VB_Name = "dgp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
''''''''''ϵ��
Dim safepeople As Long '��ȫ�˿ͱ���0-100
''''''''''��ʵ
Dim stationname As String 'վ������
Dim entry1 As Long '����վբ��1����
Dim entry2 As Long '����վբ��2����
Dim entry3 As Long '����վբ��3����
Dim entry4 As Long '����վբ��4����
'entry��:��Сֵ:0(û����),���ֵ����վ����������
Dim storage As Long 'վ���������
Dim daytimemax As Long 'ÿ��ģ��ʱ��
Dim daytime As Long '��ǰģ��ʱ��
Dim wcstorage As Long '��������
''''''''''����
Dim noentry As Boolean '��ֹ���ڲ���
Dim nowc As Boolean '��ֹ�������
Dim checklevel As Long '���켶��
'��ʾ����,���������:0(90%),1(93%),2(95%),3(98%),4(99%)

Private Sub daytimeTimer_Timer()
If daytime < daytimemax Then
daytime = daytime + 1
End If
DataPasv.daytime.Caption = daytime
DataPasv.daypro.Caption = daytime / daytimemax * 100
End Sub

Private Sub Form_Load()
''''''''''��ʼ��ϵ��,����
safepeople = 95
daytimemax = 600 'ÿ��ģ��ʱ��
daytime = 0 '��ʼ��ģ��ʱ��
''''''''''��ʼ������
noentry = False
nowc = False
checklevel = 2
''''''''''����
DataPasv.Show
station.Show
End Sub
