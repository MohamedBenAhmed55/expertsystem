% Faits : Symptômes
symptome(G01, 'Parle moins fluidement').
symptome(G02, 'Rigide et inflexible').
symptome(G03, 'Égoïste').
symptome(G04, 'Perturbation émotionnelle instable').
symptome(G05, 'Respiratory disturbances, shortness of breath').
symptome(G06, 'Diet disorders').
symptome(G07, 'Mindset disorder').
symptome(G08, 'Insomnia').
symptome(G09, 'Want to kill yourself').
symptome(G10, 'Loss of memory').
symptome(G11, 'Antisocial').
symptome(G12, 'Doing a job/activity over and over again').
symptome(G13, 'Experiencing convulsions').
symptome(G14, 'Maintain excessive hygiene').
symptome(G15, 'Indigestion').
symptome(G16, 'Feeling heavy on the limbs').
symptome(G17, 'Excessive suspicion').
symptome(G18, 'Feeling low self-esteem').
symptome(G19, 'Feeling worried about excessive disease').
symptome(G20, 'Feeling weak and tired easily').
symptome(G21, 'Feeling suffering from a severe illness').
symptome(G22, 'Feeling body parts pain').
symptome(G23, 'Feeling hopeless').
symptome(G24, 'Feel very sinful').
symptome(G25, 'Feeling very guilty / very afraid to make mistakes').
symptome(G26, 'Feel very excited').
symptome(G27, 'Feel very smart in a particular field').
symptome(G28, 'Feel very afraid of certain objects/conditions').
symptome(G29, 'Excessive sadness').
symptome(G30, 'Feel happy after pulling hair').
symptome(G31, 'Feel happy to grab an eye-catching object').
symptome(G32, 'Fear of excessive').
symptome(G33, 'Fearing excessive dirty').
symptome(G34, 'Feeling not confident').
symptome(G35, 'Feeling never guilty').
symptome(G36, 'Easy to sweat cold').
symptome(G37, 'Easy to panic').
symptome(G38, 'Easily offended').
symptome(G39, 'Underwent traumatic / violent').
symptome(G40, 'Feeling stressed for one thing').
symptome(G41, 'Always think badly').
symptome(G42, 'Nice to quarrel, hostile and often screwed up').
symptome(G43, 'Nice to interfere in other people's business').
symptome(G44, 'Often lie').
symptome(G45, 'Often counts in the mind').
symptome(G46, 'Often thinking is unrealistic').
symptome(G47, 'often being attentive').
symptome(G48, 'Frequent delusions').
symptome(G49, 'Often shaking').
symptome(G50, 'Frequent hallucinations').
symptome(G51, 'Often angry / irritable').
symptome(G52, 'Often check the body for mild problems').
symptome(G53, 'Often crying hysterically').
symptome(G54, 'Often pull hair until it fall out').
symptome(G55, 'Often experience of loss of physical function, suddenly paralyzed, feeling deaf, blind, numb but only briefly').
symptome(G56, 'Often have severe cramps').
symptome(G57, 'Often experience significant mood swings, very happy to be very sad / vice versa').
symptome(G58, 'Often experience pain / health problems').
symptome(G59, 'Often hurt yourself').
symptome(G60, 'Often feel neglected and inattentive').
symptome(G61, 'Often feel uneasy').
symptome(G62, 'Often feel anxious, restless and daydreaming').
symptome(G63, 'Often feel heart palpitations').
symptome(G64, 'Often feel headache').
symptome(G65, 'Often happy, excessively cheerful').
symptome(G66, 'Often feel tense and anxious').
symptome(G67, 'Often feel depressed with the circumstances').
symptome(G68, 'lost consciousness').
symptome(G69, 'impatient').
symptome(G70, 'difficult to speak normally').
symptome(G71, 'Difficult concentration and decreased memory').
symptome(G72, 'Unable to adjust / difficult to adjust').
symptome(G73, 'Do not have a sense of humor').
symptome(G74, 'Never fear').

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
    diagnostic(Patient, 'Trouble de l'Anxiété Généralisée'),
    solution(Patient, 'Thérapie cognitivo-comportementale (CBT)').

% Règle 9 : Diagnostic du Trouble de l'Émétophobie
diagnostic_emetophobie(Patient) :-
    a_symptome(Patient, G28), a_symptome(Patient, G44), a_symptome(Patient, G61),
    diagnostic(Patient, 'Émétophobie'),
    solution(Patient, 'Thérapie d'exposition').

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
    diagnostic(Patient, 'Trouble de l'Énurésie'),
    solution(Patient, 'Thérapie comportementale et rééducation de la vessie').

% Règle 18 : Diagnostic du Trouble de l'Opposition Défiant
diagnostic_opposition_defiant(Patient) :-
    a_symptome(Patient, G07), a_symptome(Patient, G11), a_symptome(Patient, G28),
    diagnostic(Patient, 'Trouble de l'Opposition Défiant'),
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
    solution(Patient, 'Thérapie d'exposition').

% Règle 27 : Diagnostic du Trouble de l'Alimentation Sélective
diagnostic_alimentation_selective(Patient) :-
    a_symptome(Patient, G06), a_symptome(Patient, G32), a_symptome(Patient, G56),
    diagnostic(Patient, 'Trouble de l'Alimentation Sélective'),
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
