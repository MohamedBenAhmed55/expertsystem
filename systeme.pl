% Faits : Symptômes
symptome(G01, 'Parle moins fluidement').
symptome(G02, 'Rigide et inflexible').
symptome(G03, 'Égoïste').
symptome(G04, 'Perturbation émotionnelle instable').
symptome(G05, 'Troubles respiratoires, essoufflement').
symptome(G06, 'Troubles alimentaires').
symptome(G07, 'Troubles de l\'état d\'esprit').
symptome(G08, 'Insomnie').
symptome(G09, 'Envie de se suicider').
symptome(G10, 'Perte de mémoire').
symptome(G11, 'Comportement antisocial').
symptome(G12, 'Répétition compulsive de tâches').
symptome(G13, 'Expérience de convulsions').
symptome(G14, 'Maintien d\'une hygiène excessive').
symptome(G15, 'Indigestion').
symptome(G16, 'Sensation de lourdeur dans les membres').
symptome(G17, 'Soupçons excessifs').
symptome(G18, 'Estime de soi basse').
symptome(G19, 'Inquiétude excessive concernant la maladie').
symptome(G20, 'Sensation de faiblesse et de fatigue facile').
symptome(G21, 'Sensation de souffrir d\'une maladie grave').
symptome(G22, 'Douleurs dans certaines parties du corps').
symptome(G23, 'Sentiment de désespoir').
symptome(G24, 'Sentiment de culpabilité intense').
symptome(G25, 'Sentiment de culpabilité intense / très peur de faire des erreurs').
symptome(G26, 'Sensation d\'excitation excessive').
symptome(G27, 'Sentiment de grande intelligence dans un domaine particulier').
symptome(G28, 'Peur excessive de certains objets/conditions').
symptome(G29, 'Tristesse excessive').
symptome(G30, 'Sensation de bonheur après s\'être arraché les cheveux').
symptome(G31, 'Sensation de bonheur en saisissant un objet accrocheur').
symptome(G32, 'Peur excessive').
symptome(G33, 'Peur excessive de la saleté').
symptome(G34, 'Sentiment de manque de confiance en soi').
symptome(G35, 'Jamais de sentiment de culpabilité').
symptome(G36, 'Transpiration froide facile').
symptome(G37, 'Facilité à paniquer').
symptome(G38, 'Facilement offensé').
symptome(G39, 'Exposition à des traumatismes/violences').
symptome(G40, 'Stress excessif pour une chose').
symptome(G41, 'Penser toujours négativement').
symptome(G42, 'Enclin à se disputer, hostile et souvent perturbé').
symptome(G43, 'Tendance à s\'immiscer dans les affaires des autres').
symptome(G44, 'Mensonges fréquents').
symptome(G45, 'Compte fréquemment mentalement').
symptome(G46, 'Penser fréquemment de manière irréaliste').
symptome(G47, 'Souvent très attentif').
symptome(G48, 'Hallucinations fréquentes').
symptome(G49, 'Tremblements fréquents').
symptome(G50, 'Hallucinations fréquentes').
symptome(G51, 'Colère/frustration fréquentes').
symptome(G52, 'Vérification fréquente du corps pour de légers problèmes').
symptome(G53, 'Cris fréquents et incontrôlables').
symptome(G54, 'Tirer fréquemment les cheveux jusqu\'à leur chute').
symptome(G55, 'Expérience fréquente de perte de fonction physique, paralysie soudaine, sentiment de surdité, cécité, engourdissement mais seulement brièvement').
symptome(G56, 'Crampes sévères fréquentes').
symptome(G57, 'Expérience fréquente de sautes d\'humeur significatives, de très heureux à très triste / vice versa').
symptome(G58, 'Douleurs/fréquentes problèmes de santé').
symptome(G59, 'Se faire du mal fréquemment').
symptome(G60, 'Sentiment fréquent d\'être négligé et inattentif').
symptome(G61, 'Sentiment fréquent d\'inquiétude').
symptome(G62, 'Sentiment fréquent d \'anxiété, d\'agitation et de rêverie').
symptome(G63, 'Palpitations cardiaques fréquentes').
symptome(G64, 'Céphalées fréquentes').
symptome(G65, 'Sentiment de bonheur fréquent, excessivement joyeux').
symptome(G66, 'Sentiment fréquent de tension et d\'anxiété').
symptome(G67, 'Sentiment fréquent de dépression face aux circonstances').
symptome(G68, 'Perte de connaissance fréquente').
symptome(G69, 'Impatience fréquente').
symptome(G70, 'Difficulté à parler normalement').
symptome(G71, 'Difficulté de concentration et mémoire réduite').
symptome(G72, 'Incapacité à s\'adapter/difficulté à s\'adapter').
symptome(G73, 'Absence d\'humour').
symptome(G74, 'Jamais peur').


