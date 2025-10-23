# iOS DocC API Reference - Integration Guide

## ✅ Successfully Integrated!

Your iOS DocC-generated API reference is now fully integrated into your Mintlify documentation site!

---

## 📍 What Was Done

### 1. **DocC Files Location**
All 1,617 HTML files from Apple's DocC generator are now in:
```
sdk/ios/
├── index.html (main landing page)
├── Joyfill/ (UI Library module)
├── JoyfillModel/ (Data models module)
├── JoyfillFormulas/ (Formula engine module)
└── JoyfillAPIService/ (Network layer module)
```

### 2. **Updated Documentation Links**
All iOS API reference pages now link directly to the DocC documentation:

**Main Overview Page:**
- `ios/api-reference/overview.mdx` → Links to `/sdk/ios/index.html`

**Module Pages:**
- `ios/api-reference/modules.mdx` → Links to each module's DocC page

### 3. **File Size**
- **Total size:** 22 MB (well within Mintlify's limits)
- **HTML files:** 1,617 files
- **All modules:** 4 complete DocC bundles

---

## 🧪 How to Test

### **Local Testing**
The Mintlify dev server is already running at:
```
http://localhost:3002
```

**Test these URLs:**
1. **Main DocC Landing Page:**
   ```
   http://localhost:3002/sdk/ios/index.html
   ```

2. **Joyfill UI Module:**
   ```
   http://localhost:3002/sdk/ios/Joyfill/documentation/joyfill/
   ```

3. **JoyfillModel Module:**
   ```
   http://localhost:3002/sdk/ios/JoyfillModel/documentation/joyfillmodel/
   ```

4. **JoyfillFormulas Module:**
   ```
   http://localhost:3002/sdk/ios/JoyfillFormulas/documentation/joyfillformulas/
   ```

5. **JoyfillAPIService Module:**
   ```
   http://localhost:3002/sdk/ios/JoyfillAPIService/documentation/joyfillapiservice/
   ```

### **Access from Mintlify Docs**
Navigate through your Mintlify documentation:
1. Go to **iOS SDK** tab
2. Click **API Reference** → **Overview**
3. Click **"View Full iOS API Reference →"** card
4. You'll be taken to the DocC landing page

---

## 🚀 Production Deployment

Your changes have been pushed to GitHub:
- **Repository:** https://github.com/VishnuBishnoi/docs
- **Branch:** main
- **Commit:** `c09ad1b`

### **Mintlify Cloud Deployment**
If you have Mintlify connected to your GitHub repo:
1. The changes will automatically deploy
2. Visit your Mintlify production URL
3. The DocC files will be served at the same `/sdk/ios/` path

---

## 📝 Key Benefits

✅ **Unified Experience** - All documentation in one place  
✅ **No External Hosting** - No need for separate GitHub Pages  
✅ **Full DocC Functionality** - Interactive navigation, search, code examples  
✅ **Fast Performance** - 22MB is well within Mintlify's limits  
✅ **Easy Maintenance** - Just replace `sdk/ios/` contents when updating

---

## 🔄 Updating DocC Documentation

**IMPORTANT:** You MUST regenerate DocC with the `--hosting-base-path sdk/ios` flag! This is not optional.

When you regenerate DocC from your iOS SDK:

1. **Generate with correct base path (REQUIRED):**
   ```bash
   swift package \
     --allow-writing-to-directory ./docs \
     generate-documentation \
     --disable-indexing \
     --transform-for-static-hosting \
     --hosting-base-path sdk/ios \
     --output-path ./docs/sdk/ios
   ```

   **Why this flag is critical:**
   - Without `--hosting-base-path sdk/ios`, DocC generates absolute paths like `/Joyfill/js/chunk-vendors.js`
   - With the flag, DocC generates correct paths like `/sdk/ios/Joyfill/js/chunk-vendors.js`
   - This ensures all CSS, JS, images, and internal links work correctly when hosted under `/sdk/ios/`

2. **Replace files in Mintlify repo:**
   ```bash
   cd /path/to/mintlify-joyfill-docs
   rm -rf sdk/ios/*
   cp -R /path/to/generated/docs/sdk/ios/* sdk/ios/
   ```

3. **Commit and push:**
   ```bash
   git add sdk/ios
   git commit -m "docs: update iOS DocC API reference"
   git push origin main
   ```

---

## 📊 Repository Structure

```
mintlify-joyfill-docs/
├── docs.json                      # Mintlify config
├── index.mdx                      # Homepage
├── ios/                           # iOS SDK MDX docs
│   ├── introduction.mdx
│   ├── getting-started/
│   ├── guides/
│   └── api-reference/
│       ├── overview.mdx           # Links to DocC
│       └── modules.mdx            # Links to DocC modules
├── kotlin/                        # Kotlin SDK docs
├── react-native/                  # React Native SDK docs
├── web/                           # Web SDK docs
├── api/                           # REST API docs
└── sdk/
    └── ios/                       # 🎯 DocC files here!
        ├── index.html
        ├── Joyfill/
        ├── JoyfillModel/
        ├── JoyfillFormulas/
        └── JoyfillAPIService/
```

---

## 🎓 Important Notes

1. **Path Matters:** The `sdk/ios` path must match what you set in `--hosting-base-path` when generating DocC

2. **Don't use `api/` folder:** Next.js reserves `/api/` for API routes. We use `/sdk/` instead

3. **File Size Limits:** Mintlify supports:
   - Images: up to 20 MB
   - Other files: up to 100 MB
   - Your 22 MB bundle is perfect!

4. **No Need for `public/` folder:** In Mintlify, files at the root level are served directly

---

## ✅ Verification Checklist

- [x] DocC files moved to `sdk/ios/`
- [x] iOS API reference links updated
- [x] Local dev server serves files correctly
- [x] All changes committed and pushed to GitHub
- [x] Old external hosting files removed
- [x] Documentation updated

---

## 🎉 You're All Set!

Your iOS DocC API reference is now seamlessly integrated into your Mintlify documentation. Users can browse your complete iOS SDK API without leaving your docs site!

**Questions or issues?** Check the Mintlify documentation at https://mintlify.com/docs

