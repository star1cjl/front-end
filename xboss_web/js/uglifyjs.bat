@echo off
:: ����ѹ��JS�ļ��ĸ�Ŀ¼���ű����Զ�������β��Һ�ѹ�����е�JS
SET JSFOLDER=D:\Program Files\apache-tomcat-7.0.64\webapps\x_boss_web\js
echo ���ڲ���JS�ļ�
chdir /d %JSFOLDER%
for /r . %%a in (*.js) do (
    @echo ����ѹ�� %%~a ...
    uglifyjs %%~fa  -m -o %%~fa
)
echo ���!
pause & exit

uglifyjs util.js -m -o util.min.js