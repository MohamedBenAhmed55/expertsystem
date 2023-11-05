import tkinter as tk
import subprocess

# Fonction pour interagir avec le système expert Prolog
def consulter_systeme_expert(symptomes):
    # Convertir la liste de symptômes en une chaîne de texte
    symptomes_str = ', '.join(symptomes)

    # Exécuter le système expert Prolog
    process = subprocess.Popen(['swipl', '-s', 'systeme_expert.pl', '-g', f'diagnostic([{symptomes_str}], Diagnostic, Solution), write(Diagnostic), write(\'#\'), write(Solution), halt.'], stdout=subprocess.PIPE, text=True)
    output, _ = process.communicate()

    # Diviser la sortie en diagnostic et solution
    diagnostic, solution = output.strip().split('#')

    return diagnostic, solution

# Fonction pour gérer le bouton "Diagnostiquer"
def diagnostiquer():
    symptomes = liste_symptomes.get().split(', ')
    diagnostic, solution = consulter_systeme_expert(symptomes)
    resultat_label.config(text=f"Diagnostic : {diagnostic}\nSolution : {solution}")

# Créer une fenêtre principale
fenetre = tk.Tk()
fenetre.title("Système Expert en Psychologie")

# Créer une étiquette d'instruction
instruction_label = tk.Label(fenetre, text="Entrez les symptômes (séparés par des virgules) :")
instruction_label.pack()

# Créer une zone de texte pour les symptômes
liste_symptomes = tk.Entry(fenetre)
liste_symptomes.pack()

# Créer un bouton "Diagnostiquer"
diagnostiquer_button = tk.Button(fenetre, text="Diagnostiquer", command=diagnostiquer)
diagnostiquer_button.pack()

# Créer une étiquette pour afficher les résultats
resultat_label = tk.Label(fenetre, text="")
resultat_label.pack()

# Démarrer la boucle principale de l'interface
fenetre.mainloop()