% Faits : Diagnostics
diagnostic(P01, 'Ansietas Cemas').
diagnostic(P02, 'Anorexia Nervosa').
diagnostic(P03, 'Bipolar Disorder').
diagnostic(P04, 'Conversion Disorder').
diagnostic(P05, 'Depresi').
diagnostic(P06, 'Enosimania').
diagnostic(P07, 'Fobia').
diagnostic(P08, 'Hipokondria').
diagnostic(P09, 'Hysteria').
diagnostic(P10, 'Multiple personality').

% Faits : Solutions
solution(T01, 'Hospitalisation').
solution(T02, 'Psychothérapie par analyse cognitivo-comportementale (CBT)').
solution(T03, 'Psychothérapie individuelle').
solution(T04, 'Psychothérapie de groupe').
solution(T05, 'Psychothérapie environnementale').
solution(T06, 'Psychothérapie de soutien').
solution(T07, 'Formation à la relaxation').
solution(T08, 'Technique PHBS').
solution(T09, 'Thérapie sportive').
solution(T10, 'Thérapie cognitivo-comportementale').

% Règles de diagnostic
% Règle 1 : Diagnostic de la Dépression
diagnostic_depression(Patient) :-
    a_symptome(Patient, G06), a_symptome(Patient, G08), a_symptome(Patient, G29), a_symptome(Patient, G34),
    diagnostic(Patient, 'Depresi'),
    solution(Patient, 'Psychothérapie individuelle').

% Règle 2 : Diagnostic du Trouble de Stress Post-Traumatique
diagnostic_stress_post_traumatique(Patient) :-
    a_symptome(Patient, G01), a_symptome(Patient, G03), a_symptome(Patient, G09),
    diagnostic(Patient, 'Trouble de Stress Post-Traumatique'),
    solution(Patient, 'Psychothérapie et médicaments').

% Règle 3 : Diagnostic de la Dépendance à la Drogue
diagnostic_dependance_drogue(Patient) :-
    a_symptome(Patient, G62), a_symptome(Patient, G68),
    diagnostic(Patient, 'Dépendance à la Drogue'),
    solution(Patient, 'Programme de réhabilitation pour la drogue').

% Règle 4 : Diagnostic du Trouble de la Personnalité Antisociale
diagnostic_personnalite_antisociale(Patient) :-
    a_symptome(Patient, G04), a_symptome(Patient, G11), a_symptome(Patient, G68),
    diagnostic(Patient, 'Trouble de la Personnalité Antisociale'),
    solution(Patient, 'Psychothérapie et réhabilitation').

% Règle 5 : Diagnostic du Trouble de la Personnalité Limite
diagnostic_personnalite_limite(Patient) :-
    a_symptome(Patient, G23), a_symptome(Patient, G61), a_symptome(Patient, G64),
    diagnostic(Patient, 'Trouble de la Personnalité Limite'),
    solution(Patient, 'Thérapie dialectique comportementale (DBT)').

% Règle 6 : Diagnostic de la Dépendance aux Jeux de Hasard
diagnostic_dependance_jeux_hasard(Patient) :-
    a_symptome(Patient, G37), a_symptome(Patient, G40), a_symptome(Patient, G65),
    diagnostic(Patient, 'Dépendance aux Jeux de Hasard'),
    solution(Patient, 'Conseils et groupes de soutien').

% Règle 7 : Diagnostic du Trouble de la Personnalité Paranoïaque
diagnostic_personnalite_paranoïaque(Patient) :-
    a_symptome(Patient, G17), a_symptome(Patient, G22), a_symptome(Patient, G52),
    diagnostic(Patient, 'Trouble de la Personnalité Paranoïaque'),
    solution(Patient, 'Thérapie et conseil psychologique').

% Règle 8 : Diagnostic du Trouble de l'Anxiété Généralisée (TAG)
diagnostic_anxiete_generalisee(Patient) :-
    a_symptome(Patient, G15), a_symptome(Patient, G33), a_symptome(Patient, G37),
    diagnostic(Patient, 'Trouble de l\'Anxiété Généralisée'),
    solution(Patient, 'Thérapie cognitivo-comportementale (CBT)').

% Règle 9 : Diagnostic du Trouble de l'Émétophobie
diagnostic_emetophobie(Patient) :-
    a_symptome(Patient, G28), a_symptome(Patient, G44), a_symptome(Patient, G61),
    diagnostic(Patient, 'Émétophobie'),
    solution(Patient, 'Thérapie d\'exposition').

