VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "NoClip - PC-DOS Workshop"
   ClientHeight    =   2610
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   7380
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2610
   ScaleWidth      =   7380
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer3 
      Interval        =   245
      Left            =   4665
      Top             =   3525
   End
   Begin VB.Timer Timer2 
      Interval        =   245
      Left            =   3645
      Top             =   3540
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   245
      Left            =   3090
      Top             =   1065
   End
   Begin VB.CommandButton Command3 
      Caption         =   "關於NoClip(&A)..."
      Height          =   375
      Left            =   5130
      TabIndex        =   8
      Top             =   2190
      Width           =   2205
   End
   Begin VB.CommandButton Command2 
      Caption         =   "鎖定應用程序(&L)"
      Height          =   375
      Left            =   2250
      TabIndex        =   7
      Top             =   2190
      Width           =   2130
   End
   Begin VB.CommandButton Command1 
      Caption         =   "設置或修改密碼(&C)"
      Height          =   375
      Left            =   45
      TabIndex        =   6
      Top             =   2190
      Width           =   2130
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "frmMain.frx":030A
      Left            =   1395
      List            =   "frmMain.frx":0335
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1830
      Width           =   5940
   End
   Begin 工程1.cSysTray cSysTray1 
      Left            =   6795
      Top             =   1140
      _ExtentX        =   900
      _ExtentY        =   900
      InTray          =   0   'False
      TrayIcon        =   "frmMain.frx":03B8
      TrayTip         =   "NoClip - 雙擊還原窗口，右擊顯示菜單"
   End
   Begin VB.CheckBox Check3 
      Caption         =   "最小化時隱藏到系統托盤(&H)"
      Height          =   315
      Left            =   60
      TabIndex        =   3
      Top             =   1305
      Value           =   1  'Checked
      Width           =   3240
   End
   Begin VB.CheckBox Check2 
      Caption         =   "密碼保護應用程序(&P)"
      Height          =   315
      Left            =   60
      TabIndex        =   2
      Top             =   1035
      Width           =   2115
   End
   Begin VB.CheckBox Check1 
      Caption         =   "啓用No Clip並禁用剪貼板(&E)"
      Height          =   300
      Left            =   60
      TabIndex        =   1
      Top             =   765
      Width           =   2790
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "窗口隱藏快捷鍵"
      Height          =   270
      Left            =   60
      TabIndex        =   4
      Top             =   1890
      Width           =   1335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   -240
      X2              =   8250
      Y1              =   1755
      Y2              =   1755
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      Index           =   0
      X1              =   -240
      X2              =   8250
      Y1              =   1740
      Y2              =   1740
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   $"frmMain.frx":06D2
      Height          =   585
      Left            =   645
      TabIndex        =   0
      Top             =   90
      Width           =   6660
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "frmMain.frx":077E
      Top             =   240
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   0
      Picture         =   "frmMain.frx":0A88
      Top             =   90
      Width           =   480
   End
   Begin VB.Menu mnuTray 
      Caption         =   "MenuTray"
      Visible         =   0   'False
      Begin VB.Menu mnuShowT 
         Caption         =   "顯示主窗口(&S)"
      End
      Begin VB.Menu b1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAboutT 
         Caption         =   "關於NoClip(&A)..."
      End
      Begin VB.Menu b2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExitT 
         Caption         =   "退出(&E)"
      End
   End
   Begin VB.Menu mnuApp 
      Caption         =   "程序(&I)"
      Begin VB.Menu mnuMin 
         Caption         =   "最小化到系統托盤(&M)"
      End
      Begin VB.Menu b4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "退出(&E)"
      End
   End
   Begin VB.Menu mnuPass 
      Caption         =   "密碼(&P)"
      Begin VB.Menu mnuSetChange 
         Caption         =   "設置或更改密碼(&C)..."
      End
      Begin VB.Menu b3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLock 
         Caption         =   "鎖定應用程序(&L)"
      End
   End
   Begin VB.Menu mnuSec 
      Caption         =   "安全(&S)"
      Begin VB.Menu mnuLockS 
         Caption         =   "鎖定應用程序(&L)"
         Shortcut        =   ^L
      End
   End
   Begin VB.Menu mnuWindow 
      Caption         =   "窗口(&W)"
      Begin VB.Menu mnuHide 
         Caption         =   "隱藏應用程序窗口(&H)"
      End
      Begin VB.Menu b5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLog 
         Caption         =   "顯示日誌窗口(&L)..."
         Shortcut        =   ^G
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "幫助(&H)"
      Begin VB.Menu mnuAbout 
         Caption         =   "關於NoClip(&A)..."
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function EmptyClipboard Lib "user32" () As Long
Dim bShowWin As Boolean
Dim bEmpty As Boolean
Private Declare Function SetClipboardViewer Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function ChangeClipboardChain Lib "user32" (ByVal hWnd As Long, ByVal hWndNext As Long) As Long
Private Const WM_DRAWCLIPBOARD = &H308
Private Const WM_CHANGECBCHAIN = &H30D
Private Const WM_DESTROY = &H2
Private Const WM_HOTKEY = &H312
Private Const MOD_ALT = &H1
Private Const MOD_CONTROL = &H2
Private Const MOD_FMSYNTH = 4
Private Const MOD_MAPPER = 5
Private Const MOD_MIDIPORT = 1
Private Const MOD_SHIFT = &H4
Private Const MOD_SQSYNTH = 3
Private Declare Function UnregisterHotKey Lib "user32" (ByVal hWnd As Long, ByVal ID As Long) As Long
Private Declare Function RegisterHotKey Lib "user32" (ByVal hWnd As Long, ByVal ID As Long, ByVal fsModifiers As Long, ByVal vk As Long) As Long
Const DEFAULT_SIZE_VALUE = 810
Dim CommonDialog1 As New CCommonDialog
 Private Type PROCESSENTRY32
 dwSize As Long
 cntUsage As Long
 th32ProcessID As Long '进程ID
 th32DefaultHeapID As Long '堆栈ID
 th32ModuleID As Long '模块ID
 cntThreads As Long
 th32ParentProcessID As Long '父进程ID
 pcPriClassBase As Long
 dwFlags As Long
 szExeFile As String * 260
 End Type
 Private Type MEMORYSTATUS
 dwLength As Long
 dwMemoryLoad As Long
 dwTotalPhys As Long
 dwAvailPhys As Long
 dwTotalPageFile As Long
 dwAvailPageFile As Long
 dwTotalVirtual As Long
 dwAvailVirtual As Long
 End Type
 Private Declare Function NtQuerySystemInformation Lib "ntdll" (ByVal dwInfoType As Long, ByVal lpStructure As Long, ByVal dwSize As Long, ByVal dwReserved As Long) As Long
Private Const SYSTEM_BASICINFORMATION = 0&
Private Const SYSTEM_PERFORMANCEINFORMATION = 2&
Private Const SYSTEM_TIMEINFORMATION = 3&
Private Const NO_ERROR = 0
Private Type LARGE_INTEGER
    dwLow As Long
    dwHigh As Long
End Type

Private Type SYSTEM_PERFORMANCE_INFORMATION
    liIdleTime As LARGE_INTEGER
    dwSpare(0 To 75) As Long
