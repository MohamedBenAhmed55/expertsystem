import tkinter as tk
from tkinter import ttk
import subprocess

# Liste des symptômes
symptoms = [
    "Parle moins fluidement",
    "Rigide et inflexible",
    "Égoïste",
    "Perturbation émotionnelle instable",
    "Troubles respiratoires, essoufflement",
    "Troubles alimentaires",
    "Troubles de l'état d'esprit",
    "Insomnie",
    "Envie de se suicider",
    "Perte de mémoire",
    "Comportement antisocial",
    "Répétition compulsive de tâches",
    "Expérience de convulsions",
    "Maintien d'une hygiène excessive",
    "Indigestion",
    "Sensation de lourdeur dans les membres",
    "Soupçons excessifs",
    "Estime de soi basse",
    "Inquiétude excessive concernant la maladie",
    "Sensation de faiblesse et de fatigue facile",
    "Sensation de souffrir d'une maladie grave",
    "Douleurs dans certaines parties du corps",
    "Sentiment de désespoir",
    "Sentiment de culpabilité intense",
    "Sentiment de culpabilité intense / très peur de faire des erreurs",
    "Sensation d'excitation excessive",
    "Sentiment de grande intelligence dans un domaine particulier",
    "Peur excessive de certains objets/conditions",
    "Tristesse excessive",
    "Sensation de bonheur après s'être arraché les cheveux",
    "Sensation de bonheur en saisissant un objet accrocheur",
    "Peur excessive",
    "Peur excessive de la saleté",
    "Sentiment de manque de confiance en soi",
    "Jamais de sentiment de culpabilité",
    "Transpiration froide facile",
    "Facilité à paniquer",
    "Facilement offensé",
    "Exposition à des traumatismes/violences",
    "Stress excessif pour une chose",
    "Penser toujours négativement",
    "Enclin à se disputer, hostile et souvent perturbé",
    "Tendance à s'immiscer dans les affaires des autres",
    "Mensonges fréquents",
    "Compte fréquemment mentalement",
    "Penser fréquemment de manière irréaliste",
    "Souvent très attentif",
    "Hallucinations fréquentes",
    "Tremblements fréquents",
    "Hallucinations fréquentes",
    "Colère/frustration fréquentes",
    "Vérification fréquente du corps pour de légers problèmes",
    "Cris fréquents et incontrôlables",
    "Tirer fréquemment les cheveux jusqu'à leur chute",
    "Expérience fréquente de perte de fonction physique, paralysie soudaine, sentiment de surdité, cécité, engourdissement mais seulement brièvement",
    "Crampes sévères fréquentes",
    "Expérience fréquente de sautes d'humeur significatives, de très heureux à très triste / vice versa",
    "Douleurs/fréquentes problèmes de santé",
    "Se faire du mal fréquemment",
    "Sentiment fréquent d'être négligé et inattentif",
    "Sentiment fréquent d'inquiétude",
    "Sentiment fréquent d'anxiété, d'agitation et de rêverie",
    "Palpitations cardiaques fréquentes",
    "Céphalées fréquentes",
    "Sentiment de bonheur fréquent, excessivement joyeux",
    "Sentiment fréquent de tension et d'anxiété",
    "Sentiment fréquent de dépression face aux circonstances",
    "Perte de connaissance fréquente",
    "Impatience fréquente",
    "Difficulté à parler normalement",
    "Difficulté de concentration et mémoire réduite",
    "Incapacité à s'adapter/difficulté à s'adapter",
    "Absence d'humour",
    "Jamais peur"
]

# Function to interact with the Prolog-based expert system
def consult_expert_system(symptoms):
    symptoms_str = ', '.join(symptoms)
    process = subprocess.Popen(['swipl', '-s', 'systeme_expert.pl', '-g', f'diagnostic([{symptoms_str}], Diagnostic, Solution), write(Diagnostic), write(\'#\'), write(Solution), halt.'], stdout=subprocess.PIPE, text=True)
    output, _ = process.communicate()
    diagnostic, solution = output.strip().split('#')
    return diagnostic, solution

# Function to handle the "Diagnose" button
def diagnose():
    selected_symptoms = combo_symptoms.get()
    symptoms = selected_symptoms.split(', ')
    diagnostic, solution = consult_expert_system(symptoms)
    result_label.config(text=f"Diagnostic : {diagnostic}\nSolution : {solution}")

# Create the main window
window = tk.Tk()
window.title("Expert System in Psychology")

# Create a label for symptom selection
symptom_label = tk.Label(window, text="Sélectionnez les symptômes (maintenez Ctrl pour une sélection multiple) :")
symptom_label.pack()

# Create a Listbox for symptom selection with multiple selection enabled
combo_symptoms = tk.Listbox(window, selectmode=tk.MULTIPLE, height=len(symptoms))
for symptom in symptoms:
    combo_symptoms.insert(tk.END, symptom)
combo_symptoms.pack()

# Create a "Diagnose" button
diagnose_button = tk.Button(window, text="Diagnostiquer", command=diagnose)
diagnose_button.pack()

# Create a label to display the results
result_label = tk.Label(window, text="")
result_label.pack()

# Start the main loop of the interface
window.mainloop()