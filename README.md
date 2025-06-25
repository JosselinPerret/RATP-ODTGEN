# 📦 RATP - ODTGEN Barcode Component Verifier

A comprehensive Python web application built with **Streamlit** that allows RATP operations teams to upload component inventories and verify scanned barcodes against the uploaded lists in real-time. The application is designed for quality control and inventory management in manufacturing and maintenance operations.

🌐 **Live Application**: [https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/)

## 📖 Context & Origin

**Developed by:** Josselin Perret - Student at CentraleSupélec  
**Organization:** RATP  

This application was developed during my internship at RATP where one of my main tasks was to manually record each component number. To significantly accelerate this repetitive and error-prone task, I created this digital solution that automates the component verification process using barcode scanning.

The objective was to transform a time-consuming manual process into an automated, fast, and reliable system, allowing RATP operational teams to save valuable time while reducing human errors.

## 🚀 Features

### Core Functionality
- **Multi-format Upload**: Supports both CSV and Excel (.xlsx) file uploads
- **Real-time Barcode Scanning**: Instant barcode verification with automatic scanning on Enter
- **Intelligent Status Verification**: Automatic checking of scanned components against uploaded inventory
- **Duplicate Prevention**: Smart detection to prevent re-scanning the same component
- **Session Persistence**: Data maintained throughout the browser session

### Advanced Export Features
- **CSV Export**: Export unknown components for further analysis
- **Excel Export with Color Coding**: 
  - 🟢 Green: Scanned components (found in inventory)
  - 🔴 Red: Not scanned components (in inventory but not verified)
  - 🟠 Orange: Unknown components (scanned but not in inventory)
- **Multiple Worksheets**: Separate sheets for component status and unknown items
- **Auto-formatted Columns**: Optimized column widths for readability

### User Interface
- **Professional Layout**: Clean, responsive design optimized for operational use
- **Real-time Feedback**: Immediate visual confirmation of scan results
- **Live Statistics**: Dynamic counters showing known/unknown/total scans
- **Intuitive Controls**: Streamlined interface for fast-paced work environments
- **Mobile Responsive**: Works on tablets and mobile devices for field use

### Quality Control Features
- **Component Validation**: Ensures uploaded files contain required columns
- **Error Handling**: Robust error management with user-friendly messages
- **Data Integrity**: Maintains scan history with timestamps
- **Audit Trail**: Complete record of all scanning activities

## 🛠️ Installation & Setup

### Prerequisites

- Python 3.9 or higher
- pip package manager
- Modern web browser (Chrome, Firefox, Safari, Edge)

### Local Installation

1. **Clone or download** this project to your local machine

2. **Navigate** to the project directory:

   ```bash
   cd "RATP ODTGEN"
   ```

3. **Install dependencies**:

   ```bash
   pip install -r requirements.txt
   ```

4. **Run the application**:

   ```bash
   streamlit run app.py
   ```

5. **Open your browser** and navigate to the displayed URL (typically `http://localhost:8501`)

### Online Access

The application is deployed and accessible at:
🌐 **[https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/)**

No installation required - simply access the URL in your web browser.

## 📋 Usage Guide

### Step 1: Prepare Your Data File

Create a CSV or Excel file with exactly two required columns:

- `component_name`: The name/description of the component
- `component_id`: The unique identifier (barcode value)

**Example CSV content:**

```csv
component_name,component_id
Resistor 10k,123456
Capacitor 100nF,234567
LED Red 5mm,345678
Transistor BC547,456789
```

**Example Excel content:**
The same structure applies to Excel files (.xlsx format).

### Step 2: Upload Your File

1. Use the **drag-and-drop** file uploader in the sidebar
2. Select your CSV or Excel file
3. Verify the sample data appears correctly
4. Check that the component count is displayed

### Step 3: Start Scanning Components

1. Enter component IDs in the **"Scan or enter component ID"** field
2. Press **Enter** for automatic scanning (recommended)
3. View real-time results in the main area with immediate feedback

### Step 4: Monitor Results

**Status Indicators:**
- **🟢 Green entries**: Components found in your uploaded inventory
- **🔴 Red entries**: Components NOT found in your inventory
- **Live counters** in the sidebar show known/unknown/total statistics

### Step 5: Export Results

**CSV Export (Unknown Components):**
- Click **"📥 Export Unknown Components (CSV)"** to download unrecognized items
- Use for inventory updates or purchasing decisions

**Excel Export (Complete Results):**
- Click **"📊 Export Complete Results (Excel)"** for comprehensive report
- **Color-coded worksheets:**
  - **Sheet 1**: All components with scan status (Green=Scanned, Red=Not Scanned)
  - **Sheet 2**: Unknown components (Orange highlighting)
- **Auto-formatted** columns for professional presentation

## 🏗️ File Structure

```
RATP ODTGEN/
├── app.py                  # Main Streamlit application
├── requirements.txt        # Python dependencies
├── README.md              # This documentation
├── sample_components.csv   # Example data file
├── Test.csv               # Test data file
├── Test.xlsx              # Test Excel file
├── xlsx_to_csv.py         # Utility script for Excel conversion
└── .gitignore             # Git ignore configuration
```

## ⚙️ Technical Details

### Dependencies

- **Streamlit** `>=1.28.0`: Web application framework
- **Pandas** `>=2.0.0`: Data manipulation and analysis
- **openpyxl** `>=3.1.0`: Excel file handling and styling

### Key Architecture Components