End Type
Private Type SYSTEM_BASIC_INFORMATION
    dwUnknown1 As Long
    uKeMaximumIncrement As Long
    uPageSize As Long
    uMmNumberOfPhysicalPages As Long
    uMmLowestPhysicalPage As Long
    uMmHighestPhysicalPage As Long
    uAllocationGranularity As Long
    pLowestUserAddress As Long
    pMmHighestUserAddress As Long
    uKeActiveProcessors As Long
    bKeNumberProcessors As Byte
    bUnknown2 As Byte
    wUnknown3 As Integer
End Type
Private Type SYSTEM_TIME_INFORMATION
    liKeBootTime As LARGE_INTEGER
    liKeSystemTime As LARGE_INTEGER
    liExpTimeZoneBias As LARGE_INTEGER
    uCurrentTimeZoneId As Long
    dwReserved As Long
End Type

Private lidOldIdle As LARGE_INTEGER
Private liOldSystem As LARGE_INTEGER
 Private Declare Sub GlobalMemoryStatus Lib "kernel32" (lpBuffer As MEMORYSTATUS)
 Private Declare Function CreateToolhelp32Snapshot Lib "kernel32" (ByVal dwFlags As Long, ByVal th32ProcessID As Long) As Long '获取首个进程
 Private Declare Function Process32First Lib "kernel32" (ByVal hSnapshot As Long, lppe As PROCESSENTRY32) As Long '获取下个进程
 Private Declare Function Process32Next Lib "kernel32" (ByVal hSnapshot As Long, lppe As PROCESSENTRY32) As Long '释放句柄
 Private Declare Sub CloseHandle Lib "kernel32" (ByVal hPass As Long)
 Private Const TH32CS_SNAPPROCESS = &H2&
 Private Const KEYEVENTF_EXTENDEDKEY = &H1
Private Const KEYEVENTF_KEYUP = &H2
Dim IsHideToTray As Boolean
Private Const FORMAT_MESSAGE_ALLOCATE_BUFFER = &H100
Private Const FORMAT_MESSAGE_ARGUMENT_ARRAY = &H2000
Private Const FORMAT_MESSAGE_FROM_HMODULE = &H800
Private Const FORMAT_MESSAGE_FROM_STRING = &H400
Private Const FORMAT_MESSAGE_FROM_SYSTEM = &H1000
Private Const FORMAT_MESSAGE_IGNORE_INSERTS = &H200
Private Const FORMAT_MESSAGE_MAX_WIDTH_MASK = &HFF
Private Declare Function FormatMessage Lib "kernel32" Alias "FormatMessageA" (ByVal dwFlags As Long, lpSource As Any, ByVal dwMessageId As Long, ByVal dwLanguageId As Long, ByVal lpBuffer As String, ByVal nSize As Long, Arguments As Long) As Long
Private Const VK_LWIN = &H5B
Private Const WM_KEYUP = &H101
Private Const WM_KEYDOWN = &H100
Private Declare Function DebugActiveProcess Lib "kernel32" (ByVal dwProcessId As Long) As Long
Private Declare Sub DebugBreak Lib "kernel32" ()
Private Const SM_DEBUG = 22
Private Const DEBUG_ONLY_THIS_PROCESS = &H2
Private Const DEBUG_PROCESS = &H1
Private Type USER_DIALOG_CONFIG
lpTitle As String
lpIcon As Integer
lpMessage As String
End Type
Private Type USER_APP_RUN
lpAppPath As String
lpAppParam As String
lpRunMode As Integer
End Type
Private Type APP_TASK_PARAM
lpTimerType As Integer
lpDelay As Long
lpRunHour As Integer
lpRunMinute As Integer
lpRunSecond As Integer
lpCurrentHour As Integer
lpCurrentMinute As Integer
lpCurrentSecond As Integer
lpTaskEnum As Integer
lpTaskFriendlyDisplayName As String
lpRunning As Boolean
End Type
Dim lpDialogCfg As USER_DIALOG_CONFIG
Dim lpAppCfg As USER_APP_RUN
Dim lpTaskCfg As APP_TASK_PARAM
Const SC_SCREENSAVE = &HF140&
Dim IsCodeUse As Boolean
Private Declare Function WinExec Lib "kernel32" (ByVal lpCmdLine As String, ByVal nCmdShow As Long) As Long
Private Declare Function AppendMenu Lib "user32" Alias "AppendMenuA" (ByVal hMenu As Long, ByVal wFlags As Long, ByVal wIDNewItem As Long, ByVal lpNewItem As Any) As Long
Private Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Const GWL_WNDPROC = (-4)
Private Const WM_SYSCOMMAND = &H112
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Function SetFileAttributes Lib "kernel32" Alias "SetFileAttributesA" (ByVal lpFileName As String, ByVal dwFileAttributes As Long) As Long
Private Declare Function GetFileAttributes Lib "kernel32" Alias "GetFileAttributesA" (ByVal lpFileName As String) As Long
Private Const FILE_ATTRIBUTE_ARCHIVE = &H20
Private Const FILE_ATTRIBUTE_COMPRESSED = &H800
Private Const FILE_ATTRIBUTE_DIRECTORY = &H10
Private Const FILE_ATTRIBUTE_HIDDEN = &H2
Private Const FILE_ATTRIBUTE_NORMAL = &H80
Private Const FILE_ATTRIBUTE_READONLY = &H1
Private Const FILE_ATTRIBUTE_SYSTEM = &H4
Private Const FILE_ATTRIBUTE_TEMPORARY = &H100
Dim lpSize As Long
Dim bchk As Boolean
Dim lpFilePath As String
Const READ_CONTROL = &H20000
Const KEY_QUERY_VALUE = &H1
Const KEY_SET_VALUE = &H2
Const KEY_CREATE_SUB_KEY = &H4
Const KEY_ENUMERATE_SUB_KEYS = &H8
Const KEY_NOTIFY = &H10
Const KEY_CREATE_LINK = &H20
Const KEY_ALL_ACCESS = KEY_QUERY_VALUE + KEY_SET_VALUE + _
KEY_CREATE_SUB_KEY + KEY_ENUMERATE_SUB_KEYS + _
KEY_NOTIFY + KEY_CREATE_LINK + READ_CONTROL
Const HKEY_LOCAL_MACHINE = &H80000002
Const ERROR_SUCCESS = 0
Const REG_SZ = 1
Const REG_DWORD = 4
Const gREGKEYSYSINFOLOC = "SOFTWARE\Microsoft\Shared Tools Location"
Const gREGVALSYSINFOLOC = "MSINFO"
Const gREGKEYSYSINFO = "SOFTWARE\Microsoft\Shared Tools\MSINFO"
Const gREGVALSYSINFO = "PATH"
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, ByRef phkResult As Long) As Long
Private Declare Function RegQueryValueEx Lib "advapi32" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, ByRef lpType As Long, ByVal lpData As String, ByRef lpcbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
Const MAX_FILE_SIZE = 1.5 * (1024 ^ 3)
Private Const HWND_BOTTOM = 1
Private Const HWND_BROADCAST = &HFFFF&
Private Const HWND_DESKTOP = 0
Private Const HWND_NOTOPMOST = -2
Private Const WS_EX_TRANSPARENT = &H20&
Private Declare Function GetClientRect Lib "user32" (ByVal hWnd As Long, lpRect As RECT) As Long
Private Declare Function ClientToScreen Lib "user32" (ByVal hWnd As Long, lpPoint As POINTAPI) As Long
Private Declare Function OffsetRect Lib "user32" (lpRect As RECT, ByVal X As Long, ByVal y As Long) As Long
Private Declare Function GetWindowRect Lib "user32" (ByVal hWnd As Long, lpRect As RECT) As Long
Private Declare Function BringWindowToTop Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
Private Declare Function ClipCursor Lib "user32" (lpRect As Any) As Long
'很多朋友都见到过能在托盘图标上出现气球提示的软件，不说软件，就是在“磁盘空间不足”时Windows给出的提示就属于气球提示，那么怎样在自己的程序中添加这样的气球提示呢？
   
