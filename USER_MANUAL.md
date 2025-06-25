# 📖 RATP ODTGEN - User Manual

## 🎯 Quick Start Guide

### What is RATP ODTGEN?
A professional barcode verification system designed for RATP operations teams to quickly verify components against inventory lists using real-time scanning.

**🌐 Access the application:** [https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/)

### 5-Minute Setup
1. **Open the web application** in your browser
2. **Prepare your component list** (CSV or Excel format)
3. **Upload your file** using the sidebar
4. **Start scanning** component barcodes
5. **Export results** when complete

## 📋 Step-by-Step Instructions

### Step 1: Prepare Your Component Data

#### Required File Format
Your file must contain exactly these two columns:
- `component_name` - Description of the component
- `component_id` - The barcode number or identifier

#### Example CSV File
```csv
component_name,component_id
Resistor 10k Ohm,R001
Capacitor 100nF,C002
LED Red 5mm,L003
Transistor BC547,T004
```

#### Example Excel File
Create an Excel file (.xlsx) with the same structure:
| component_name | component_id |
|---------------|-------------|
| Resistor 10k Ohm | R001 |
| Capacitor 100nF | C002 |
| LED Red 5mm | L003 |

### Step 2: Upload Your File

1. **Access the sidebar** on the left side of the application
2. **Click "Browse files"** or drag and drop your file
3. **Select your CSV or Excel file**
4. **Wait for confirmation** - you'll see "✅ Loaded X components"
5. **Review the sample data** displayed below the upload

**Troubleshooting Upload:**
- File must be CSV or Excel (.xlsx) format
- Check that column names are exactly: `component_name`, `component_id`
- Ensure file is not password-protected

### Step 3: Scan Components

#### Automatic Scanning (Recommended)
1. **Click in the scan field** labeled "Scan or enter component ID"
2. **Type or paste the component ID**
3. **Press Enter** - the system automatically processes the scan
4. **View immediate feedback:**
   - ✅ Green message = Component found in your list
   - ❌ Orange message = Component not in your list
5. **Continue scanning** - the input field clears automatically

#### Scan Results Display
All scanned items appear in the main results table showing:
- **Component ID** - The scanned barcode
- **Component Name** - Description from your uploaded list
- **Status** - 🟢 Known or 🔴 Unknown
- **Time Scanned** - When the scan occurred

### Step 4: Monitor Progress

#### Live Statistics (Sidebar)
Watch your progress with real-time counters:
- **Known Components** - Items found in your list
- **Unknown Components** - Items not in your list  
- **Total Scanned** - Overall scan count

#### Results Organization
- **Main Results Table** - All scanned items chronologically
- **Unknown Components Section** - Dedicated view of unrecognized items

### Step 5: Export Results

#### CSV Export (Unknown Components Only)
1. **Look for the export button** in the sidebar: "📥 Export Unknown Components (CSV)"
2. **Click to download** a CSV file containing only unrecognized items
3. **Use this file** to update your inventory or investigate missing components

#### Excel Export (Complete Report)
1. **Click "📊 Export Complete Results (Excel)"** for a comprehensive report
2. **Download includes two worksheets:**
   - **Sheet 1:** All your components with scan status (color-coded)
   - **Sheet 2:** Unknown components found during scanning

#### Color Coding in Excel Export
- **🟢 Green rows** - Components that were scanned and found
- **🔴 Red rows** - Components in your list that weren't scanned
- **🟠 Orange rows** - Unknown components (not in your original list)

## 🔧 Advanced Features

### Duplicate Prevention
- The system automatically prevents scanning the same component twice
- If you try to scan a duplicate, you'll see: "This component has already been scanned!"

### Session Management
- Your data stays active while your browser is open
- **Clear All Scans** button resets everything to start over
- Uploaded file remains loaded until you refresh or upload a new file

### Error Handling
- **File format errors** - Clear messages if your file format is incorrect
- **Missing columns** - Specific guidance on required column names
- **Upload failures** - Instructions for resolving file issues

## 📱 Device Compatibility

### Desktop/Laptop (Recommended)
- **Chrome, Firefox, Safari, Edge** - Latest versions
- **Screen resolution** - Optimized for 1024x768 and higher
- **Keyboard input** - Full support for Enter-to-scan

### Tablet
- **iPad, Android tablets** - Touch-friendly interface
- **Portrait/Landscape** - Responsive design adapts
- **Touch input** - On-screen keyboard supported

### Mobile Phone
- **Basic functionality** - All features available
- **Optimized layout** - Sidebar becomes collapsible
- **Touch scanning** - Tap-based input supported

## 🎯 Use Case Examples

### Quality Control Inspection
1. **Upload** your incoming shipment list
2. **Scan each received component** as you inspect
3. **Identify missing items** (red items in export)
4. **Flag unknown items** for investigation (orange items)

### Inventory Verification
1. **Upload** your inventory database
2. **Scan physical components** on shelves
3. **Generate report** showing discrepancies
4. **Update records** based on findings

### Production Line Setup
1. **Upload** required components for a job
2. **Scan available components** before starting
3. **Confirm all required parts** are present
4. **Document any substitutions** needed

## ⚠️ Common Issues & Solutions

### File Upload Problems

**Problem:** "File must contain 'component_name' and 'component_id' columns"
**Solution:** Check your column headers exactly match: `component_name`, `component_id`

**Problem:** "Error reading file"
**Solution:** Ensure file is valid CSV or Excel (.xlsx), not corrupted or password-protected

### Scanning Issues

**Problem:** Components showing as "Unknown" when they should be known
**Solution:** 
- Check component ID matches exactly (case-sensitive)
- Look for extra spaces or special characters
- Verify the component exists in your uploaded file

**Problem:** "Please upload a CSV or Excel file first!"
**Solution:** Upload your component list before attempting to scan

### Performance Issues

**Problem:** Application running slowly
**Solution:**
- Close other browser tabs
- Try using Chrome or Firefox
- For large files (>10,000 components), consider splitting your data

### Export Problems

**Problem:** Download not starting
**Solution:**
- Check browser pop-up blockers
- Ensure sufficient disk space
- Try a different browser

## 💡 Tips & Best Practices

### File Preparation Tips
- **Keep backups** of your original component lists
- **Use consistent ID formats** (e.g., always uppercase)
- **Remove special characters** that might cause scanning issues
- **Test with small files** before using large inventories

### Scanning Efficiency
- **Use Enter key** instead of clicking buttons for faster scanning
- **Have good lighting** when reading barcodes manually
- **Double-check unknown items** - they might be typos
- **Scan systematically** to avoid missing components

### Data Management
- **Export regularly** to save your progress
- **Use descriptive filenames** with dates for exports
- **Keep unknown component lists** for inventory updates
- **Review red items** in Excel exports for missing scans

## 📞 Getting Help

### Self-Help Resources
1. **Check this user manual** for step-by-step guidance
2. **Review error messages** carefully - they provide specific solutions
3. **Test with sample data** to isolate issues
4. **Try different browsers** if experiencing problems

### Technical Support
- **Contact:** Development team through RATP channels
- **Include:** Error messages, browser type, file format details
- **Provide:** Steps to reproduce the issue

### Feedback & Suggestions
We welcome feedback on:
- User interface improvements
- Additional features needed
- Performance optimizations
- Integration requirements

---

**🎯 Ready to start? Access the application at:**  
**[https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/)**

**📧 Questions? Contact the RATP development team for support.**
