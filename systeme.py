# Définition des symptômes
symptomes = {
    'G01': 'Parle moins fluidement',
    'G02': 'Rigide et inflexible',
    'G03': 'Égoïste',
    'G04': 'Perturbation émotionnelle instable',
    'G05': 'Troubles respiratoires, essoufflement',
    'G06': 'Troubles alimentaires',
    'G07': 'Troubles de l\'état d\'esprit',
    'G08': 'Insomnie',
    'G09': 'Envie de se suicider',
    'G10': 'Perte de mémoire',
    'G11': 'Comportement antisocial',
    'G12': 'Répétition compulsive de tâches',
    'G13': 'Expérience de convulsions',
    'G14': 'Maintien d\'une hygiène excessive',
    'G15': 'Indigestion',
    'G16': 'Sensation de lourdeur dans les membres',
    'G17': 'Soupçons excessifs',
    'G18': 'Estime de soi basse',
    'G19': 'Inquiétude excessive concernant la maladie',
    'G20': 'Sensation de faiblesse et de fatigue facile',
    'G21': 'Sensation de souffrir d\'une maladie grave',
    'G22': 'Douleurs dans certaines parties du corps',
    'G23': 'Sentiment de désespoir',
    'G24': 'Sentiment de culpabilité intense',
    'G25': 'Sentiment de culpabilité intense / très peur de faire des erreurs',
    'G26': 'Sensation d\'excitation excessive',
    'G27': 'Sentiment de grande intelligence dans un domaine particulier',
    'G28': 'Peur excessive de certains objets/conditions',
    'G29': 'Tristesse excessive',
    'G30': 'Sensation de bonheur après s\'être arraché les cheveux',
    'G31': 'Sensation de bonheur en saisissant un objet accrocheur',
    'G32': 'Peur excessive',
    'G33': 'Peur excessive de la saleté',
    'G34': 'Sentiment de manque de confiance en soi',
    'G35': 'Jamais de sentiment de culpabilité',
    'G36': 'Transpiration froide facile',
    'G37': 'Facilité à paniquer',
    'G38': 'Facilement offensé',
    'G39': 'Exposition à des traumatismes/violences',
    'G40': 'Stress excessif pour une chose',
    'G41': 'Penser toujours négativement',
    'G42': 'Enclin à se disputer, hostile et souvent perturbé',
    'G43': 'Tendance à s\'immiscer dans les affaires des autres',
    'G44': 'Mensonges fréquents',
    'G45': 'Compte fréquemment mentalement',
    'G46': 'Penser fréquemment de manière irréaliste',
    'G47': 'Souvent très attentif',
    'G48': 'Hallucinations fréquentes',
    'G49': 'Tremblements fréquents',
    'G50': 'Hallucinations fréquentes',
    'G51': 'Colère/frustration fréquentes',
    'G52': 'Vérification fréquente du corps pour de légers problèmes',
    'G53': 'Cris fréquents et incontrôlables',
    'G54': 'Tirer fréquemment les cheveux jusqu\'à leur chute',
    'G55': 'Expérience fréquente de perte de fonction physique, paralysie soudaine, sentiment de surdité, cécité, engourdissement mais seulement brièvement',
    'G56': 'Crampes sévères fréquentes',
    'G57': 'Expérience fréquente de sautes d\'humeur significatives, de très heureux à très triste / vice versa',
    'G58': 'Douleurs/fréquentes problèmes de santé',
    'G59': 'Se faire du mal fréquemment',
    'G60': 'Sentiment fréquent d\'être négligé et inattentif',
    'G61': 'Sentiment fréquent d\'inquiétude',
    'G62': 'Sentiment fréquent d\'anxiété, d\'agitation et de rêverie',
    'G63': 'Palpitations cardiaques fréquentes',
    'G64': 'Céphalées fréquentes',
    'G65': 'Sentiment de bonheur fréquent, excessivement joyeux',
    'G66': 'Sentiment fréquent de tension et d\'anxiété',
    'G67': 'Sentiment fréquent de dépression face aux circonstances',
    'G68': 'Perte de connaissance fréquente',
    'G69': 'Impatience fréquente',
    'G70': 'Difficulté à parler normalement',
    'G71': 'Difficulté de concentration et mémoire réduite',
    'G72': 'Incapacité à s\'adapter/difficulté à s\'adapter',
    'G73': 'Absence d\'humour',
    'G74': 'Jamais peur',

}


