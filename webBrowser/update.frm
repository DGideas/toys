VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form update 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "UPDATE"
   ClientHeight    =   6885
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10380
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6885
   ScaleWidth      =   10380
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   6735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   10095
      ExtentX         =   17806
      ExtentY         =   11880
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
End
Attribute VB_Name = "update"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
WebBrowser1.Navigate "http://blog.sina.com.cn/s/blog_65121f4a0100gkmd.html"
End Sub
