import tkinter as tk
from pyswip import Prolog

def diagnostiquer():
    symptomes = entree_symptomes.get()
    prolog = Prolog()
    prolog.consult("systeme_expert.pl")  

    # Effectue le diagnostic
    diagnostic = None
    for result in prolog.query(f"diagnostic({symptomes}, Diagnostic)"):
        diagnostic = result["Diagnostic"]

    if diagnostic:
        resultat.configure(text=f"Résultat du diagnostic : {diagnostic}")
    else:
        resultat.configure(text="Aucun diagnostic trouvé pour ces symptômes.")

# Créez une fenêtre
fenetre = tk.Tk()
fenetre.title("Système Expert en Psychologie")

# Zone de texte pour les symptômes
label_symptomes = tk.Label(fenetre, text="Entrez les symptômes :")
label_symptomes.pack()
entree_symptomes = tk.Entry(fenetre, width=40)
entree_symptomes.pack()

# Bouton pour diagnostiquer
bouton_diagnostiquer = tk.Button(fenetre, text="Diagnostiquer", command=diagnostiquer)
bouton_diagnostiquer.pack()

# Résultat du diagnostic
resultat = tk.Label(fenetre, text="")
resultat.pack()

fenetre.mainloop()