% Règle 10 : Diagnostic du Trouble de Stress Aigu
diagnostic_stress_aigu(Patient) :-
    a_symptome(Patient, G26), a_symptome(Patient, G51), a_symptome(Patient, G73),
    diagnostic(Patient, 'Trouble du Stress Aigu'),
    solution(Patient, 'Intervention en situation de crise et psychothérapie').

% Règle 11 : Diagnostic du Trouble de la Personnalité Schizoïde
diagnostic_personnalite_schizoide(Patient) :-
    a_symptome(Patient, G11), a_symptome(Patient, G16), a_symptome(Patient, G39),
    diagnostic(Patient, 'Trouble de la Personnalité Schizoïde'),
    solution(Patient, 'Psychothérapie et soutien social').

% Règle 12 : Diagnostic du Trouble de la Personnalité Évitante
diagnostic_personnalite_evitante(Patient) :-
    a_symptome(Patient, G19), a_symptome(Patient, G21), a_symptome(Patient, G60),
    diagnostic(Patient, 'Trouble de la Personnalité Évitante'),
    solution(Patient, 'Psychothérapie et thérapie de groupe').

% Règle 13 : Diagnostic du Trouble de la Personnalité Dépendante
diagnostic_personnalite_dependante(Patient) :-
    a_symptome(Patient, G24), a_symptome(Patient, G30), a_symptome(Patient, G42),
    diagnostic(Patient, 'Trouble de la Personnalité Dépendante'),
    solution(Patient, 'Psychothérapie et renforcement de la confiance en soi').

% Règle 14 : Diagnostic du Trouble de la Personnalité Obsessionnelle-Compulsive
diagnostic_personnalite_obsessionnelle_compulsive(Patient) :-
    a_symptome(Patient, G12), a_symptome(Patient, G16), a_symptome(Patient, G48),
    diagnostic(Patient, 'Trouble de la Personnalité Obsessionnelle-Compulsive'),
    solution(Patient, 'Thérapie comportementale et cognitive (TCC)').

% Règle 15 : Diagnostic du Trouble du Contrôle des Impulsions
diagnostic_controle_impulsions(Patient) :-
    a_symptome(Patient, G05), a_symptome(Patient, G35), a_symptome(Patient, G68),
    diagnostic(Patient, 'Trouble du Contrôle des Impulsions'),
    solution(Patient, 'Thérapie comportementale et gestion des impulsions').

% Règle 16 : Diagnostic du Trouble de la Personnalité Narcissique
diagnostic_personnalite_narcissique(Patient) :-
    a_symptome(Patient, G26), a_symptome(Patient, G31), a_symptome(Patient, G62),
    diagnostic(Patient, 'Trouble de la Personnalité Narcissique'),
    solution(Patient, 'Psychothérapie centrée sur la personne').

% Règle 17 : Diagnostic du Trouble de l'Énurésie
diagnostic_enuresie(Patient) :-
    a_symptome(Patient, G09), a_symptome(Patient, G52), a_symptome(Patient, G69),
    diagnostic(Patient, 'Trouble de l\'Énurésie'),
    solution(Patient, 'Thérapie comportementale et rééducation de la vessie').

% Règle 18 : Diagnostic du Trouble de l'Opposition Défiant
diagnostic_opposition_defiant(Patient) :-
    a_symptome(Patient, G07), a_symptome(Patient, G11), a_symptome(Patient, G28),
    diagnostic(Patient, 'Trouble de l\'Opposition Défiant'),
    solution(Patient, 'Thérapie familiale et gestion de la colère').

% Règle 19 : Diagnostic du Trouble de l'Énurésie
diagnostic_enuresie(Patient) :-
    a_symptome(Patient, G09), a_symptome(Patient, G52), a_symptome(Patient, G69),
    diagnostic(Patient, 'Trouble de l\'Énurésie'),
    solution(Patient, 'Thérapie comportementale et rééducation de la vessie').

% Règle 20 : Diagnostic du Trouble de l'Opposition Défiant
diagnostic_opposition_defiant(Patient) :-
    a_symptome(Patient, G07), a_symptome(Patient, G11), a_symptome(Patient, G28),
    diagnostic(Patient, 'Trouble de l\'Opposition Défiant'),
    solution(Patient, 'Thérapie familiale et gestion de la colère').

