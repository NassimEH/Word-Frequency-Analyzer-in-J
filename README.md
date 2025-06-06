## 📝 README.md — **Version complète bilingue**

````markdown
# 📊 Analyseur de Fréquence des Mots en J / Word Frequency Analyzer in J

Un petit projet codé en **langage J**, en un seul fichier.  
Il analyse un texte donné, compte les mots les plus fréquents, et peut exporter les résultats en HTML.

A small single-file project written in the **J programming language**.  
It analyzes a given text, counts the most frequent words, and can export the results to HTML.

---

## 🧾 Fichier principal / Main File

- `wordfreq.ijs` — script principal contenant toute la logique  
- Main script with all logic

---

## 🧠 Fonctionnalités / Features

- Compte les occurrences des mots dans un texte  
- Trie les résultats par fréquence décroissante  
- Affiche les **N mots les plus fréquents**  
- Exportation optionnelle des résultats en HTML  

→  
- Counts word frequencies in a given text  
- Sorts them in descending order  
- Displays **top N most frequent words**  
- Optional export to HTML

---

## ▶️ Exécution / How to Run

### 1. Installer J / Install J

Télécharge et installe l’interpréteur J ici :  
Download the J interpreter here:  
🔗 [https://www.jsoftware.com/#/download](https://www.jsoftware.com/#/download)

### 2. Exécuter le script / Run the script

#### Terminal

```bash
jconsole wordfreq.ijs
````

#### Interface graphique (JQt)

1. Ouvre **JQt**
2. Charge `wordfreq.ijs`
3. Appuie sur `Ctrl+R` pour exécuter

---

## 📝 Exemple de sortie / Sample Output

```
Top 10 words:
"the" 15
"and" 12
"to" 9
...
```

Si l'export est activé, un fichier `output.html` est généré.
If export is enabled, `output.html` is generated.

---

## ⚙️ Paramètres personnalisables / Configurable Settings

* Texte à analyser / Text to analyze (`text =:`)
* Nombre de mots à afficher / Top N words (`topN =:`)
* Export HTML (`export =: 1` ou `0`)

---

## ✅ Prérequis / Requirements

* Aucune dépendance externe
* Fonctionne sur Windows, macOS, Linux
  → No external dependencies. Cross-platform.

---

## 📄 Licence / License

MIT — libre d’utiliser, modifier et distribuer.
MIT — free to use, modify, and distribute.

````

---

## 📌 README — **Version condensée 🇫🇷 / 🇬🇧**

```markdown
📊 **Analyseur de texte en J / Word Frequency Analyzer**

- 🔠 Analyse les mots d’un texte et affiche les plus fréquents
- 💾 Export HTML optionnel
- 📎 Script unique : `wordfreq.ijs`
- ▶️ Lancez avec `jconsole wordfreq.ijs`
- 📥 [Télécharger J](https://www.jsoftware.com/#/download)

No dependencies • Runs everywhere • MIT licensed

