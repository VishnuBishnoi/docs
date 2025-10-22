# Joyfill SDK Documentation (Mintlify)

Comprehensive documentation for Joyfill SDKs across all platforms, built with Mintlify.

## 📚 Overview

This repository contains the complete documentation for:
- **iOS SDK** - Native Swift SDK for iOS applications
- **Kotlin SDK** - Native SDK for Android applications
- **React Native SDK** - Cross-platform mobile SDK
- **Web SDK** - JavaScript/TypeScript SDK for web applications

## 🚀 Quick Start

### Prerequisites

- Node.js 18+ installed
- Mintlify CLI installed globally

### Installation

```bash
# Install Mintlify CLI
npm i -g mint

# Clone the repository
git clone https://github.com/VishnuBishnoi/docs.git mintlify-joyfill-docs
cd mintlify-joyfill-docs
```

### Development

Run the documentation site locally:

```bash
mint dev
```

The site will be available at `http://localhost:3000`

## 📖 Documentation Structure

```
mintlify-joyfill-docs/
├── docs.json               # Main configuration file
├── index.mdx               # Homepage
├── logo/                   # Joyfill logos (light & dark)
├── ios/                    # iOS SDK documentation
│   ├── introduction.mdx
│   ├── getting-started/
│   ├── guides/
│   ├── api-reference/
│   ├── changelogs/
│   └── about/
├── kotlin/                 # Kotlin SDK documentation
│   └── [same structure as iOS]
├── react-native/           # React Native SDK documentation
│   └── [same structure as iOS]
└── web/                    # Web SDK documentation
    └── [same structure as iOS]
```

## 🎨 Customization

### Branding

Update `docs.json` to customize:
- Colors (`colors` object)
- Logo (`logo` object)
- Navigation (`navigation` object)
- Footer (`footer` object)

### Adding New Pages

1. Create a new `.mdx` file in the appropriate SDK folder
2. Add the page to `docs.json` navigation
3. Test locally with `mint dev`

### Example Page Structure

```mdx
---
title: "Your Page Title"
description: "Page description for SEO"
icon: "icon-name"
---

# Page Content

Your markdown content here...
```

## 📝 Content Guidelines

### Markdown Features

Mintlify supports enhanced MDX with:
- **Cards** - `<Card>` components for features
- **Code Blocks** - Syntax-highlighted code examples
- **Tabs** - `<Tabs>` for multi-platform examples
- **Accordions** - Collapsible content sections
- **Notes/Tips/Warnings** - Callout components

### Code Examples

Always provide code examples for each SDK:

````mdx
<CodeGroup>

```swift iOS
let config = JoyfillFormConfig(
    mode: .fill,
    templateId: "template_id"
)
```

```kotlin Android
val config = JoyfillFormConfig(
    mode = FormMode.FILL,
    templateId = "template_id"
)
```

</CodeGroup>
````

## 🔧 Configuration

### docs.json

Main configuration file containing:
- Site metadata
- Theme colors
- Navigation structure
- SDK tabs
- Footer links
- Social links

### Example Tab Structure

```json
{
  "tab": "iOS SDK",
  "groups": [
    {
      "group": "Getting Started",
      "pages": [
        "ios/introduction",
        "ios/getting-started/installation"
      ]
    }
  ]
}
```

## 🚢 Deployment

### GitHub Integration

1. Push your changes to GitHub
2. Go to [Mintlify Dashboard](https://dashboard.mintlify.com)
3. Connect your GitHub repository
4. Enable automatic deployments

Changes pushed to the main branch will automatically deploy to production.

### Manual Deployment

```bash
# Build the site
mint build

# The built site will be in the .mintlify directory
```

## 📊 Analytics

Add analytics to track documentation usage:

```json
{
  "analytics": {
    "ga4": {
      "measurementId": "G-XXXXXXXXXX"
    }
  }
}
```

## 🤝 Contributing

### Adding Content

1. Create a branch for your changes
2. Add or update `.mdx` files
3. Test locally with `mint dev`
4. Submit a pull request

### Style Guide

- Use clear, concise language
- Include code examples for every concept
- Add visual elements (cards, diagrams)
- Link related pages
- Keep examples simple and functional

## 🔗 Comparison: Mintlify vs Docusaurus

### Mintlify Advantages
✅ Simpler configuration (JSON vs JavaScript)
✅ Built-in components (Cards, Tabs, etc.)
✅ Beautiful UI out of the box
✅ Fast deployment
✅ Less code to maintain

### Docusaurus Advantages
✅ More customization options
✅ React-based (more flexible)
✅ Larger ecosystem
✅ Self-hostable
✅ More control over styling

## 📚 Resources

- [Mintlify Documentation](https://mintlify.com/docs)
- [Mintlify Components](https://mintlify.com/docs/content/components)
- [Joyfill Website](https://joyfill.io)
- [Joyfill GitHub](https://github.com/joyfill)

## 🐛 Troubleshooting

### Dev server not starting
```bash
mint update  # Update to latest CLI version
mint dev     # Try again
```

### Page shows 404
- Check that the file exists
- Verify path in `docs.json` navigation
- Ensure `.mdx` extension

### Icons not showing
- Use Font Awesome icon names
- Check [available icons](https://fontawesome.com/icons)

## 📞 Support

- **Email**: support@joyfill.io
- **GitHub**: [github.com/joyfill](https://github.com/joyfill)
- **Website**: [joyfill.io](https://joyfill.io)

---

Built with ❤️ using [Mintlify](https://mintlify.com)