'其实并不难，关键就在添加托盘图标时所使用的NOTIFYICONDATA结构，源代码如下：
Private Declare Function Shell_NotifyIcon Lib "shell32.dll" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, lpData As NOTIFYICONDATA) As Long
   
Private Type NOTIFYICONDATA
cbSize   As Long     '   结构大小(字节)
hWnd   As Long     '   处理消息的窗口的句柄
uID   As Long     '   唯一的标识符
uFlags   As Long     '   Flags
uCallbackMessage   As Long     '   处理消息的窗口接收的消息
hIcon   As Long     '   托盘图标句柄
szTip   As String * 128         '   Tooltip   提示文本
dwState   As Long     '   托盘图标状态
dwStateMask   As Long     '   状态掩码
szInfo   As String * 256         '   气球提示文本
uTimeoutOrVersion   As Long     '   气球提示消失时间或版本
'   uTimeout   -   气球提示消失时间(单位:ms,   10000   --   30000)
'   uVersion   -   版本(0   for   V4,   3   for   V5)
szInfoTitle   As String * 64         '   气球提示标题
dwInfoFlags   As Long     '   气球提示图标
End Type
   
'   dwState   to   NOTIFYICONDATA   structure
Private Const NIS_HIDDEN = &H1           '   隐藏图标
Private Const NIS_SHAREDICON = &H2           '   共享图标
   
'   dwInfoFlags   to   NOTIFIICONDATA   structure
Private Const NIIF_NONE = &H0           '   无图标
Private Const NIIF_INFO = &H1           '   "消息"图标
Private Const NIIF_WARNING = &H2           '   "警告"图标
Private Const NIIF_ERROR = &H3           '   "错误"图标
   
'   uFlags   to   NOTIFYICONDATA   structure
Private Const NIF_ICON       As Long = &H2
Private Const NIF_INFO       As Long = &H10
Private Const NIF_MESSAGE       As Long = &H1
Private Const NIF_STATE       As Long = &H8
Private Const NIF_TIP       As Long = &H4
   
'   dwMessage   to   Shell_NotifyIcon
Private Const NIM_ADD       As Long = &H0
Private Const NIM_DELETE       As Long = &H2
Private Const NIM_MODIFY       As Long = &H1
Private Const NIM_SETFOCUS       As Long = &H3
Private Const NIM_SETVERSION       As Long = &H4
Private Type RECTL
        Left As Long
        Top As Long
        Right As Long
        Bottom As Long
End Type
Private Type RECT
        Left As Long
        Top As Long
        Right As Long
        Bottom As Long
