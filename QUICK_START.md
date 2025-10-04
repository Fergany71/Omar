# دليل البدء السريع - النشر على الاستضافة الثابتة

## 🚀 البناء والنشر السريع

### 1. بناء المشروع للاستضافة الثابتة
```bash
npm run build:static
```

### 2. النشر على Netlify
1. ارفع محتويات مجلد `dist` إلى Netlify
2. أو اربط مستودع GitHub مع Netlify

### 3. النشر على GitHub Pages
1. ادفع الكود إلى GitHub
2. GitHub Actions سيقوم بالنشر تلقائياً

## 📁 الملفات المهمة

- `dist/` - مجلد البناء النهائي
- `public/_redirects` - إعدادات إعادة التوجيه لـ SPA
- `netlify.toml` - إعدادات Netlify
- `.github/workflows/deploy.yml` - إعدادات GitHub Actions

## ⚙️ الأوامر المتاحة

```bash
# بناء عادي
npm run build

# بناء محسن للاستضافة الثابتة
npm run build:static

# تحسين الملفات فقط
npm run optimize

# ضغط الصور
npm run compress-images

# ضغط الملفات
npm run minify-assets
```

## 🔧 الإعدادات المطبقة

### تحسينات الأداء
- ✅ ضغط الصور (JPEG, PNG, SVG)
- ✅ تحويل الصور إلى WebP
- ✅ ضغط ملفات CSS و JavaScript
- ✅ إعدادات Cache محسنة
- ✅ Preload للموارد المهمة

### إعدادات الأمان
- ✅ رؤوس أمان محسنة
- ✅ حماية من XSS
- ✅ إعدادات CORS مناسبة

### دعم SPA
- ✅ ملف _redirects للـ React Router
- ✅ مسارات نسبية
- ✅ دعم GitHub Pages و Netlify

## 🐛 استكشاف الأخطاء

### مشكلة: الموقع لا يعمل بعد النشر
- تحقق من ملف `_redirects` في مجلد `dist`
- تأكد من أن المسارات نسبية

### مشكلة: الصور لا تظهر
- تحقق من مسارات الصور
- تأكد من ضغط الصور

### مشكلة: الروابط لا تعمل
- تحقق من إعدادات React Router
- تأكد من ملف `_redirects`

## 📞 الدعم

للمساعدة، راجع:
- [دليل النشر الكامل](DEPLOYMENT.md)
- [إعدادات Netlify](https://docs.netlify.com/)
- [إعدادات GitHub Pages](https://docs.github.com/en/pages)