VERSION 5.00
Begin VB.Form station 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "ģ�����վ1 - վ̨"
   ClientHeight    =   7170
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   11895
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7170
   ScaleWidth      =   11895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
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
      Caption         =   "����ʱ��:������"
   End
   Begin VB.Menu ttnoentry 
      Caption         =   "���վ̨"
   End
   Begin VB.Menu ttnowc 
      Caption         =   "��ղ���"
   End
End
Attribute VB_Name = "station"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