End Type
Dim cRect As RECT
Const LCR_UNLOCK = 0
Dim dwMouseFlag As Integer
Const ME_LBCLICK = 1
Const ME_LBDBLCLICK = 2
Const ME_RBCLICK = 3
Private Const MOUSEEVENTF_LEFTDOWN = &H2
Private Const MOUSEEVENTF_ABSOLUTE = &H8000
Private Const MOUSEEVENTF_LEFTUP = &H4
Private Const MOUSEEVENTF_MIDDLEDOWN = &H20
Private Const MOUSEEVENTF_MIDDLEUP = &H40
Private Const MOUSEEVENTF_MOVE = &H1
Private Const MOUSEEVENTF_RIGHTDOWN = &H8
Private Const MOUSEEVENTF_RIGHTUP = &H10
Private Const MOUSETRAILS = 39
Private Declare Sub mouse_event Lib "user32" (ByVal dwFlags As Long, ByVal dx As Long, ByVal dy As Long, ByVal cButtons As Long, ByVal dwExtraInfo As Long)
Private Declare Sub keybd_event Lib "user32" (ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Long, ByVal dwExtraInfo As Long)
Private Declare Function GetKeyState Lib "user32" (ByVal nVirtKey As Long) As Integer
Private Declare Function GetKeyboardState Lib "user32" (pbKeyState As Byte) As Long
Const SWP_NOACTIVATE = &H10
Private Declare Function SetWindowText Lib "user32" Alias "SetWindowTextA" (ByVal hWnd As Long, ByVal lpString As String) As Long
Dim lpszCaptionNew As String
Private Const SC_MINIMIZE = &HF020&
Private Const WS_MAXIMIZEBOX = &H10000
Dim HKStateCtrl As Integer
Dim HKStateFn As Integer
Private Const WS_MINIMIZEBOX = &H20000
Private Const WS_MAXIMIZE = &H1000000
Private Const WS_MINIMIZE = &H20000000
Private Const WS_ICONIC = WS_MINIMIZE
Const SC_ICON = SC_MINIMIZE
Const SC_TASKLIST = &HF130&
Private Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Private Declare Function GetCurrentProcess Lib "kernel32" () As Long
Dim bCodeUse As Boolean
Private Const WS_CAPTION = &HC00000
Private Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Const PROCESS_ALL_ACCESS = &H1F0FFF
Const SC_RESTORE = &HF120&
Const TH32CS_SNAPHEAPLIST = &H1
Const TH32CS_SNAPTHREAD = &H4
Const TH32CS_SNAPMODULE = &H8
Const TH32CS_SNAPALL = (TH32CS_SNAPHEAPLIST Or TH32CS_SNAPPROCESS Or TH32CS_SNAPTHREAD Or TH32CS_SNAPMODULE)
Const TH32CS_INHERIT = &H80000000
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Dim lMeWinStyle As Long
Const SWP_SHOWWINDOW = &H40
Const SWP_HIDEWINDOW = &H80
Const SWP_NOOWNERZORDER = &H200
Const SWP_NOREPOSITION = SWP_NOOWNERZORDER
Private Const SC_MOVE = &HF010&
Private Const SC_SIZE = &HF000&
Private Declare Function ShowWindow Lib "user32" (ByVal hWnd As Long, ByVal nCmdShow As Long) As Long
Private Declare Function DrawMenuBar Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function GetForegroundWindow Lib "user32" () As Long
Private Declare Function GetWindowDC Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hWnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hWnd As Long) As Long
Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hWnd As Long, lpdwProcessId As Long) As Long
Private Declare Function GetClassName Lib "user32" Alias "GetClassNameA" (ByVal hWnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long) As Long
Private Declare Function GetExitCodeProcess Lib "kernel32" (ByVal hProcess As Long, lpExitCode As Long) As Long
Const WS_EX_APPWINDOW = &H40000
Private Type WINDOWINFORMATION
hWindow As Long
hWindowDC As Long
hThreadProcess As Long
hThreadProcessID As Long
lpszCaption As String
lpszClassName As String
lpszThreadProcessName As String * 1024
lpszThreadProcessPath As String
lpszExe As String
lpszPath As String
End Type
Private Type WINDOWPARAM
bEnabled As Boolean
bHide As Boolean
bTrans As Boolean
bClosable As Boolean
bSizable As Boolean
bMinisizable As Boolean
bTop As Boolean
lpTransValue As Integer
End Type
Dim lpWindow As WINDOWINFORMATION
Dim lpWindowParam() As WINDOWPARAM
Dim lpCur As Long
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
Private Const WM_GETTEXT = &HD
Private Const WM_GETTEXTLENGTH = &HE
Dim lpRtn As Long
Dim hWindow As Long
Dim lpLength As Long
Dim lpArray() As Byte
Dim lpArray2() As Byte
Dim lpBuff As String
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hWnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Private Const WS_EX_LAYERED = &H80000
Private Const GWL_EXSTYLE = (-20)
Private Const LWA_ALPHA = &H2
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Private Const LWA_COLORKEY = &H1
Private Declare Function EnableWindow Lib "user32" (ByVal hWnd As Long, ByVal fEnable As Long) As Long
Private Declare Function GetSystemMenu Lib "user32" (ByVal hWnd As Long, ByVal bRevert As Long) As Long
Private Declare Function DeleteMenu Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
Private Declare Function GetMenuItemCount Lib "user32" (ByVal hMenu As Long) As Long
Private Declare Function RemoveMenu Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
Private Const MF_BYPOSITION = &H400&
Private Const MF_REMOVE = &H1000&
Private Const WS_SYSMENU = &H80000
Private Const GWL_STYLE = (-16)
Private Const MF_BYCOMMAND = &H0
Private Const SC_CLOSE = &HF060&
Private Declare Function SetMenu Lib "user32" (ByVal hWnd As Long, ByVal hMenu As Long) As Long
Private Const MF_INSERT = &H0&
Private Const SC_MAXIMIZE = &HF030&
Private Declare Function GetModuleFileName Lib "kernel32" Alias "GetModuleFileNameA" (ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
Private Type WINDOWINFOBOXDATA
lpszCaption As String
lpszClass As String
lpszThread As String
lpszHandle As String
lpszDC As String
End Type
Dim dwWinInfo As WINDOWINFOBOXDATA
Dim bError As Boolean
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Const HTCAPTION = 2
Private Const WM_NCLBUTTONDOWN = &HA1
Const WM_CLOSE = &H10
Private Const HWND_TOPMOST = -1
Private Const SWP_NOSIZE = &H1
Private Const SWP_NOREDRAW = &H8
Private Const SWP_NOMOVE = &H2
Dim mov As Boolean
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Const ANYSIZE_ARRAY = 1
Const EWX_LOGOFF = 0
Const EWX_SHUTDOWN = 1
Const EWX_REBOOT = 2
Const EWX_FORCE = 4
Private Type LUID
UsedPart As Long
IgnoredForNowHigh32BitPart As Long
End Type
Private Type TOKEN_PRIVILEGES
PrivilegeCount As Long
TheLuid As LUID
Attributes As Long
End Type
Private Declare Function OpenProcessToken Lib "advapi32" (ByVal _
ProcessHandle As Long, _
ByVal DesiredAccess As Long, TokenHandle As Long) As Long
Private Declare Function LookupPrivilegeValue Lib "advapi32" _
Alias "LookupPrivilegeValueA" _
(ByVal lpSystemName As String, ByVal lpName As String, lpLuid _
As LUID) As Long
Private Declare Function AdjustTokenPrivileges Lib "advapi32" _
(ByVal TokenHandle As Long, _
ByVal DisableAllPrivileges As Long, NewState As TOKEN_PRIVILEGES _
, ByVal BufferLength As Long, _
PreviousState As TOKEN_PRIVILEGES, ReturnLength As Long) As Long
Private Type TestCounter
TimesLeft As Integer
ResetTime As Integer
End Type
Dim PassTest As TestCounter
Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Type POINTAPI
X As Long
y As Long
End Type
Private Const VK_ADD = &H6B
Private Const VK_ATTN = &HF6
Private Const VK_BACK = &H8
Private Const VK_CANCEL = &H3
Private Const VK_CAPITAL = &H14
Private Const VK_CLEAR = &HC
Private Const VK_CONTROL = &H11
Private Const VK_CRSEL = &HF7
Private Const VK_DECIMAL = &H6E
Private Const VK_DELETE = &H2E
Private Const VK_DIVIDE = &H6F
Private Const VK_DOWN = &H28
Private Const VK_END = &H23
Private Const VK_EREOF = &HF9
Private Const VK_ESCAPE = &H1B
Private Const VK_EXECUTE = &H2B
Private Const VK_EXSEL = &HF8
Private Const VK_F1 = &H70
Private Const VK_F10 = &H79
Private Const VK_F11 = &H7A
Private Const VK_F12 = &H7B
Private Const VK_F13 = &H7C
Private Const VK_F14 = &H7D
Private Const VK_F15 = &H7E
Private Const VK_F16 = &H7F
Private Const VK_F17 = &H80
Private Const VK_F18 = &H81
Private Const VK_F19 = &H82
Private Const VK_F2 = &H71
Private Const VK_F20 = &H83
Private Const VK_F21 = &H84
Private Const VK_F22 = &H85
Private Const VK_F23 = &H86
Private Const VK_F24 = &H87
Private Const VK_F3 = &H72
Private Const VK_F4 = &H73
Private Const VK_F5 = &H74
Private Const VK_F6 = &H75
Private Const VK_F7 = &H76
Private Const VK_F8 = &H77
Private Const VK_F9 = &H78
Private Const VK_HELP = &H2F
Private Const VK_HOME = &H24
Private Const VK_INSERT = &H2D
Private Const VK_LBUTTON = &H1
Private Const VK_LCONTROL = &HA2
Private Const VK_LEFT = &H25
Private Const VK_LMENU = &HA4
Private Const VK_LSHIFT = &HA0
Private Const VK_MBUTTON = &H4
Private Const VK_MENU = &H12
Private Const VK_MULTIPLY = &H6A
Private Const VK_NEXT = &H22
Private Const VK_NONAME = &HFC
Private Const VK_NUMLOCK = &H90
Private Const VK_NUMPAD0 = &H60
Private Const VK_NUMPAD1 = &H61
Private Const VK_NUMPAD2 = &H62
Private Const VK_NUMPAD3 = &H63
Private Const VK_NUMPAD4 = &H64
Private Const VK_NUMPAD5 = &H65
Private Const VK_NUMPAD6 = &H66
Private Const VK_NUMPAD7 = &H67
Private Const VK_NUMPAD8 = &H68
Private Const VK_NUMPAD9 = &H69
Private Const VK_OEM_CLEAR = &HFE
Private Const VK_PA1 = &HFD
Private Const VK_PAUSE = &H13
Private Const VK_PLAY = &HFA
Private Const VK_PRINT = &H2A
Private Const VK_PRIOR = &H21
Private Const VK_PROCESSKEY = &HE5
Private Const VK_RBUTTON = &H2
Private Const VK_RCONTROL = &HA3
Private Const VK_RETURN = &HD
Private Const VK_RIGHT = &H27
Private Const VK_RMENU = &HA5
Private Const VK_RSHIFT = &HA1
Private Const VK_SCROLL = &H91
Private Const VK_SELECT = &H29
Private Const VK_SEPARATOR = &H6C
Private Const VK_SHIFT = &H10
Private Const VK_SNAPSHOT = &H2C
Private Const VK_SPACE = &H20
Private Const VK_SUBTRACT = &H6D
Private Const VK_TAB = &H9
Private Const VK_UP = &H26
Private Const VK_ZOOM = &HFB
Private Declare Function SetCursorPos Lib "user32" (ByVal X As Long, ByVal y As Long) As Long
Dim lpX As Long
Dim lpY As Long
Private Type FILEINFO
lpPath As String
lpDateLastChanged As Date
lpAttribList As Integer
lpSize As Long
lpHeader As String * 25
lpType As String
lpAttrib As String
End Type
Dim lpFile As FILEINFO
Public act As Boolean
Dim regsvrvrt
Dim unregsvrvrt
Dim regflag As Boolean
Dim unregflag  As Boolean
Dim ream
Private Type BROWSEINFO
hOwner As Long
pidlRoot As Long
pszDisplayName As String
lpszTitle As String
ulFlags As Long
lpfn As Long
lParam As Long
iImage As Long
End Type
Private Const BIF_RETURNONLYFSDIRS = &H1
Private Const BIF_NEWDIALOGSTYLE = &H40
Private Const BIF_NONEWFOLDERBUTTON = &H200
Private Declare Function SHGetPathFromIDList Lib "shell32.dll" Alias "SHGetPathFromIDListA" _
(ByVal pidl As Long, _
ByVal pszPath As String) As Long
Private Declare Function SHBrowseForFolder Lib "shell32.dll" Alias "SHBrowseForFolderA" _
(lpBrowseInfo As BROWSEINFO) As Long
Private Declare Function CloseScreenFun Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Const SC_MONITORPOWER = &HF170&
Private Declare Function GetLastError Lib "kernel32" () As Long
Private Function GetCPUUsage() As Long
    
    Dim sbSysBasicInfo As SYSTEM_BASIC_INFORMATION
    Dim spSysPerforfInfo As SYSTEM_PERFORMANCE_INFORMATION
    Dim stSysTimeInfo As SYSTEM_TIME_INFORMATION
    Dim curIdle As Currency
    Dim curSystem As Currency
    Dim lngResult As Long
    
    GetCPUUsage = -1
    
    lngResult = NtQuerySystemInformation(SYSTEM_BASICINFORMATION, VarPtr(sbSysBasicInfo), LenB(sbSysBasicInfo), 0&)
    If lngResult <> NO_ERROR Then Exit Function
    
    lngResult = NtQuerySystemInformation(SYSTEM_TIMEINFORMATION, VarPtr(stSysTimeInfo), LenB(stSysTimeInfo), 0&)
    If lngResult <> NO_ERROR Then Exit Function
    
    lngResult = NtQuerySystemInformation(SYSTEM_PERFORMANCEINFORMATION, VarPtr(spSysPerforfInfo), LenB(spSysPerforfInfo), ByVal 0&)
    If lngResult <> NO_ERROR Then Exit Function
    curIdle = ConvertLI(spSysPerforfInfo.liIdleTime) - ConvertLI(lidOldIdle)
    curSystem = ConvertLI(stSysTimeInfo.liKeSystemTime) - ConvertLI(liOldSystem)
    If curSystem <> 0 Then curIdle = curIdle / curSystem
    curIdle = 100 - curIdle * 100 / sbSysBasicInfo.bKeNumberProcessors + 0.5
    GetCPUUsage = Int(curIdle)
    
    lidOldIdle = spSysPerforfInfo.liIdleTime
    liOldSystem = stSysTimeInfo.liKeSystemTime
End Function

Private Function ConvertLI(liToConvert As LARGE_INTEGER) As Currency
    CopyMemory ConvertLI, liToConvert, LenB(liToConvert)
End Function
Private Function GetErrorDescription(ByVal lErr As Long) As String
    Dim sReturn As String
    sReturn = String$(256, 32)
    FormatMessage FORMAT_MESSAGE_FROM_SYSTEM Or _
        FORMAT_MESSAGE_IGNORE_INSERTS, 0&, lErr, _
        0&, sReturn, Len(sReturn), ByVal 0
    sReturn = Trim(sReturn)
    GetErrorDescription = sReturn
End Function
Private Function GetProcessID(lpszProcessName As String) As Long
'RETUREN VALUES
'VALUE=-25 : FUNCTION FAILED
'VALUE<>-25 : SUCCEED
Dim pid    As Long
Dim pname As String
Dim a As String
a = Trim(LCase(lpszProcessName))
Dim my    As PROCESSENTRY32
Dim L    As Long
Dim l1    As Long
Dim flag    As Boolean
Dim mName    As String
Dim I    As Integer
L = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0)
If L Then
    my.dwSize = 1060
