SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Git\cmd;C:\Program Files\Git\mingw64\bin;C:\Users\mcjah\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\mcjah\AppData\Local\Programs\Microsoft VS Code(can delete)\bin;C:\Users\mcjah\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\mcjah\AppData\Local\Programs\Microsoft VS Code(can delete)\bin
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.6.3.55 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := mcjah
export AS_PATH := C:/BrAutomation/AS46
export AS_BIN_PATH := C:/BrAutomation/AS46/Bin-en
export AS_PROJECT_PATH := C:/projects/lihui1
export AS_PROJECT_NAME := lihui1
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS46/AS/VC
export AS_TEMP_PATH := C:/projects/lihui1/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/projects/lihui1/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS46
export WIN32_AS_PATH := "C:\BrAutomation\AS46"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS46\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\projects\lihui1"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS46\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\projects\lihui1\Temp"
export WIN32_AS_BINARIES_PATH := "C:\projects\lihui1\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS46\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS46"

.suffixes:

ProjectMakeFile:

	@cmd /c ""$(AS_PROJECT_PATH)\Logical\RevInfo\getRevInfo.sh" "$(AS_PROJECT_PATH)\Logical\RevInfo" "$(AS_CONFIGURATION)" "$(AS_USER_NAME)" || echo Error 9204: Pre-build step was executed with errors. && exit 1"

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/lihui1.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

