# رافال للأجهزة الكهربائية

موقع إلكتروني احترافي لبيع الأجهزة الكهربائية مع نظام إدارة متكامل وذكي.

## المميزات الرئيسية

### 🛍️ للمستخدمين
- **تصفح المنتجات**: عرض جميع المنتجات مع الفلترة والبحث الذكي
- **نظام العربة**: إضافة المنتجات وإدارة الكميات
- **نظام الطلبات**: عملية دفع آمنة ومتعددة الخيارات
- **الملف الشخصي**: إدارة البيانات والطلبات السابقة
- **الوضع الداكن/الفاتح**: تجربة مستخدم مريحة
- **Chatbot ذكي**: مساعد افتراضي مدعوم بـ Gemini AI
- **تصميم متجاوب**: يعمل على جميع الأجهزة

### 🔧 للإدارة
- **لوحة تحكم شاملة**: إدارة المنتجات والأقسام والطلبات
- **نظام أمان**: حماية بكلمة مرور (9090)
- **إضافة المنتجات**: رفع الصور وإدارة التفاصيل
- **إدارة الأقسام**: تنظيم المنتجات في فئات
- **إحصائيات مفصلة**: متابعة الأداء والمبيعات

## التقنيات المستخدمة

- **Frontend**: React 18 + TypeScript
- **Styling**: Tailwind CSS
- **Animations**: Framer Motion
- **State Management**: Zustand
- **Backend**: Firebase (Auth, Firestore, Storage)
- **AI Chatbot**: Gemini AI
- **Icons**: Lucide React
- **Routing**: React Router DOM

## التثبيت والتشغيل

### المتطلبات
- Node.js 16+ 
- npm أو yarn

### خطوات التثبيت

1. **استنساخ المشروع**
```bash
git clone <repository-url>
cd rafal-electric
```

2. **تثبيت التبعيات**
```bash
npm install
# أو
yarn install
```

3. **تشغيل المشروع**
```bash
npm start
# أو
yarn start
```

4. **فتح المتصفح**
```
http://localhost:3000
```

## إعداد Firebase

1. **إنشاء مشروع Firebase**
   - اذهب إلى [Firebase Console](https://console.firebase.google.com)
   - أنشئ مشروع جديد
   - فعّل Authentication و Firestore

2. **إعداد التكوين**
   - انسخ إعدادات Firebase من المشروع
   - ضعها في `src/firebase/config.ts`

3. **إعداد Gemini AI**
   - احصل على API Key من [Google AI Studio](https://makersuite.google.com/app/apikey)
   - ضع المفتاح في `src/components/Chatbot.tsx`

## هيكل المشروع

```
src/
├── components/          # المكونات المشتركة
│   ├── Navbar.tsx      # شريط التنقل
│   ├── Footer.tsx      # تذييل الموقع
│   ├── Chatbot.tsx     # المساعد الذكي
│   └── ...
├── pages/              # صفحات الموقع
│   ├── Home.tsx        # الصفحة الرئيسية
│   ├── Products.tsx    # صفحة المنتجات
│   ├── Cart.tsx       # صفحة العربة
│   └── ...
├── firebase/          # إعدادات Firebase
├── store/             # إدارة الحالة
├── types/             # أنواع البيانات
└── App.tsx           # المكون الرئيسي
```

## الميزات المتقدمة

### 🔍 البحث الذكي
- بحث في أسماء المنتجات والأوصاف
- فلترة حسب القسم والسعر
- ترتيب متعدد الخيارات

### 🛒 نظام العربة
- إضافة/إزالة المنتجات
- تحديث الكميات
- حساب التكلفة الإجمالية
- حفظ العربة محلياً

### 💬 Chatbot ذكي
- إجابات ذكية باستخدام Gemini AI
- اقتراحات أسئلة
- معلومات عن المنتجات
- دعم متعدد اللغات

### 🎨 التصميم
- تصميم حديث ومتجاوب
- ألوان متناسقة
- خطوط عربية جميلة
- تأثيرات حركية سلسة

## الأمان

- **مصادقة Firebase**: تسجيل دخول آمن
- **حماية البيانات**: تشفير كلمات المرور
- **لوحة الإدارة**: حماية بكلمة مرور
- **صلاحيات المستخدمين**: نظام أدوار

## الدعم الفني

**معلومات التواصل:**
- **الاسم**: عمر الفرجانى
- **البريد**: omarfergany100@gmail.com
- **واتساب**: https://wa.me/201225860308
- **فيسبوك**: https://www.facebook.com/share/1B6Aef5zFx/
- **إنستجرام**: https://www.instagram.com/fergany___x
- **الموقع**: https://fergany.netlify.app/

## 🚀 النشر على الاستضافة الثابتة

### البناء للاستضافة الثابتة
```bash
npm run build:static
```

### النشر على Netlify

#### الطريقة الأولى: النشر المباشر
1. قم بتشغيل `npm run build:static`
2. ارفع محتويات مجلد `dist` إلى Netlify

#### الطريقة الثانية: النشر التلقائي
1. اربط مستودع GitHub مع Netlify
2. استخدم الإعدادات التالية:
   - **Build command**: `npm run build:static`
   - **Publish directory**: `dist`
   - **Node version**: `18`

### النشر على GitHub Pages
1. ادفع الكود إلى GitHub
2. GitHub Actions سيقوم بالنشر تلقائياً

### الأوامر المتاحة
```bash
npm run build:static    # بناء محسن للاستضافة الثابتة
npm run test:build      # اختبار البناء
npm run optimize        # تحسين الملفات
```

### متغيرات البيئة المطلوبة:

```
REACT_APP_FIREBASE_API_KEY=your_firebase_api_key
REACT_APP_FIREBASE_AUTH_DOMAIN=your_auth_domain
REACT_APP_FIREBASE_PROJECT_ID=your_project_id
REACT_APP_FIREBASE_STORAGE_BUCKET=your_storage_bucket
REACT_APP_FIREBASE_MESSAGING_SENDER_ID=your_messaging_sender_id
REACT_APP_FIREBASE_APP_ID=your_app_id
REACT_APP_FIREBASE_MEASUREMENT_ID=your_measurement_id
REACT_APP_GEMINI_API_KEY=your_gemini_api_key
REACT_APP_ADMIN_PASSWORD=9090
```

### إعداد Firebase:

1. **أنشئ مشروع في [Firebase Console](https://console.firebase.google.com)**
2. **فعّل Authentication (Email/Password)**
3. **فعّل Firestore Database**
4. **فعّل Storage**
5. **انسخ إعدادات المشروع**

### إعداد Gemini AI:

1. **اذهب إلى [Google AI Studio](https://makersuite.google.com/app/apikey)**
2. **أنشئ API Key**
3. **أضفه في متغيرات البيئة**

### تشغيل محلي:

```bash
# Windows
start.bat

# Mac/Linux
chmod +x start.sh
./start.sh

# أو يدوياً
npm install
npm start
```

## الترخيص

هذا المشروع محمي بحقوق الطبع والنشر. جميع الحقوق محفوظة.

---

**تم التطوير بـ ❤️ بواسطة عمر الفرجانى**