End If
If (Process32First(L, my)) Then
    Do
        I = InStr(1, my.szExeFile, Chr(0))
        mName = LCase(Left(my.szExeFile, I - 1))
        If mName = a Then
            pid = my.th32ProcessID
            GetProcessID = pid
            Exit Function
        End If
Loop Until (Process32Next(L, my) < 1)
GetProcessID = -25
End If
End Function
Private Function GetProcessInfo(lpszProcessName As String, lpProcessInfo As PROCESSENTRY32) As Long
Dim pid    As Long
Dim pname As String
Dim a As String
a = Trim(LCase(lpszProcessName))
Dim my    As PROCESSENTRY32
Dim L    As Long
Dim l1    As Long
Dim flag    As Boolean
Dim mName    As String
Dim I    As Integer
L = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0)
If L Then
    my.dwSize = 1060
End If
If (Process32First(L, my)) Then
    Do
        I = InStr(1, my.szExeFile, Chr(0))
        mName = LCase(Left(my.szExeFile, I - 1))
        If mName = a Then
            pid = my.th32ProcessID
            lpProcessInfo = my
            GetProcessInfo = 245
            Exit Function
        End If
Loop Until (Process32Next(L, my) < 1)
GetProcessInfo = -245
End If
End Function
Private Sub CloseScreenA(ByVal sWitch As Boolean)
If sWitch = True Then
CloseScreenFun GetForegroundWindow, WM_SYSCOMMAND, SC_MONITORPOWER, 1&
Else
CloseScreenFun GetForegroundWindow, WM_SYSCOMMAND, SC_MONITORPOWER, -1&
End If
End Sub
Public Function GetFolderName(hWnd As Long, Text As String) As String
On Error Resume Next
Dim bi As BROWSEINFO
Dim pidl As Long
Dim path As String
With bi
.hOwner = hWnd
.pidlRoot = 0&
.lpszTitle = Text
.ulFlags = BIF_NONEWFOLDERBUTTON
End With
pidl = SHBrowseForFolder(bi)
path = Space$(512)
If SHGetPathFromIDList(ByVal pidl, ByVal path) Then
GetFolderName = Left(path, InStr(path, Chr(0)) - 1)
End If
End Function
Sub GetProcessName(ByVal processID As Long, szExeName As String, szPathName As String)
On Error Resume Next
Dim my As PROCESSENTRY32
Dim hProcessHandle As Long
Dim success As Long
Dim L As Long
L = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0)
If L Then
my.dwSize = 1060
If (Process32First(L, my)) Then
Do
If my.th32ProcessID = processID Then
CloseHandle L
szExeName = Left$(my.szExeFile, InStr(1, my.szExeFile, Chr$(0)) - 1)
For L = Len(szExeName) To 1 Step -1
If Mid$(szExeName, L, 1) = "\" Then
Exit For
End If
Next L
szPathName = Left$(szExeName, L)
Exit Sub
End If
Loop Until (Process32Next(L, my) < 1)
End If
CloseHandle L
End If
End Sub
Private Sub CreateFile(lpPath As String, lpSize As Long)
On Error Resume Next
End Sub
Private Sub DisableClose(hWnd As Long, Optional ByVal MDIChild As Boolean)
On Error Resume Next
Exit Sub
Dim hSysMenu As Long
Dim nCnt As Long
Dim cID As Long
hSysMenu = GetSystemMenu(hWnd, False)
If hSysMenu = 0 Then
Exit Sub
End If
nCnt = GetMenuItemCount(hSysMenu)
If MDIChild Then
cID = 3
Else
cID = 1
End If
If nCnt Then
RemoveMenu hSysMenu, nCnt - cID, MF_BYPOSITION Or MF_REMOVE
RemoveMenu hSysMenu, nCnt - cID - 1, MF_BYPOSITION Or MF_REMOVE
DrawMenuBar hWnd
End If
End Sub
Private Function GetPassword(hWnd As Long) As String
On Error Resume Next
lpLength = SendMessage(hWnd, WM_GETTEXTLENGTH, 0, 0)
If lpLength > 0 Then
ReDim lpArray(lpLength + 1) As Byte
ReDim lpArray2(lpLength - 1) As Byte
CopyMemory lpArray(0), lpLength, 2
SendMessage hWnd, WM_GETTEXT, lpLength + 1, lpArray(0)
CopyMemory lpArray2(0), lpArray(0), lpLength
GetPassword = StrConv(lpArray2, vbUnicode)
Else
GetPassword = ""
End If
End Function
Private Function GetWindowClassName(hWnd As Long) As String
On Error Resume Next
Dim lpszWindowClassName As String * 256
lpszWindowClassName = Space(256)
GetClassName hWnd, lpszWindowClassName, 256
lpszWindowClassName = Trim(lpszWindowClassName)
GetWindowClassName = lpszWindowClassName
End Function
Private Sub AdjustToken()
On Error Resume Next
Const TOKEN_ADJUST_PRIVILEGES = &H20
Const TOKEN_QUERY = &H8
Const SE_PRIVILEGE_ENABLED = &H2
Dim hdlProcessHandle As Long
Dim hdlTokenHandle As Long
Dim tmpLuid As LUID
Dim tkp As TOKEN_PRIVILEGES
Dim tkpNewButIgnored As TOKEN_PRIVILEGES
Dim lBufferNeeded As Long
hdlProcessHandle = GetCurrentProcess()
OpenProcessToken hdlProcessHandle, (TOKEN_ADJUST_PRIVILEGES Or _
TOKEN_QUERY), hdlTokenHandle
LookupPrivilegeValue "", "SeShutdownPrivilege", tmpLuid
tkp.PrivilegeCount = 1
tkp.TheLuid = tmpLuid
tkp.Attributes = SE_PRIVILEGE_ENABLED
AdjustTokenPrivileges hdlTokenHandle, False, _
tkp, Len(tkpNewButIgnored), tkpNewButIgnored, lBufferNeeded
End Sub
Private Function HexOpen(lpFilePath As String, bSafe As Boolean) As String
Dim strFileName As String
Dim arr() As Byte
strFileName = App.path & "\2.jpg"
Open lpFilePath For Binary As #1
ReDim arr(LOF(1))
Get #1, , arr()
Close #1
Dim T As String
Dim L As Integer
Dim te As String
Dim ASCII As String
L = 0
T = ""
te = ""
ASCII = ""
Dim I
For I = LBound(arr) To UBound(arr)
te = UCase(Hex$(arr(I)))
If arr(I) >= 32 And arr(I) <= 126 Then
ASCII = ASCII & Chr(arr(I))
Else
ASCII = ASCII & "."
End If
If Len(te) = 1 Then te = "0" & te
T = T & te & " "
L = L + 1
If L = 16 Then
T = T & " "
ASCII = ASCII & " "
End If
If L = 32 Then
't = t & " " & ASCII & vbCrLf
T = T
ASCII = ""
L = 0
End If
If bSafe = True Then
If Len(T) >= 72 Then
T = Left(T, 72)
Exit For
End If
End If
Next
HexOpen = T
End Function
Private Function OpenAsHexDocument(lpFile As String, lpHeadOnly As Boolean) As String
On Error Resume Next
Dim strFileName As String
Dim arr() As Byte
strFileName = lpFile
If 245 = 245 Then
Open strFileName For Binary As #1
ReDim arr(LOF(1))
Get #1, , arr()
Close #1
Dim T As String
Dim L As Integer
Dim te As String
Dim ASCII As String
L = 0
T = ""
te = ""
ASCII = ""
Dim I
For I = LBound(arr) To UBound(arr)
te = UCase(Hex$(arr(I)))
If arr(I) >= 32 And arr(I) <= 126 Then
ASCII = ASCII & Chr(arr(I))
Else
ASCII = ASCII & "."
End If
If Len(te) = 1 Then te = "0" & te
T = T & te & " "
If Len(T) >= 72 And lpHeadOnly = True Then
Exit For
End If
L = L + 1
If L = 16 Then
T = T & " "
ASCII = ASCII & " "
End If
If L = 32 Then
T = T
ASCII = ""
L = 0
End If
Next
End If
If lpHeadOnly = True Then
OpenAsHexDocument = Left(T, 72)
Else
OpenAsHexDocument = T
End If
End Function
Private Sub EnumProcess()
Dim SnapShot As Long
Dim NextProcess As Long
Dim PE As PROCESSENTRY32 '创建进程快照
SnapShot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0) '如果队列不为空则搜索
If SnapShot <> -1 Then '设置进程结构长度
PE.dwSize = Len(PE) '获取首个进程
NextProcess = Process32First(SnapShot, PE)
Do While NextProcess '可对进程序做相应处理
'获取下一个
NextProcess = Process32Next(SnapShot, PE)
Loop '释放进程句柄 CloseHandle (SnapShot)
End If
End Sub
Private Sub Check1_Click()
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
End Sub
Private Sub Check2_Click()
On Error Resume Next
If Check2.Value = 1 Then
Dim IsEmptyPass As Boolean
IsEmptyPass = IsEmptyPassword
If IsEmptyPass Then
Dim ans As Integer
ans = MsgBox("您計劃啓用密碼保護功能,但是您似乎還沒設置密碼,如果您不設置密碼,密碼保護功能將失效,並且任何人都可以使用應用程序" & vbCrLf & "您想現在設置密碼嗎?", vbExclamation + vbYesNo, "Ask")
If ans = vbYes Then
bEmpty = IsEmptyPassword
If bEmpty = True Then
frmPassSet.Show 1
Else
frmPassChange.Show 1
End If
Else
Exit Sub
End If
Else
Exit Sub
End If
Else
Exit Sub
End If
Exit Sub
On Error Resume Next
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
End Sub
Private Sub Check3_Click()
Exit Sub
On Error Resume Next
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
End Sub
Private Sub Combo1_Change()
On Error Resume Next
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
End Sub
Private Sub Combo1_Click()
On Error Resume Next
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
End Sub
Private Sub Command1_Click()
On Error Resume Next
bEmpty = IsEmptyPassword
If bEmpty = True Then
frmPassSet.Show 1
Else
frmPassChange.Show 1
End If
End Sub
Private Sub Command2_Click()
On Error Resume Next
bEmpty = IsEmptyPassword
If bEmpty = True Then
MsgBox "當前使用空密碼，不支持鎖定應用程序", vbInformation, "Info"
Else
With Me
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.mnuLog.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
End With
frmPassInput.Show 1
End If
End Sub
Private Sub Command3_Click()
On Error Resume Next
frmAbout.Show 1
End Sub
Private Sub cSysTray1_MouseDblClick(Button As Integer, ID As Long)
On Error Resume Next
bEmpty = IsEmptyPassword
If bEmpty = True Then
Me.WindowState = 0
frmMain.Show
With frmMain
.Show
.WindowState = 0
End With
Else
If Check2.Value = 1 Then
Me.WindowState = 0
With Me
.Show
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
.mnuLog.Enabled = False
End With
With frmMain
.Show
.WindowState = 0
End With
frmPassInput.Show 1
Else
Me.WindowState = 0
Me.Show
With frmMain
.Show
.WindowState = 0
End With
End If
End If
End Sub
Private Sub cSysTray1_MouseDown(Button As Integer, ID As Long)
On Error Resume Next
If Button = vbRightButton Then
PopupMenu mnuTray, , , , mnuShowT
Else
Exit Sub
End If
End Sub
Private Sub cSysTray1_MouseMove(ID As Long)
On Error Resume Next
End Sub
Private Sub Form_Activate()
On Error Resume Next
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
End Sub
Private Sub Form_Initialize()
On Error Resume Next
If App.PrevInstance Then
Dim ans As Integer
ans = MsgBox("程序已經有一個實例在運行,如果您繼續運行程序,可能導致系統剪切板管理程序鏈表紊亂,可能影響系統穩定性,繼續嗎?", vbExclamation + vbYesNo, "Alert")
If ans = vbYes Then
Form_Def_Load
Show
Else
End
Unload frmAbout
Unload frmPassChange
Unload frmPassInput
Unload frmPassSet
Unload Me
On Error Resume Next
UnregisterHotKey hWnd, 245
ChangeClipboardChain hWnd, hWndNextClipboardViewer
Unload Me
On Error Resume Next
With Me.cSysTray1
.InTray = False
End With
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
UnregisterHotKey hWnd, 245
Unload frmAbout
Unload frmPassChange
Unload frmPassSet
Unload frmPassInput
Unload Me
End If
Else
Form_Def_Load
End If
End Sub
Private Sub Form_Def_Load()
On Error Resume Next
On Error Resume Next
On Error Resume Next
bShowWin = True
Combo1.ListIndex = 12
lLog = ""
lLog = CStr(Now) & "     " & "Application Loaded"
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
On Error Resume Next
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
With Timer2
.Enabled = False
.Interval = 245
End With
With Timer3
.Enabled = False
.Interval = 245
End With
End Sub
Private Sub Form_Load()
On Error Resume Next
Dim hMenu As Long
hMenu = GetSystemMenu(hWnd, False)
AppendMenu hMenu, 0, 0, vbNullString
AppendMenu hMenu, 0, MENUITEM_1, "關於NoClip(&A)..."
PrevWndFunc = GetWindowLong(Me.hWnd, GWL_WNDPROC)
SetWindowLong Me.hWnd, GWL_WNDPROC, AddressOf WindowMessageProc
On Error Resume Next
On Error Resume Next
bShowWin = True
Combo1.ListIndex = 12
lLog = ""
lLog = CStr(Now) & "     " & "Application Loaded"
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
On Error Resume Next
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
With Timer2
.Enabled = False
.Interval = 245
End With
With Timer3
.Enabled = False
.Interval = 245
End With
End Sub
Public Sub HotKeyProc()
On Error Resume Next
If bShowWin Then
With Me
.WindowState = 0
.Visible = False
.Hide
End With
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
Unload frmAbout
Unload frmPassChange
Unload frmPassSet
Unload frmPassInput
With Me
.mnuLog.Enabled = False
.mnuLog.Enabled = False
.mnuLog.Enabled = False
.mnuAbout.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
End With
bShowWin = False
ElseIf bShowWin = False Then
bEmpty = IsEmptyPassword
If Check2.Value = 1 Then
If bEmpty = False Then
With Me
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
.WindowState = 0
.Visible = True
.Show
End With
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
frmPassInput.Show 1
bShowWin = True
Else
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
With Me
.mnuAbout.Enabled = True
.mnuLog.Enabled = True
.mnuApp.Enabled = True
.mnuExit.Enabled = True
.mnuHelp.Enabled = True
.mnuHide.Enabled = True
.mnuLock.Enabled = True
.mnuLockS.Enabled = True
.mnuMin.Enabled = True
.mnuPass.Enabled = True
.mnuSec.Enabled = True
.mnuSetChange.Enabled = True
.mnuWindow.Enabled = True
.Check1.Enabled = True
.Check2.Enabled = True
.Check3.Enabled = True
.Command1.Enabled = True
.Command2.Enabled = True
.Command3.Enabled = True
.Label1.Enabled = True
.Label2.Enabled = True
.Combo1.Enabled = True
.WindowState = 0
.Visible = True
.Show
End With
bShowWin = True
End If
Else
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
With Me
.mnuAbout.Enabled = True
.mnuLog.Enabled = True
.mnuApp.Enabled = True
.mnuExit.Enabled = True
.mnuHelp.Enabled = True
.mnuHide.Enabled = True
.mnuLock.Enabled = True
.mnuLockS.Enabled = True
.mnuMin.Enabled = True
.mnuPass.Enabled = True
.mnuSec.Enabled = True
.mnuSetChange.Enabled = True
.mnuWindow.Enabled = True
.Check1.Enabled = True
.Check2.Enabled = True
.Check3.Enabled = True
.Command1.Enabled = True
.Command2.Enabled = True
.Command3.Enabled = True
.Label1.Enabled = True
.Label2.Enabled = True
.Combo1.Enabled = True
.WindowState = 0
.Visible = True
.Show
End With
bShowWin = True
End If
Else
bEmpty = IsEmptyPassword
If Check2.Value = 1 Then
If bEmpty = False Then
With Me
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
.WindowState = 0
.Visible = True
.Show
End With
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
frmPassInput.Show 1
bShowWin = True
Else
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
With Me
.mnuAbout.Enabled = True
.mnuLog.Enabled = True
.mnuApp.Enabled = True
.mnuExit.Enabled = True
.mnuHelp.Enabled = True
.mnuHide.Enabled = True
.mnuLock.Enabled = True
.mnuLockS.Enabled = True
.mnuMin.Enabled = True
.mnuPass.Enabled = True
.mnuSec.Enabled = True
.mnuSetChange.Enabled = True
.mnuWindow.Enabled = True
.Check1.Enabled = True
.Check2.Enabled = True
.Check3.Enabled = True
.Command1.Enabled = True
.Command2.Enabled = True
.Command3.Enabled = True
.Label1.Enabled = True
.Label2.Enabled = True
.Combo1.Enabled = True
.WindowState = 0
.Visible = True
.Show
End With
bShowWin = True
End If
Else
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
With Me
.mnuAbout.Enabled = True
.mnuLog.Enabled = True
.mnuApp.Enabled = True
.mnuExit.Enabled = True
.mnuHelp.Enabled = True
.mnuHide.Enabled = True
.mnuLock.Enabled = True
.mnuLockS.Enabled = True
.mnuMin.Enabled = True
.mnuPass.Enabled = True
.mnuSec.Enabled = True
.mnuSetChange.Enabled = True
.mnuWindow.Enabled = True
.Check1.Enabled = True
.Check2.Enabled = True
.Check3.Enabled = True
.Command1.Enabled = True
.Command2.Enabled = True
.Command3.Enabled = True
.Label1.Enabled = True
.Label2.Enabled = True
.Combo1.Enabled = True
.WindowState = 0
.Visible = True
.Show
End With
bShowWin = True
End If
End If
End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
On Error Resume Next
UnregisterHotKey hWnd, 245
ChangeClipboardChain hWnd, hWndNextClipboardViewer
Unload Me
On Error Resume Next
With Me.cSysTray1
.InTray = False
End With
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
UnregisterHotKey hWnd, 245
Unload frmAbout
Unload frmPassChange
Unload frmPassSet
Unload frmPassInput
Unload Me
End Sub
Private Sub Form_Resize()
On Error Resume Next
On Error Resume Next
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
If Check3.Value = 0 Then
Exit Sub
End If
If Me.WindowState = 1 Then
Me.Hide
With cSysTray1
.InTray = True
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
End If
End Sub
Private Sub Form_Terminate()
On Error Resume Next
UnregisterHotKey hWnd, 245
ChangeClipboardChain hWnd, hWndNextClipboardViewer
'Unload Me
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
UnregisterHotKey hWnd, 245
ChangeClipboardChain hWnd, hWndNextClipboardViewer
Unload Me
On Error Resume Next
With Me.cSysTray1
.InTray = False
End With
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
UnregisterHotKey hWnd, 245
Unload frmAbout
Unload frmPassChange
Unload frmPassSet
Unload frmPassInput
Unload Me
End Sub
Private Sub mnuAbout_Click()
On Error Resume Next
frmAbout.Show 1
End Sub
Private Sub mnuAboutT_Click()
On Error Resume Next
frmAbout.Show 1
End Sub
Private Sub mnuExit_Click()
On Error Resume Next
With Me.cSysTray1
.InTray = False
End With
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
UnregisterHotKey hWnd, 245
Unload frmAbout
Unload frmPassChange
Unload frmPassSet
Unload frmPassInput
Unload Me
End Sub
Private Sub mnuExitT_Click()
On Error Resume Next
With Me.cSysTray1
.InTray = False
End With
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
UnregisterHotKey hWnd, 245
Unload frmAbout
Unload frmPassChange
Unload frmPassSet
Unload frmPassInput
Unload Me
End Sub
Private Sub mnuHide_Click()
On Error Resume Next
If Combo1.ListIndex = 12 Then
MsgBox "請先行設置顯示/隱藏窗口快捷鍵", vbCritical, "Error"
Exit Sub
End If
With Me
.WindowState = 0
.Visible = False
.Hide
End With
With cSysTray1
.InTray = False
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
Unload frmAbout
Unload frmPassChange
Unload frmPassSet
Unload frmPassInput
With Me
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
End With
bShowWin = False
End Sub
Private Sub mnuLock_Click()
On Error Resume Next
bEmpty = IsEmptyPassword
If bEmpty = True Then
MsgBox "當前使用空密碼，不支持鎖定應用程序", vbInformation, "Info"
Else
With Me
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
End With
frmPassInput.Show 1
End If
End Sub
Private Sub mnuLockS_Click()
On Error Resume Next
bEmpty = IsEmptyPassword
If bEmpty = True Then
MsgBox "當前使用空密碼，不支持鎖定應用程序", vbInformation, "Info"
Else
With Me
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
End With
frmPassInput.Show 1
End If
End Sub
Private Sub mnuLog_Click()
On Error Resume Next
If lLog = "" Then
MsgBox "日誌内容為空", vbCritical, "Error"
Exit Sub
Else
MsgBox "以下為日誌内容：" & vbCrLf & vbCrLf & lLog, vbInformation, "Log Data"
End If
End Sub
Private Sub mnuMin_Click()
On Error Resume Next
Me.Hide
With Me
.Hide
.WindowState = 1
End With
With cSysTray1
.InTray = True
.TrayTip = "NoClip - 雙擊還原窗口，右擊顯示菜單"
End With
End Sub
Private Sub mnuSetChange_Click()
On Error Resume Next
bEmpty = IsEmptyPassword
If bEmpty = True Then
frmPassSet.Show 1
Else
frmPassChange.Show 1
End If
End Sub
Private Sub mnuShowT_Click()
On Error Resume Next
On Error Resume Next
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
Select Case Combo1.ListIndex
Case 0
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F1
Case 1
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F2
Case 2
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F3
Case 3
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F4
Case 4
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F5
Case 5
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F6
Case 6
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F7
Case 7
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F8
Case 8
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F9
Case 9
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F10
Case 10
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F11
Case 11
UnregisterHotKey Me.hWnd, 245
RegisterHotKey Me.hWnd, 245, MOD_CONTROL, VK_F12
Case 12
UnregisterHotKey Me.hWnd, 245
End Select
bEmpty = IsEmptyPassword
If bEmpty = True Then
Me.WindowState = 0
frmMain.Show
With frmMain
.Show
.WindowState = 0
End With
Else
If Check2.Value = 1 Then
Me.WindowState = 0
With Me
.Show
.mnuAbout.Enabled = False
.mnuLog.Enabled = False
.mnuApp.Enabled = False
.mnuExit.Enabled = False
.mnuHelp.Enabled = False
.mnuHide.Enabled = False
.mnuLock.Enabled = False
.mnuLockS.Enabled = False
.mnuMin.Enabled = False
.mnuPass.Enabled = False
.mnuSec.Enabled = False
.mnuSetChange.Enabled = False
.mnuWindow.Enabled = False
.Check1.Enabled = False
.Check2.Enabled = False
.Check3.Enabled = False
.Command1.Enabled = False
.Command2.Enabled = False
.Command3.Enabled = False
.Label1.Enabled = False
.Label2.Enabled = False
.Combo1.Enabled = False
End With
With frmMain
.Show
.WindowState = 0
End With
frmPassInput.Show 1
Else
Me.WindowState = 0
Me.Show
With frmMain
.Show
.WindowState = 0
End With
End If
End If
End Sub
Private Sub Timer2_Timer()
Exit Sub
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
End Sub
Private Sub Timer3_Timer()
Exit Sub
On Error Resume Next
If Check1.Value = 1 Then
hWndNextClipboardViewer = SetClipboardViewer(Me.hWnd)
With Me.Timer1
.Enabled = True
.Interval = 245
End With
ElseIf Check1.Value = 0 Then
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
Else
ChangeClipboardChain Me.hWnd, hWndNextClipboardViewer
With Me.Timer1
.Enabled = False
.Interval = 245
End With
End If
End Sub
