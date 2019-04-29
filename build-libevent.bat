@echo build libevent-2.1.8-stable
cd /d %ROOT_DIR%
IF EXIST %LIBEVENT_BUILD_DIR% (RD /S /Q %LIBEVENT_BUILD_DIR%)
MKDIR %LIBEVENT_BUILD_DIR% 
cd /d %LIBEVENT_BUILD_DIR%
cmake -DVISUAL_STUDIO=2017 -DEVENT__DISABLE_SAMPLES=ON -DOPENSSL_DIR=%BUILD_OUT% -DCMAKE_BUILD_TYPE=%CMAKE_BUILD_TYPE% -DCMAKE_INSTALL_PREFIX=%BUILD_OUT% -G "NMake Makefiles" %LIBEVENT_SRC%
nmake
nmake install