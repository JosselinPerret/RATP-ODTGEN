# 📦 Barcode Component Verifier

A Python web application built with **Streamlit** that allows users to upload a CSV file containing component data and verify scanned barcodes against the uploaded list in real-time.

## Features

### Core Functionality
- **CSV Upload**: Drag-and-drop interface to upload component lists
- **Barcode Scanning**: Real-time barcode verification (manual input simulation)
- **Status Verification**: Automatic checking of scanned components against uploaded list
- **Color-coded Results**: Green for known components, red for unknown ones
- **Duplicate Prevention**: Prevents showing the same component multiple times

### Interface Features
- **Responsive Layout**: Clean, modern interface with sidebar controls
- **Real-time Feedback**: Immediate status updates when scanning
- **Data Tables**: Dynamic display of scan results with timestamps
- **Export Functionality**: Download unknown components as CSV
- **Summary Counters**: Live count of known/unknown/total scans

### Additional Features
- **Clear All Scans**: Reset all scan data
- **Sample Data Preview**: View uploaded CSV structure
- **Test Buttons**: Quick testing with known/unknown component examples
- **Session Management**: Data persists during the session

## Installation

### Prerequisites
- Python 3.9 or higher
- pip package manager

### Setup
1. **Clone or download** this project to your local machine

2. **Navigate** to the project directory:
   ```bash
   cd RATP_ODTGEN
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

## Usage

### Step 1: Prepare Your CSV File
Create a CSV file with exactly two columns:
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

### Step 2: Upload the CSV
1. Use the **drag-and-drop** file uploader in the sidebar
2. Select your CSV file
3. Verify the sample data appears correctly

### Step 3: Start Scanning
1. Enter component IDs in the **"Scan or enter component ID"** field
2. Click **"Scan Component"** or press Enter
3. View real-time results in the main area

### Step 4: Monitor Results
- **Green entries** (🟢): Components found in your uploaded list
- **Red entries** (🔴): Components NOT found in your list
- Monitor counters in the sidebar for quick statistics

### Step 5: Export Unknown Components
- Click **"Export Unknown Components"** to download a CSV of unrecognized items
- Use this for inventory management or list updates

## File Structure

```
RATP_ODTGEN/
├── app.py              # Main Streamlit application
├── requirements.txt    # Python dependencies
├── README.md          # This documentation
└── prompt.md          # Original project requirements
```

## Technical Details

### Dependencies
- **Streamlit**: Web application framework
- **Pandas**: Data manipulation and analysis
- **Python Standard Library**: IO operations, datetime handling

### Key Functions
- `load_csv_data()`: Cached CSV loading with validation
- `check_component_status()`: Component verification logic
- `add_scanned_item()`: Session state management
- `export_unknown_components()`: CSV export functionality

### Session State Management
The application uses Streamlit's session state to maintain:
- Uploaded DataFrame
- List of scanned items
- Known component IDs set for fast lookup

## Troubleshooting

### Common Issues

**1. CSV Upload Fails**
- Ensure your CSV has exactly the columns: `component_name`, `component_id`
- Check for proper CSV formatting (commas as separators)
- Verify the file is not corrupted

**2. Components Not Found**
- Verify the component ID matches exactly (case-sensitive)
- Check for extra spaces or special characters
- Ensure the CSV was uploaded successfully

**3. Application Won't Start**
- Verify Python 3.9+ is installed: `python --version`
- Install requirements: `pip install -r requirements.txt`
- Check for firewall blocking localhost connections

**4. Performance Issues**
- For large CSV files (>10,000 components), consider splitting the data
- Close other browser tabs if experiencing slowdowns

### Browser Compatibility
- **Recommended**: Chrome, Firefox, Safari, Edge (latest versions)
- **Mobile**: Responsive design works on tablets and phones

## Contributing

To extend or modify this application:

1. **Fork** the project
2. **Create** a feature branch
3. **Make** your changes
4. **Test** thoroughly with various CSV formats
5. **Submit** a pull request

## License

This project is open source and available under the [MIT License](LICENSE).

## Support

For issues or questions:
1. Check the troubleshooting section above
2. Review the code comments in `app.py`
3. Create an issue in the project repository

---

**Built with ❤️ using Streamlit and Python**
