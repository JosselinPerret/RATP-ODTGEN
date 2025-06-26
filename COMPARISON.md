# Comparaison des Versions - RATP ODTGEN Scanner

## Version Streamlit (app.py) vs Version Tkinter (app_tkinter.py)

| Fonctionnalité | Streamlit | Tkinter | Avantage |
|----------------|-----------|---------|----------|
| **Mode Scan Continu** | ❌ Nécessite re-clic | ✅ Focus automatique | **Tkinter** |
| **Sélection Manuelle** | ❌ Non disponible | ✅ Clic sur tableau | **Tkinter** |
| **Interface** | 🌐 Web responsive | 🖥️ Native desktop | **Égalité** |
| **Performance** | ⚠️ Rechargements | ✅ Événements natifs | **Tkinter** |
| **Installation** | 📦 3 dépendances | 📦 2 dépendances | **Tkinter** |
| **Recherche/Filtrage** | ❌ Non disponible | ✅ Temps réel | **Tkinter** |
| **Export Excel** | ✅ Complet | ✅ Complet | **Égalité** |
| **Codes Couleur** | ✅ Basique | ✅ Avancés | **Tkinter** |

## Recommandation d'Usage

### Utilisez **Streamlit** (app.py) si

- Vous préférez une interface web
- Vous avez besoin d'un accès multi-utilisateur
- Vous déployez sur un serveur
- Vous scannez occasionnellement
- Accès en ligne: [https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/](https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/)

### Utilisez **Tkinter** (app_tkinter.py) si

- Vous scannez intensivement
- Vous voulez une réactivité maximale
- Vous préférez une application native
- Vous utilisez la sélection manuelle
- **RECOMMANDÉ pour un usage professionnel intensif**

## Lancement Rapide

### Version Streamlit

```bash
streamlit run app.py
# ou accès en ligne: https://ratp-odtgen-6bclhpj7py2gyttlju3dsp.streamlit.app/
```

### Version Tkinter

```bash
python app_tkinter.py
# ou double-clic sur launch_tkinter.bat
```
