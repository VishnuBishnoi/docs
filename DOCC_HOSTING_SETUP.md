# iOS DocC API Reference - Hosting Setup

## 🎯 Problem

Mintlify's hosted platform doesn't serve arbitrary HTML files from subdirectories. The iOS DocC API reference (1,617 HTML files) needs to be hosted separately.

## ✅ Solution

Host the DocC reference on **GitHub Pages** in a separate repository.

---

## 📋 Setup Instructions

### Step 1: Create a New GitHub Repository

1. Go to https://github.com/new
2. **Repository name:** `ios-sdk-docs` (or your preferred name)
3. **Description:** "iOS SDK API Reference Documentation (DocC)"
4. **Visibility:** Public
5. **DO NOT** initialize with README, .gitignore, or license
6. Click "Create repository"

### Step 2: Push DocC Files to GitHub

The DocC files are ready in `/Users/vishnudutt/Docs/mintlify-joyfill-docs/ios-docc-hosting/`

Run these commands:

```bash
cd /Users/vishnudutt/Docs/mintlify-joyfill-docs/ios-docc-hosting

# Add your repository URL (replace with your actual repo)
git remote add origin https://github.com/YOUR_USERNAME/ios-sdk-docs.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository settings: `https://github.com/YOUR_USERNAME/ios-sdk-docs/settings/pages`
2. Under "Build and deployment":
   - **Source:** Deploy from a branch
   - **Branch:** `main` / `(root)`
3. Click "Save"
4. Wait 1-2 minutes for deployment

Your documentation will be available at:
```
https://YOUR_USERNAME.github.io/ios-sdk-docs/
```

Or if you're using an organization account:
```
https://YOUR_ORG.github.io/ios-sdk-docs/
```

### Step 4: Update Mintlify Documentation Links

Once GitHub Pages is live, update the links in your Mintlify docs:

**File:** `ios/api-reference/overview.mdx`
**File:** `ios/api-reference/modules.mdx`

Replace all occurrences of:
```
/ios-api-reference/...
```

With:
```
https://YOUR_USERNAME.github.io/ios-sdk-docs/...
```

---

## 🔄 Alternative: GitHub Actions (Already Configured!)

The repository already includes a GitHub Actions workflow that will automatically deploy to GitHub Pages on every push.

**File:** `.github/workflows/deploy-docc.yml`

### To use GitHub Actions deployment:

1. Go to repository Settings → Pages
2. Under "Build and deployment":
   - **Source:** GitHub Actions
3. Push any changes to `main` branch - it will auto-deploy!

---

## 🧪 Testing Locally

To test the DocC documentation locally:

```bash
cd /Users/vishnudutt/Docs/mintlify-joyfill-docs/ios-docc-hosting
python3 -m http.server 8000
```

Then visit: `http://localhost:8000/`

---

## 📦 What's Included

- **1,617 HTML files** - Complete DocC documentation
- **4 Modules:**
  - `Joyfill/` - Main UI library (SwiftUI)
  - `JoyfillModel/` - Data models
  - `JoyfillFormulas/` - Formula engine
  - `JoyfillAPIService/` - API networking
- **GitHub Actions workflow** - Auto-deployment
- **README.md** - Documentation overview

---

## 🚀 Quick Commands

```bash
# Navigate to DocC hosting directory
cd /Users/vishnudutt/Docs/mintlify-joyfill-docs/ios-docc-hosting

# Set remote (replace with your repo URL)
git remote add origin https://github.com/YOUR_USERNAME/ios-sdk-docs.git

# Push to GitHub
git push -u origin main

# Check git status
git status

# Update DocC files (if you regenerate them)
cp -R /path/to/new/docc/output/* .
git add -A
git commit -m "Update DocC documentation"
git push
```

---

## 🎨 Custom Domain (Optional)

If you have a custom domain:

1. Add a `CNAME` file with your domain:
   ```bash
   echo "docs.joyfill.io" > CNAME
   git add CNAME
   git commit -m "Add custom domain"
   git push
   ```

2. Configure your DNS provider:
   - Add a CNAME record pointing to `YOUR_USERNAME.github.io`

3. Enable HTTPS in GitHub Pages settings

---

## ✅ Next Steps

1. ✅ DocC files are organized in `ios-docc-hosting/` directory
2. ⏳ Create GitHub repository
3. ⏳ Push files to GitHub
4. ⏳ Enable GitHub Pages
5. ⏳ Update Mintlify documentation links
6. ⏳ Test the live documentation

---

## 📞 Need Help?

- GitHub Pages Documentation: https://docs.github.com/en/pages
- DocC Documentation: https://developer.apple.com/documentation/docc

