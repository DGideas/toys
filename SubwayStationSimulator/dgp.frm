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
   StartUpPosition =   2  '屏幕中心
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
''''''''''系数
Dim safepeople As Long '安全乘客比率0-100
''''''''''事实
Dim stationname As String '站点名称
Dim entry1 As Long '出入站闸机1客流
Dim entry2 As Long '出入站闸机2客流
Dim entry3 As Long '出入站闸机3客流
Dim entry4 As Long '出入站闸机4客流
'entry类:最小值:0(没有人),最大值依靠站点容量决定
Dim storage As Long '站点最大容量
Dim daytimemax As Long '每天模拟时间
Dim daytime As Long '当前模拟时间
Dim wcstorage As Long '厕所容量
''''''''''策略
Dim noentry As Boolean '禁止入内策略
Dim nowc As Boolean '禁止进入厕所
Dim checklevel As Long '安检级别
'表示秒数,有五个级别:0(90%),1(93%),2(95%),3(98%),4(99%)

Private Sub daytimeTimer_Timer()
If daytime < daytimemax Then
daytime = daytime + 1
End If
DataPasv.daytime.Caption = daytime
DataPasv.daypro.Caption = daytime / daytimemax * 100
End Sub

Private Sub Form_Load()
''''''''''初始化系数,变量
safepeople = 95
daytimemax = 600 '每天模拟时间
daytime = 0 '初始化模拟时间
''''''''''初始化策略
noentry = False
nowc = False
checklevel = 2
''''''''''方法
DataPasv.Show
station.Show
End Sub
