# 📦 RATP - ODTGEN Vérificateur de- **Export Excel avec codes couleur**:
  - 🟢 Vert: Composants scannés (trouvés dans l'inventaire)
  - 🔴 Rouge: Composants non scannés (dans l'inventaire mais non vérifiés)
  - 🟠 Orange: Composants inconnus (scannés mais absents de l'inventaire)
- **Suivi d'audit**: Enregistrement complet de toutes les activités de scanosants par Code-Barres

Application Python développée par **Josselin Perret** (étudiant à CentraleSupélec) lors de son stage ouvrier à la RATP. Cette solution permet aux équipes d'exploitation de télécharger des inventaires de composants et de vérifier les codes-barres en temps réel pour le contrôle qualité et la gestion d'inventaire.

## 🎯 Deux Versions Disponibles

### 🌐 Version Streamlit (Web) - `app.py`
- Interface web responsive
- Accès multi-utilisateur
- Déploiement serveur possible
- **🌐 Application en ligne**: [https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/)

### 🖥️ Version Tkinter (Native) - `app_tkinter.py` ⭐ **RECOMMANDÉE**
- **🔄 Mode scan en continu** sans re-clic
- **👆 Sélection manuelle** par clic sur tableau
- **🔍 Recherche et filtrage** en temps réel
- **⚡ Performance optimisée** pour usage intensif
- Interface native desktop plus réactive

> 📋 Voir [COMPARISON.md](COMPARISON.md) pour une comparaison détaillée des deux versions

## 🚀 Fonctionnalités Principales

### Import de Données
- **Formats multiples**: Support des fichiers CSV et Excel (.xlsx)
- **Validation automatique**: Vérification des colonnes requises

### Scan et Vérification
- **Scan en temps réel**: Vérification instantanée avec scan automatique à l'appui sur Entrée
- **Vérification intelligente**: Contrôle automatique des composants scannés avec l'inventaire chargé
- **Prévention des doublons**: Détection pour éviter le re-scan du même composant

### Export et Rapports
- **Export CSV**: Export des composants inconnus pour analyse
- **Export Excel avec codes couleur**:
  - � Vert: Composants scannés (trouvés dans l'inventaire)
  - 🔴 Rouge: Composants non scannés (dans l'inventaire mais non vérifiés)
  - 🟠 Orange: Composants inconnus (scannés mais absents de l'inventaire)
- **Audit Trail**: Complete record of all scanning activities

## 🛠️ Installation & Configuration

### Prérequis

- Python 3.9 ou plus récent
- pip package manager

### Installation Locale

1. **Téléchargez** ce projet sur votre machine locale

### Version Tkinter (Recommandée) 🖥️

1. **Installez les dépendances** :

   ```bash
   pip install -r requirements_tkinter.txt
   ```

2. **Lancez l'application** :

   ```bash
   python app_tkinter.py
   ```
   
   **Ou** double-cliquez sur `launch_tkinter.bat`

### Version Streamlit (Web) 🌐

1. **Installez les dépendances** :

   ```bash
   pip install -r requirements.txt
   ```

2. **Lancez l'application** :

   ```bash
   streamlit run app.py
   ```

## 📋 Guide d'Utilisation

### Préparation du Fichier de Données

Créez un fichier CSV ou Excel avec deux colonnes obligatoires:

- `component_name`: Le nom/description du composant
- `component_id`: L'identifiant unique (valeur du code-barres)

**Exemple de contenu CSV:**

```csv
component_name,component_id
Résistance 10k,123456
Condensateur 100nF,234567
LED Rouge 5mm,345678
Transistor BC547,456789
```

**Format Excel:**
La même structure s'applique aux fichiers Excel (.xlsx).

### Téléchargement du Fichier

1. Utilisez le bouton de téléchargement dans la barre latérale
2. Sélectionnez votre fichier CSV ou Excel
3. Vérifiez que les données s'affichent correctement

### Scan des Composants

1. Entrez les IDs des composants dans le champ "Scanner ou entrer l'ID du composant"
2. Appuyez sur **Entrée** pour un scan automatique
3. Consultez les résultats en temps réel

### Suivi des Résultats

**Indicateurs de statut:**

- **🟢 Entrées vertes**: Composants trouvés dans votre inventaire
- **🔴 Entrées rouges**: Composants NON trouvés dans votre inventaire

### Export des Résultats

**Export CSV (Composants Inconnus):**

- Cliquez sur **"📥 Exporter Composants Inconnus (CSV)"** pour télécharger les éléments non reconnus

**Export Excel (Résultats Complets):**

- Cliquez sur **"📊 Exporter Résultats Complets (Excel)"** pour un rapport détaillé
- **Feuilles avec codes couleur:**
  - **Feuille 1**: Statut de tous les composants (Vert=Scanné, Rouge=Non Scanné)
  - **Feuille 2**: Composants inconnus (surbrillance Orange)

## 📦 Structure des Fichiers

```
RATP ODTGEN/
├── app.py                     # Application Streamlit principale
├── app_tkinter.py             # Application Tkinter native
├── requirements.txt           # Dépendances Python pour Streamlit
├── requirements_tkinter.txt   # Dépendances Python pour Tkinter
├── launch_tkinter.bat         # Script de lancement rapide pour Windows
├── README.md                  # Cette documentation
└── sample_components.csv      # Fichier de données d'exemple
```

## ⚙️ Technical Details

### Dépendances

- **Pandas** `>=2.0.0`: Manipulation et analyse de données
- **openpyxl** `>=3.1.0`: Gestion et mise en forme de fichiers Excel
- **Tkinter** (inclus avec Python): Interface graphique native
- **Streamlit** `>=1.28.0`: Framework d'application web (version web uniquement)

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

**Developed by:** Josselin Perret  
**Organization:** RATP  
**Technology Stack:** Python, Streamlit, Pandas, openpyxl  
**Deployment:** Streamlit Cloud

---

**🚀 Ready to start? Visit [https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/) and upload your component data!**
