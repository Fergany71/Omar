#!/bin/bash

echo "========================================"
echo "   رافال للأجهزة الكهربائية"
echo "   Rafal Electric Website"
echo "========================================"
echo

echo "جاري تثبيت التبعيات..."
npm install

if [ $? -ne 0 ]; then
    echo "خطأ في تثبيت التبعيات!"
    exit 1
fi

echo
echo "جاري تشغيل المشروع..."
echo "الموقع سيكون متاح على: http://localhost:3000"
echo

npm start
