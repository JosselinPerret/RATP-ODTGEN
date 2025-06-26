# 📚 RATP ODTGEN - Documentation Technique

## 🔍 Aperçu du Projet

**Nom du Projet:** RATP ODTGEN - Vérificateur de Composants par Code-Barres  
**Développeur:** Josselin Perret  
**Institution:** CentraleSupélec  
**Organisation:** RATP  
**Contexte:** Développé lors d'un stage ouvrier

### Objectif
Application professionnelle conçue pour les équipes d'exploitation RATP afin d'effectuer une vérification des composants en temps réel à l'aide de la technologie de lecture de codes-barres. Permet de rationaliser les processus de contrôle qualité dans les opérations de fabrication et de maintenance.

## 🏗️ Architecture

### Stack Technologique
```
Frontend: Tkinter (Interface Native) ou Streamlit (Interface Web)
Backend: Python 3.9+
Traitement des Données: Pandas
Génération Excel: openpyxl
```

### Flux d'Application
```
1. Chargement du Fichier (CSV/Excel) → Validation des Données → Mise en Cache
2. Scan des Composants → Vérification en Temps Réel → Mise à Jour du Statut
3. Affichage des Résultats → Génération de Rapports → Téléchargement
```

## 📋 Fonctionnalités Clés

### Import et Validation
- Support des formats CSV et Excel (.xlsx)
- Validation des colonnes requises (`component_name`, `component_id`)
- Aperçu automatique des données chargées

### Scan et Vérification
- **Version Tkinter:** Mode scan continu avec focus automatique
- **Version Tkinter:** Sélection manuelle par clic sur tableau
- Vérification instantanée des composants scannés
- Prévention intelligente des doublons
- Statistiques en temps réel

### Export et Rapports
- Export CSV des composants inconnus
- Export Excel complet avec formatage avancé:
  - Feuille 1: Tous les composants avec statut (code couleur)
  - Feuille 2: Composants inconnus uniquement

## 💻 Comparaison des Versions

### Version Tkinter (`app_tkinter.py`)
✅ **RECOMMANDÉE pour usage professionnel intensif**
- Performance optimisée sans rechargement
- Mode scan continu sans re-clic
- Sélection manuelle par clic sur tableau
- Recherche/filtrage en temps réel
- Interface native plus réactive

### Version Streamlit (`app.py`)
- Interface web responsive
- Accessible depuis tout navigateur
- Déploiement serveur possible
- Adapté pour scan occasionnel

## 🔧 Installation et Lancement

### Version Tkinter (Recommandée)
```bash
pip install -r requirements_tkinter.txt
python app_tkinter.py
# ou double-clic sur launch_tkinter.bat
```

### Version Streamlit (Web)
```bash
pip install -r requirements.txt
streamlit run app.py
```

---

**📝 Documentation développée par Josselin Perret, étudiant à CentraleSupélec, dans le cadre d'un stage ouvrier à la RATP.**