% Règle 21 : Diagnostic du Trouble de la Personnalité Paranoïaque
diagnostic_personnalite_paranoïaque(Patient) :-
    a_symptome(Patient, G17), a_symptome(Patient, G22), a_symptome(Patient, G52),
    diagnostic(Patient, 'Trouble de la Personnalité Paranoïaque'),
    solution(Patient, 'Psychothérapie et conseil psychologique').

% Règle 22 : Diagnostic du Trouble de la Personnalité Évitante
diagnostic_personnalite_evitante(Patient) :-
    a_symptome(Patient, G19), a_symptome(Patient, G21), a_symptome(Patient, G60),
    diagnostic(Patient, 'Trouble de la Personnalité Évitante'),
    solution(Patient, 'Psychothérapie et thérapie de groupe').

% Règle 23 : Diagnostic du Trouble de la Personnalité Dépendante
diagnostic_personnalite_dependante(Patient) :-
    a_symptome(Patient, G24), a_symptome(Patient, G30), a_symptome(Patient, G42),
    diagnostic(Patient, 'Trouble de la Personnalité Dépendante'),
    solution(Patient, 'Psychothérapie et renforcement de la confiance en soi').

% Règle 24 : Diagnostic du Trouble de la Personnalité Obsessionnelle-Compulsive
diagnostic_personnalite_obsessionnelle_compulsive(Patient) :-
    a_symptome(Patient, G12), a_symptome(Patient, G16), a_symptome(Patient, G48),
    diagnostic(Patient, 'Trouble de la Personnalité Obsessionnelle-Compulsive'),
    solution(Patient, 'Thérapie comportementale et cognitive (TCC)').
% Règle 25 : Diagnostic du Trouble de la Personnalité Narcissique
diagnostic_personnalite_narcissique(Patient) :-
    a_symptome(Patient, G26), a_symptome(Patient, G31), a_symptome(Patient, G62),
    diagnostic(Patient, 'Trouble de la Personnalité Narcissique'),
    solution(Patient, 'Psychothérapie centrée sur la personne').

% Règle 26 : Diagnostic du Trouble de l'Émétophobie
diagnostic_emetophobie(Patient) :-
    a_symptome(Patient, G28), a_symptome(Patient, G44), a_symptome(Patient, G61),
    diagnostic(Patient, 'Émétophobie'),
    solution(Patient, 'Thérapie d\'exposition').

% Règle 27 : Diagnostic du Trouble de l'Alimentation Sélective
diagnostic_alimentation_selective(Patient) :-
    a_symptome(Patient, G06), a_symptome(Patient, G32), a_symptome(Patient, G56),
    diagnostic(Patient, 'Trouble de l\'Alimentation Sélective'),
    solution(Patient, 'Conseils nutritionnels et thérapie').

% Règle 28 : Diagnostic du Trouble de la Personnalité Histrionique
diagnostic_personnalite_histrionique(Patient) :-
    a_symptome(Patient, G11), a_symptome(Patient, G29), a_symptome(Patient, G52),
    diagnostic(Patient, 'Trouble de la Personnalité Histrionique'),
    solution(Patient, 'Psychothérapie et expression émotionnelle').

% Règle 29 : Diagnostic du Trouble du Contrôle des Impulsions
diagnostic_controle_impulsions(Patient) :-
    a_symptome(Patient, G05), a_symptome(Patient, G35), a_symptome(Patient, G68),
    diagnostic(Patient, 'Trouble du Contrôle des Impulsions'),
    solution(Patient, 'Thérapie comportementale et gestion des impulsions').

% Règle 30 : Diagnostic du Trouble de l'Énurésie
diagnostic_enuresie(Patient) :-
    a_symptome(Patient, G09), a_symptome(Patient, G52), a_symptome(Patient, G69),
    diagnostic(Patient, 'Trouble de l\'Énurésie'),
    solution(Patient, 'Thérapie comportementale et rééducation de la vessie').

% Règles d'association de symptômes avec un patient
a_symptome(Patient, Symptome) :- patient_symptome(Patient, Symptome).

% Exemple de données patient-symptôme
patient_symptome(Patient, G06).
patient_symptome(Patient, G32).
patient_symptome(Patient, G34).
patient_symptome(Patient, G58).
% Ajoutez d'autres données patient-symptôme ici.

% Utilisez les règles de diagnostic pour effectuer un diagnostic pour un patient donné
diagnostiquer(Patient, Diagnostic, Solution) :-
    diagnostic_anxiete(Patient),
    Diagnostic = 'Ansietas Cemas',
    Solution = 'Psychothérapie par analyse cognitivo-comportementale (CBT)'.

% Exemple d'utilisation :
?- diagnostiquer(patient123, Diagnostic, Solution).
