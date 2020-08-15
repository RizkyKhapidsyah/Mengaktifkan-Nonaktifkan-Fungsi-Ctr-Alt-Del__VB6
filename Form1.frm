VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Mengaktifkan/nonaktifkan Fungsi Ctr-Alt-Del"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6660
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   6660
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Normal"
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   2160
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Aktifkan"
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Top             =   2160
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub DisableCtrlAltDelete(bDisabled As Boolean)
Dim x As Long
    x = SystemParametersInfo(97, bDisabled, CStr(1), 0)
End Sub

Private Sub Command2_Click()
   DisableCtrlAltDelete (False)    'Enable-kan fungsi
                                   'Ctrl-Alt-Del
End Sub

Private Sub Command1_Click()
   DisableCtrlAltDelete (True)     'Disable-kan fungsi
                                   'Ctrl-Alt-Del
End Sub

