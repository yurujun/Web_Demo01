@set SRC_FILE=struts-custom-messsages.properties
@set DES_FILE=struts-custom-messsages_zh_CN.properties

set FILE_PATH= D:\[MyProject]\Web_Demo\src
set SRC_FILE= %FILE_PATH%\struts-custom-messsages.properties
set DES_FILE= %FILE_PATH%\struts-custom-messsages_zh_CN.properties

if exist "%DES_FILE%" del %DES_FILE%
native2ascii -encoding GBK %SRC_FILE% %DES_FILE%
