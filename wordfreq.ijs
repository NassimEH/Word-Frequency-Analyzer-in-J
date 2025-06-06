NB. 📝 Journal de journée interactif avec export HTML et commentaires complets

require 'dates'     NB. On importe le module 'dates' pour accéder à la fonction 6!:0 qui donne la date et l’heure

NB. Fonction qui affiche une question et lit une réponse de l'utilisateur
ask =: 3 : 0         NB. Définition d'une fonction monadique (une seule entrée, nommée y)
  smoutput y         NB. smoutput affiche la question (valeur de y)
  1!:1 <''           NB. 1!:1 lit une ligne depuis l'entrée standard (console). On utilise '' pour stdin
)

NB. Fonction qui pose les questions à l'utilisateur et retourne une phrase résumée
getInputs =: 3 : 0
  NB. On demande et récupère chaque réponse utilisateur dans des variables
  name =. ask '👤 Quel est ton prénom ?'
  mood =. ask '😊 Comment te sens-tu aujourd''hui ? (ex: heureux, fatigué...)'
  activity =. ask '🏃 Qu''as-tu fait aujourd''hui ? (ex: sport, travail, détente...)'
  weather =. ask '🌤️ Quel temps faisait-il ? (ex: ensoleillé, pluvieux...)'

  NB. Construction de la phrase finale en concaténant les chaînes
  summary =. name , ', tu te sentais ' , mood , ', tu as ' , activity , ' pendant une journée ' , weather , '.'
  summary        NB. La fonction renvoie cette phrase (c’est la dernière ligne = valeur de retour implicite)
)

NB. Fonction qui enregistre le résumé dans un fichier texte
saveToTextFile =: 3 : 0
  file =. 'journal.txt'                      NB. Nom du fichier
  date =. ('🗓️ ' , 6!:0 '') , LF             NB. Ajoute date + saut de ligne (LF)
  entry =. date , y , LF , '───────────────', LF   NB. Format d'une entrée complète
  entry 1!:2 <file                           NB. 1!:2 écrit (append) dans le fichier
  smoutput '💾 Entrée sauvegardée dans journal.txt'
)

NB. Fonction qui enregistre l'entrée dans un fichier HTML
saveToHtmlFile =: 3 : 0
  file =. 'journal.html'                     NB. Nom du fichier de sortie
  date =. 6!:0 ''                             NB. On récupère la date actuelle brute
  dateStr =. '🗓️ ' , ": date                 NB. On convertit la date en chaîne lisible

  NB. On construit le contenu HTML minimaliste avec la phrase et la date
  html =. '<html><head><meta charset="UTF-8"><title>Journal</title></head><body>' , LF ,
         '<h2>Résumé de la journée</h2>' , LF ,
         '<p>' , dateStr , '</p>' , LF ,
         '<p>' , y , '</p>' , LF ,
         '<hr></body></html>'

  html 1!:2 <file                             NB. Écrit le HTML dans le fichier
  smoutput '🌐 Entrée exportée dans journal.html'
)

NB. Fonction principale qui orchestre le tout
main =: 3 : 0
  smoutput '📝 Bienvenue dans ton journal de journée !'
  smoutput '────────────────────────────────────────'

  summary =. getInputs ''         NB. Appelle la fonction pour obtenir le résumé

  smoutput LF , '✨ Résumé :'
  smoutput summary                NB. Affiche le résumé dans la console

  saveToTextFile summary         NB. Sauvegarde dans un fichier texte
  saveToHtmlFile summary         NB. Exporte également au format HTML
)

NB. Appel de la fonction principale
main ''
