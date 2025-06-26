# RATP - ODTGEN Barcode Scanner - Version Tkinter

## Nouvelles fonctionnalités

### 🔄 Mode Scan en Continu
- **Plus besoin de recliquer** dans la zone de texte après chaque scan
- Le focus reste automatiquement sur le champ de saisie
- Scan immédiat dès que vous appuyez sur Entrée
- Interface optimisée pour un usage intensif

### 👆 Sélection Manuelle dans le Tableau
- **Cliquez directement** sur n'importe quelle ligne du tableau des composants pour la marquer comme scannée
- Distinction visuelle entre les éléments scannés au lecteur et ceux marqués manuellement
- Symboles différenciés : 📱 pour scan barcode, 👆 pour sélection manuelle

### 🎨 Interface Améliorée
- **Tableau des composants** avec recherche intégrée
- **Tri et filtrage** en temps réel
- **Codes couleur** pour un suivi visuel immédiat :
  - 🟢 Vert : Composants scannés/trouvés
  - 🔴 Rouge : Composants inconnus
  - 🟠 Orange : Composants en attente de scan
- **Statistiques en temps réel** avec compteurs visuels

### 📊 Fonctionnalités Conservées et Améliorées
- **Chargement de fichiers** CSV et Excel
- **Export complet** avec codes couleur en Excel
- **Export des composants inconnus** en CSV
- **Validation automatique** des composants
- **Historique complet** des scans avec horodatage

## Utilisation

### Lancement de l'Application
1. **Méthode 1** : Double-cliquer sur `launch_tkinter.bat`
2. **Méthode 2** : Exécuter `python app_tkinter.py` dans le terminal

### Workflow Optimisé
1. **Chargement** : Cliquez sur "📁 Load CSV/Excel File" et sélectionnez votre fichier
2. **Scan continu** : 
   - Tapez ou scannez un code-barres dans le champ "Barcode Scanner"
   - Appuyez sur Entrée
   - Le champ se vide automatiquement et reste focalisé
   - Répétez sans interruption
3. **Sélection manuelle** :
   - Utilisez la recherche pour filtrer les composants
   - Cliquez directement sur une ligne pour la marquer comme scannée
4. **Export** : Utilisez les boutons d'export pour sauvegarder vos résultats

### Raccourcis et Astuces
- **Recherche rapide** : Tapez dans le champ de recherche pour filtrer les composants
- **Scan en masse** : Le mode continu permet de scanner très rapidement
- **Suivi visuel** : Les couleurs vous indiquent immédiatement l'état de chaque composant
- **Historique complet** : Tous les scans sont horodatés et différenciés par méthode

## Avantages par rapport à la version Streamlit

### Performance
- ✅ **Interface native** plus réactive
- ✅ **Pas de rechargement** de page entre les scans
- ✅ **Gestion optimisée** des événements clavier
- ✅ **Moins de latence** pour les scans intensifs

### Ergonomie
- ✅ **Focus automatique** maintenu sur le champ de saisie
- ✅ **Interaction directe** avec le tableau
- ✅ **Retour visuel immédiat** sans délai
- ✅ **Interface multi-panneaux** plus organisée

### Fonctionnalités
- ✅ **Mode scan continu** sans interruption
- ✅ **Sélection manuelle** par clic
- ✅ **Recherche et filtrage** intégrés
- ✅ **Meilleure gestion** des gros volumes de données

## Dépendances

Les dépendances sont minimales car Tkinter est inclus avec Python :
```
pandas>=2.0.0
openpyxl>=3.1.0
```

Installation :
```bash
pip install -r requirements_tkinter.txt
```

## Architecture

L'application est structurée en une classe principale `BarcodeScanner` avec :
- **Interface modulaire** (panneaux séparés)
- **Gestion d'état** centralisée
- **Événements optimisés** pour la performance
- **Export avancé** avec formatage Excel

Cette version Tkinter offre une expérience utilisateur considérablement améliorée pour un usage professionnel intensif.