# Définition des diagnostics
diagnostics = {
    'P01': 'Ansietas Cemas',
    'P02': 'Anorexia Nervosa',
    'P03': 'Bipolar Disorder',
    'P04': 'Conversion Disorder',
    'P05': 'Depresi',
    'P06': 'Enosimania',
    'P07': 'Fobia',
    'P08': 'Hipokondria',
    'P09': 'Hysteria',
    'P10': 'Multiple personality',
}

# Définition des solutions
solutions = {
    'T01': 'Hospitalisation',
    'T02': 'Psychothérapie par analyse cognitivo-comportementale (CBT)',
    'T03': 'Psychothérapie individuelle',
    'T04': 'Psychothérapie de groupe',
    'T05': 'Psychothérapie environnementale',
    'T06': 'Psychothérapie de soutien',
    'T07': 'Formation à la relaxation',
    'T08': 'Technique PHBS',
    'T09': 'Thérapie sportive',
    'T10': 'Thérapie cognitivo-comportementale',
    # Ajoutez d'autres solutions ici
}


# Règles de diagnostic
regles = {
    'Dépression': ['G06', 'G08', 'G29', 'G34'],
    'Trouble de Stress Post-Traumatique': ['G01', 'G03', 'G09'],
    'Dépendance à la Drogue': ['G62', 'G68'],
    'Trouble de la Personnalité Antisociale': ['G04', 'G11', 'G68'],
    'Trouble de la Personnalité Limite': ['G23', 'G61', 'G64'],
    'Dépendance aux Jeux de Hasard': ['G37', 'G40', 'G65'],
    'Trouble de la Personnalité Paranoïaque': ['G17', 'G22', 'G52'],
    'Trouble de l\'Anxiété Généralisée (TAG)': ['G15', 'G33', 'G37'],
    'Émétophobie': ['G28', 'G44', 'G61'],
    'Trouble de Stress Aigu': ['G26', 'G51', 'G73'],
    'Trouble de la Personnalité Schizoïde': ['G11', 'G16', 'G39'],
    'Trouble de la Personnalité Évitante': ['G19', 'G21', 'G60'],
    'Trouble de la Personnalité Dépendante': ['G24', 'G30', 'G42'],
    'Trouble de la Personnalité Obsessionnelle-Compulsive': ['G12', 'G16', 'G48'],
    'Trouble du Contrôle des Impulsions': ['G05', 'G35', 'G68'],
    'Trouble de la Personnalité Narcissique': ['G26', 'G31', 'G62'],
    'Trouble de l\'Énurésie': ['G09', 'G52', 'G69'],
    'Trouble de l\'Opposition Défiant': ['G07', 'G11', 'G28'],
    'Trouble de l\'Alimentation Sélective': ['G06', 'G32', 'G56'],
    'Trouble de la Personnalité Histrionique': ['G11', 'G29', 'G52'],
    'Trouble de l\'Énurésie': ['G09', 'G52', 'G69'],
    'Trouble de l\'Opposition Défiant': ['G07', 'G11', 'G28'],
    'Trouble de la Personnalité Paranoïaque': ['G17', 'G22', 'G52'],
    'Trouble de la Personnalité Évitante': ['G19', 'G21', 'G60'],
    'Trouble de la Personnalité Dépendante': ['G24', 'G30', 'G42'],
    'Trouble de la Personnalité Obsessionnelle-Compulsive': ['G12', 'G16', 'G48'],
    'Trouble du Contrôle des Impulsions': ['G05', 'G35', 'G68'],
    'Trouble de la Personnalité Narcissique': ['G26', 'G31', 'G62'],
    'Trouble de l\'Alimentation Sélective': ['G06', 'G32', 'G56'],
    'Trouble de la Personnalité Histrionique': ['G11', 'G29', 'G52'],
}


# Fonction de diagnostic
def diagnostiquer_patient(symptomes_patient):
    for diagnostic, symptomes_requis in regles.items():
        if all(symptome in symptomes_patient for symptome in symptomes_requis):
            return diagnostic
    return "Aucun diagnostic trouvé"

# Fonction pour obtenir la solution en fonction du diagnostic
def obtenir_solution(diagnostic):
    return solutions.get(diagnostic, "Solution non définie")

def main():

    # Symptômes du patient (vous pouvez personnaliser les symptômes ici)
    symptomes_patient = ['G01', 'G03', 'G09', 'G10']

    # Diagnostic du patient
    diagnostic = diagnostiquer_patient(symptomes_patient)
    print("Diagnostic du patient:", diagnostic)

    # Obtenir la solution en fonction du diagnostic
    solution = obtenir_solution(diagnostic)
    print("Solution proposée:", solution)

if __name__ == "__main__":
    main()