**Core Functions:**
- `load_data()`: Cached file loading with format detection and validation
- `check_component_status()`: Fast component verification using set lookup
- `add_scanned_item()`: Session state management with duplicate prevention
- `export_unknown_components()`: CSV generation for unknown items
- `export_complete_results()`: Excel generation with advanced styling

**Session State Management:**
- `uploaded_df`: Cached DataFrame of uploaded inventory
- `scanned_items`: List of all scanned components with metadata
- `known_components`: Set for O(1) lookup performance
- `clear_input`: Flag for input field reset management

### Performance Optimizations

- **Cached Data Loading**: Uploaded files are cached using `@st.cache_data`
- **Set-based Lookups**: Component verification uses Python sets for O(1) performance
- **Efficient Excel Generation**: Uses openpyxl for styled Excel output
- **Session Persistence**: State maintained across interactions

## 🔧 Advanced Features

### Automatic Scanning

The application features **automatic scanning** when users press Enter in the input field:
- No need to click "Scan" buttons
- Immediate feedback on component status
- Input field automatically clears after successful scan
- Prevents accidental duplicate scans

### Excel Report Generation

The Excel export feature provides:
- **Multi-sheet workbooks** with professional formatting
- **Conditional formatting** with color coding
- **Auto-sized columns** for optimal readability
- **Headers with bold styling**
- **Timestamp inclusion** for audit trails

### Error Handling

Comprehensive error management includes:
- **File format validation** (CSV/Excel only)
- **Column requirement checking** (component_name, component_id)
- **Graceful error messages** for user guidance
- **Exception handling** for file corruption or access issues

## 🛠️ Troubleshooting

### Common Issues

**1. File Upload Fails**
- ✅ Ensure your file has exactly these columns: `component_name`, `component_id`
- ✅ Check file format (CSV or Excel .xlsx only)
- ✅ Verify the file isn't password-protected or corrupted
- ✅ Try a smaller file if upload times out

**2. Components Not Found**
- ✅ Verify the component ID matches exactly (case-sensitive)
- ✅ Check for extra spaces, hyphens, or special characters
- ✅ Ensure the CSV/Excel was uploaded successfully
- ✅ Confirm the component exists in your uploaded data

**3. Application Performance**
- ✅ For large files (>10,000 components), consider splitting data
- ✅ Close other browser tabs if experiencing slowdowns
- ✅ Clear browser cache if interface becomes unresponsive
- ✅ Use the online version for better performance

**4. Export Issues**
- ✅ Ensure pop-up blockers aren't preventing downloads
- ✅ Check available disk space for large exports
- ✅ Try a different browser if downloads fail
- ✅ Contact support if exports are consistently corrupted

### Browser Compatibility

**Fully Supported:**
- Chrome 90+ (Recommended)
- Firefox 88+
- Safari 14+
- Edge 90+

**Mobile/Tablet:**
- iOS Safari 14+
- Chrome Mobile 90+
- Responsive design optimized for touch interfaces

## 🚀 Deployment Information

### Cloud Hosting

The application is hosted on **Streamlit Cloud** with the following benefits:
- **High Availability**: 99.9% uptime guarantee
- **Automatic Updates**: Deployed from the main branch
- **Global CDN**: Fast loading worldwide
- **SSL Security**: HTTPS encryption for all traffic

### URL Structure

- **Primary URL**: `https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/`
- **Direct Access**: No authentication required
- **Session Management**: Individual user sessions isolated

## 📊 Use Cases & Applications

### Manufacturing Quality Control
- **Incoming Inspection**: Verify received components against purchase orders
- **Production Line**: Check component availability before assembly
- **Quality Audits**: Validate component authenticity and specifications

### Inventory Management
- **Stock Verification**: Confirm physical inventory matches records
- **Cycle Counting**: Regular verification of high-value components
- **Discrepancy Detection**: Identify missing or extra components

### Maintenance Operations
- **Spare Parts Verification**: Ensure correct parts for maintenance tasks
- **Work Order Compliance**: Verify required components are available
- **Asset Tracking**: Monitor component usage and replacement cycles

## 🔐 Security & Privacy

### Data Handling
- **No Persistent Storage**: Data exists only during your browser session
- **Local Processing**: All verification happens in your browser
- **No Data Collection**: No personal or component data is stored by the application
- **Session Isolation**: Each user session is completely independent

### Best Practices
- **Secure Upload**: Only upload files you have permission to use
- **Data Classification**: Consider data sensitivity before using cloud version
- **Access Control**: Implement organizational access controls as needed

## 🤝 Support & Contributing

### Getting Help

1. **Check this documentation** for common solutions
2. **Review error messages** for specific guidance
3. **Test with sample data** to isolate issues
4. **Contact the development team** for technical support

### Contributing

To enhance or modify this application:

1. **Fork** the project repository
2. **Create** a feature branch (`feature/new-functionality`)
3. **Implement** your changes with proper testing
4. **Update** documentation as needed
5. **Submit** a pull request with detailed description

### Feedback

We welcome feedback on:
- **User interface improvements**
- **Additional export formats**
- **Performance optimizations**
- **New feature requests**

## 📄 License

This project is developed for RATP operations and is available under the organization's internal license terms.

## 👨‍💻 Credits

**Developed by:** Josselin Perret - Student at CentraleSupélec  
**Organization:** RATP  
**Context:** Developed during an internship at RATP to automate manual component number recording  
**Technology Stack:** Python, Streamlit, Pandas, openpyxl  
**Deployment:** Streamlit Cloud

---

**🚀 Ready to start? Visit [https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/) and upload your component data!**
