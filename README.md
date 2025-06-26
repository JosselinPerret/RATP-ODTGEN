# 📦 RATP - ODTGEN Vérificateur de composants- **Export Excel avec codes couleur**:
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
- **🌐 Application en ligne**: [https://josselinperret-ratp-odtgen-streamlitapp-9ezp5q.streamlit.app/](https://josselinperret-ratp-odtgen-streamlitapp-9ezp5q.streamlit.app/)

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
  - 🟢 Vert: Composants scannés (trouvés dans l'inventaire)
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
   python ./Tkinter/app_tkinter.py
   ```
   
   **Ou** double-cliquez sur `launch_tkinter.bat`

### Version Streamlit (Web) 🌐

1. **Installez les dépendances** :

   ```bash
   pip install -r requirements.txt
   ```

2. **Lancez l'application** :

   ```bash
   streamlit run ./Streamlit/app.py
   ```

## 📋 Guide d'Utilisation

### Préparation du Fichier de Données

Créez un fichier CSV ou Excel avec deux colonnes obligatoires:

- `Description`: Le nom/description du composant
- `Code RIMSES`: L'identifiant unique (valeur du code-barres)

**Exemple de contenu CSV:**

```csv
Description,Code RIMSES
CARTE CNA PXI,!CGS-5-09211
AMPLIFICATEUR,!AMP-5-02025
CARTE FIP PXI EXPRESS,!COM-5-08964
CARTE MXI EXPRESS PCI EXPRESS,!COM-5-10055

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
├── README.md                  # Cette documentation
├── COMPARAISON.md             # Comparaison entre Streamlit et Tkinter
Streamlit
├── app.py                     # Application Streamlit
└── requirements.txt           # Dépendances Python pour Streamlit
Tkinter
├── app_tkinter.py             # Application Tkinter native
├── requirements_tkinter.txt   # Dépendances Python pour Tkinter
└── launch_tkinter.bat         # Script de lancement rapide pour Windows
```

## ⚙️ Technical Details

### Dépendances

- **Pandas** `>=2.0.0`: Manipulation et analyse de données
- **openpyxl** `>=3.1.0`: Gestion et mise en forme de fichiers Excel
- **Tkinter** (inclus avec Python): Interface graphique native
- **Streamlit** `>=1.28.0`: Framework d'application web (version web uniquement)

## 🛠️ Dépannage

### Problèmes Courants

**1. L'importation du fichier échoue**
- ✅ Vérifiez que votre fichier contient exactement ces colonnes: `Description`, `Code RIMSES`
- ✅ Vérifiez le format du fichier (CSV ou Excel .xlsx uniquement)
- ✅ Assurez-vous que le fichier n'est pas protégé par mot de passe ou corrompu
- ✅ Essayez un fichier plus petit si le temps d'importation est trop long

**2. Composants non trouvés**
- ✅ Vérifiez que l'ID du composant correspond exactement (sensible à la casse)
- ✅ Vérifiez l'absence d'espaces supplémentaires, traits d'union ou caractères spéciaux
- ✅ Assurez-vous que le CSV/Excel a été correctement importé
- ✅ Confirmez que le composant existe dans vos données téléchargées

**3. Performance de l'application**
- ✅ Pour les fichiers volumineux (>10 000 composants), envisagez de diviser les données
- ✅ Fermez les autres onglets du navigateur en cas de ralentissement
- ✅ Videz le cache du navigateur si l'interface devient non réactive
- ✅ Utilisez la version en ligne pour de meilleures performances

**4. Problèmes d'exportation**
- ✅ Vérifiez que les bloqueurs de pop-up n'empêchent pas les téléchargements
- ✅ Vérifiez l'espace disque disponible pour les exportations volumineuses
- ✅ Essayez un autre navigateur si les téléchargements échouent
- ✅ Contactez le support si les exportations sont systématiquement corrompues

### Compatibilité des Navigateurs

**Entièrement pris en charge:**
- Chrome 90+ (Recommandé)
- Firefox 88+
- Safari 14+
- Edge 90+

**Mobile/Tablette:**
- iOS Safari 14+
- Chrome Mobile 90+
- Design responsive optimisé pour les interfaces tactiles

## 🚀 Informations de Déploiement

### Hébergement Cloud

L'application est hébergée sur **Streamlit Cloud** avec les avantages suivants:
- **Haute disponibilité**: Garantie de disponibilité de 99,9%
- **Mises à jour automatiques**: Déploiement depuis la branche principale
- **CDN mondial**: Chargement rapide dans le monde entier
- **Sécurité SSL**: Cryptage HTTPS pour tout le trafic

### Structure d'URL

- **URL principale**: `https://josselinperret-ratp-odtgen-streamlitapp-9ezp5q.streamlit.app/`
- **Accès direct**: Aucune authentification requise
- **Gestion des sessions**: Sessions utilisateur individuelles isolées

## 📊 Cas d'Utilisation & Applications

### Contrôle Qualité en Fabrication
- **Inspection à réception**: Vérifier les composants reçus par rapport aux bons de commande
- **Ligne de production**: Vérifier la disponibilité des composants avant l'assemblage
- **Audits qualité**: Valider l'authenticité et les spécifications des composants

### Gestion des Stocks
- **Vérification d'inventaire**: Confirmer que l'inventaire physique correspond aux registres
- **Comptage cyclique**: Vérification régulière des composants à haute valeur
- **Détection des écarts**: Identifier les composants manquants ou excédentaires

### Opérations de Maintenance
- **Vérification des pièces détachées**: Assurer les bonnes pièces pour les tâches de maintenance
- **Conformité des ordres de travail**: Vérifier la disponibilité des composants requis
- **Suivi des actifs**: Surveiller l'utilisation et le remplacement des composants

## 🔐 Sécurité & Confidentialité

### Traitement des Données
- **Aucun stockage persistant**: Les données n'existent que pendant votre session navigateur
- **Traitement local**: Toutes les vérifications s'effectuent dans votre navigateur
- **Aucune collecte de données**: Aucune donnée personnelle ou de composant n'est stockée par l'application
- **Isolation des sessions**: Chaque session utilisateur est complètement indépendante

### Bonnes Pratiques
- **Import sécurisé**: N'importez que les fichiers que vous êtes autorisé à utiliser
- **Classification des données**: Considérez la sensibilité des données avant d'utiliser la version cloud
- **Contrôle d'accès**: Implémentez des contrôles d'accès organisationnels selon les besoins

## 🤝 Support & Contribution

### Obtenir de l'Aide

1. **Consultez cette documentation** pour les solutions courantes
2. **Examinez les messages d'erreur** pour des conseils spécifiques
3. **Testez avec des données d'exemple** pour isoler les problèmes
4. **Contactez l'équipe de développement** pour un support technique

### Contribuer

Pour améliorer ou modifier cette application:

1. **Dupliquez** le dépôt du projet
2. **Créez** une branche de fonctionnalité (`fonctionnalité/nouvelle-fonctionnalité`)
3. **Implémentez** vos modifications avec des tests appropriés
4. **Mettez à jour** la documentation si nécessaire
5. **Soumettez** une demande de fusion avec une description détaillée

### Retours

Nous accueillons vos retours sur:
- **Améliorations de l'interface utilisateur**
- **Formats d'exportation supplémentaires**
- **Optimisations de performance**
- **Demandes de nouvelles fonctionnalités**

## 📄 Licence

This project is under the GNU General Public License v3.0.

## 👨‍💻 Crédits

**Développé par:** Josselin Perret, étudiant à CentraleSupélec
**Stack Technologique:** Python, Streamlit, Pandas, openpyxl  
**Déploiement:** Streamlit Cloud

---

**🚀 Prêt à commencer? Visitez [https://josselinperret-ratp-odtgen-streamlitapp-9ezp5q.streamlit.app/](https://josselinperret-ratp-odtgen-streamlitapp-9ezp5q.streamlit.app/) et importez vos données de composants!**
