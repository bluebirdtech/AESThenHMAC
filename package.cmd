if not exist Download mkdir Download
if not exist Download\package mkdir Download\package
if not exist Download\package\lib mkdir Download\package\lib
if not exist Download\package\lib\net40-Client mkdir Download\package\lib\net40-Client

copy AESThenHMAC\bin\Release\AESThenHMAC.dll Download\Package\lib\net40-Client\
copy AESThenHMAC\bin\Release\AESThenHMAC.xml Download\Package\lib\net40-Client\

nuget.exe pack AESThenHMAC.nuspec -BasePath Download\Package -o Download