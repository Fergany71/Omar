# دليل النشر للاستضافة الثابتة

## النشر على Netlify

### الطريقة الأولى: النشر المباشر
1. قم بتشغيل الأمر التالي لبناء المشروع:
```bash
npm run build:static
```

2. ارفع محتويات مجلد `dist` إلى Netlify

### الطريقة الثانية: النشر التلقائي
1. اربط مستودع GitHub مع Netlify
2. استخدم الإعدادات التالية:
   - **Build command**: `npm run build:static`
   - **Publish directory**: `dist`
   - **Node version**: `18`

## النشر على GitHub Pages

### إعداد GitHub Actions
1. أنشئ ملف `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout
      uses: actions/checkout@v3
      
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '18'
        cache: 'npm'
        
    - name: Install dependencies
      run: npm ci
      
    - name: Build
      run: npm run build:static
      
    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      if: github.ref == 'refs/heads/main'
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./dist
```

### إعداد GitHub Pages
1. اذهب إلى Settings > Pages
2. اختر "GitHub Actions" كمصدر النشر
3. احفظ التغييرات

## التحسينات المطبقة

### ضغط الملفات
- ضغط الصور (JPEG, PNG, SVG)
- تحويل الصور إلى WebP
- ضغط ملفات CSS و JavaScript
- إزالة التعليقات والمسافات الزائدة

### تحسين الأداء
- إعدادات Cache محسنة
- ضغط Gzip و Brotli
- تحسين تحميل الخطوط
- Service Worker للـ PWA

### الأمان
- رؤوس أمان محسنة
- حماية من XSS
- إعدادات CORS مناسبة

## اختبار البناء المحلي

```bash
# بناء المشروع
npm run build:static

# اختبار الملفات المحلية
npx serve dist
```

## استكشاف الأخطاء

### مشاكل المسارات
- تأكد من أن جميع المسارات نسبية
- تحقق من ملف `_redirects` للـ SPA

### مشاكل الأداء
- استخدم أدوات تحليل الأداء
- تحقق من ضغط الملفات
- راجع إعدادات Cache

## الدعم

للمساعدة في النشر، راجع:
- [دليل Netlify](https://docs.netlify.com/)
- [دليل GitHub Pages](https://docs.github.com/en/pages)