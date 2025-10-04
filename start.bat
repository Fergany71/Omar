@echo off
echo ========================================
echo    رافال للأجهزة الكهربائية
echo    Rafal Electric Website
echo ========================================
echo.

echo جاري تثبيت التبعيات...
call npm install

if %errorlevel% neq 0 (
    echo خطأ في تثبيت التبعيات!
    pause
    exit /b 1
)

echo.
echo جاري تشغيل المشروع...
echo الموقع سيكون متاح على: http://localhost:3000
echo.

call npm start

pause
