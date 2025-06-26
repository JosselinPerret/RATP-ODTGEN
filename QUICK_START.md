# 🎯 Guide de Démarrage Rapide - RATP ODTGEN Scanner

## ⚡ Lancement Express

### Version Tkinter (Recommandée pour scan intensif)
```bash
python app_tkinter.py
```
**Ou** double-clic sur `launch_tkinter.bat`

### Version Streamlit (Interface web)
```bash
streamlit run app.py
```

## 🚀 Test Rapide

1. **Lancez** l'application Tkinter
2. **Chargez** le fichier d'exemple `sample_components_test.csv`
3. **Testez le scan continu** avec ces codes :
   - `12345` → Résistance 10K Ohm ✅
   - `67890` → Condensateur 100µF ✅
   - `99999` → Composant inconnu ❌
4. **Testez la sélection manuelle** en cliquant sur une ligne du tableau
5. **Exportez** vos résultats

## 🔄 Mode Scan Continu (Tkinter)

1. Le focus reste sur le champ de saisie
2. Tapez un code-barres
3. Appuyez sur **Entrée**
4. Le champ se vide automatiquement
5. Répétez sans interruption !

## 👆 Sélection Manuelle (Tkinter)

1. Utilisez la **recherche** pour filtrer
2. **Cliquez** directement sur une ligne
3. Elle est marquée comme scannée manuellement
4. Symbole 👆 dans l'historique

## 🎨 Codes Couleur

- 🟢 **Vert** : Composant trouvé/scanné
- 🔴 **Rouge** : Composant inconnu
- 🟠 **Orange** : En attente de scan

## 📊 Export

- **CSV** : Composants inconnus seulement
- **Excel** : Rapport complet avec couleurs
  - Feuille 1 : Statut de tous les composants
  - Feuille 2 : Composants inconnus scannés

---

**🚀 Prêt à scanner ! L'application Tkinter offre la meilleure expérience pour un usage professionnel intensif.**
