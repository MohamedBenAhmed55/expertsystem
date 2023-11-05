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
% Règle 1 : Diagnostic de l'Anorexie Nervosa
diagnostic(Patient, 'Anorexia Nervosa') :-
    a_symptome(Patient, G06),
    a_symptome(Patient, G32),
    a_symptome(Patient, G34),
    a_symptome(Patient, G58).

% Règle 2 : Diagnostic de l'Anxiété
diagnostic(Patient, 'Ansietas Cemas') :-
    a_symptome(Patient, G15),
    a_symptome(Patient, G36),
    a_symptome(Patient, G37),
    a_symptome(Patient, G40),
    a_symptome(Patient, G49),
    a_symptome(Patient, G61).

% Règle 3 : Diagnostic de la Dépression
diagnostic(Patient, 'Depresi') :-
    a_symptome(Patient, G08),
    a_symptome(Patient, G23),
    a_symptome(Patient, G72).

% Règle 4 : Diagnostic du Trouble Bipolaire
diagnostic(Patient, 'Bipolar Disorder') :-
    a_symptome(Patient, G02),
    a_symptome(Patient, G25).

% Règle 5 : Diagnostic de l'Hypochondrie
diagnostic(Patient, 'Hipokondria') :-
    a_symptome(Patient, G64),
    a_symptome(Patient, G10).

% Règle 6 : Diagnostic de l'Hystérie
diagnostic(Patient, 'Hysteria') :-
    a_symptome(Patient, G44),
    a_symptome(Patient, G22).

% Règle 7 : Diagnostic du Trouble de la Personnalité Multiple
diagnostic(Patient, 'Multiple personality') :-
    a_symptome(Patient, G54),
    a_symptome(Patient, G59).

% Règle 8 : Diagnostic de la Phobie
diagnostic(Patient, 'Fobia') :-
    a_symptome(Patient, G28),
    a_symptome(Patient, G49).

% Règle 9 : Diagnostic du Trouble de Conversion
diagnostic(Patient, 'Conversion Disorder') :-
    a_symptome(Patient, G07),
    a_symptome(Patient, G56).

% Règle 10 : Diagnostic du Trouble de Conversion
diagnostic(Patient, 'Conversion Disorder') :-
    a_symptome(Patient, G04),
    a_symptome(Patient, G17).

% Règle 11 : Diagnostic de la Dépression
diagnostic(Patient, 'Depresi') :-
    a_symptome(Patient, G29),
    a_symptome(Patient, G23).

% Règle 12 : Diagnostic de la Schizophrénie
diagnostic(Patient, 'Schizophrenia') :-
    a_symptome(Patient, G13),
    a_symptome(Patient, G28).

% Règle 13 : Diagnostic du Trouble Obsessionnel Compulsif (TOC)
diagnostic(Patient, 'Trouble Obsessionnel Compulsif') :-
    a_symptome(Patient, G12),
    a_symptome(Patient, G48).

% Règle 14 : Diagnostic de la Paranoïa
diagnostic(Patient, 'Paranoia') :-
    a_symptome(Patient, G17),
    a_symptome(Patient, G22).

% Règle 15 : Diagnostic de la Dépendance Émotionnelle
diagnostic(Patient, 'Dépendance Émotionnelle') :-
    a_symptome(Patient, G59),
    a_symptome(Patient, G60).

% Règle 16 : Diagnostic du Trouble de Stress Post-Traumatique
diagnostic(Patient, 'Trouble de Stress Post-Traumatique') :-
    a_symptome(Patient, G01),
    a_symptome(Patient, G03),
    a_symptome(Patient, G09).

% Règle 17 : Diagnostic de la Dépendance à la Drogue
diagnostic(Patient, 'Dépendance à la Drogue') :-
    a_symptome(Patient, G62),
    a_symptome(Patient, G68).

% Règle 18 : Diagnostic de la Dépendance à l'Alcool
diagnostic(Patient, 'Dépendance à l'Alcool') :-
    a_symptome(Patient, G64),
    a_symptome(Patient, G71).

% Règle 19 : Diagnostic de la Phobie Sociale
diagnostic(Patient, 'Phobie Sociale') :-
    a_symptome(Patient, G10),
    a_symptome(Patient, G32),
    a_symptome(Patient, G48).

% Règle 20 : Diagnostic de l'Épisode Dépressif Majeur
diagnostic(Patient, 'Épisode Dépressif Majeur') :-
    a_symptome(Patient, G64),
    a_symptome(Patient, G07),
    a_symptome(Patient, G28).

% Règle 21 : Diagnostic du Trouble de l'Alimentation Sélective
diagnostic(Patient, 'Trouble de l'Alimentation Sélective') :-
    a_symptome(Patient, G06),
    a_symptome(Patient, G14),
    a_symptome(Patient, G45).
% Règle 22 : Diagnostic de la Schizophrénie Paranoïde
diagnostic(Patient, 'Schizophrénie Paranoïde') :-
    a_symptome(Patient, G17),
    a_symptome(Patient, G28),
    a_symptome(Patient, G52).

% Règle 23 : Diagnostic du Trouble de l'Anxiété Généralisée (TAG)
diagnostic(Patient, 'Trouble de l'Anxiété Généralisée') :-
    a_symptome(Patient, G15),
    a_symptome(Patient, G33),
    a_symptome(Patient, G37).

% Règle 24 : Diagnostic de la Boulimie Nerveuse
diagnostic(Patient, 'Boulimie Nerveuse') :-
    a_symptome(Patient, G06),
    a_symptome(Patient, G55),
    a_symptome(Patient, G72).
% Règle 25 : Diagnostic du Trouble de l'Émétophobie
diagnostic(Patient, 'Émétophobie') :-
    a_symptome(Patient, G28),
    a_symptome(Patient, G44),
    a_symptome(Patient, G61).

% Règle 26 : Diagnostic de la Dépression Majeure
diagnostic(Patient, 'Dépression Majeure') :-
    a_symptome(Patient, G09),
    a_symptome(Patient, G24),
    a_symptome(Patient, G36).

% Règle 27 : Diagnostic du Trouble du Stress Aigu
diagnostic(Patient, 'Trouble du Stress Aigu') :-
    a_symptome(Patient, G26),
    a_symptome(Patient, G51),
    a_symptome(Patient, G73).
% Règle 28 : Diagnostic du Trouble de la Personnalité Antisociale
diagnostic(Patient, 'Trouble de la Personnalité Antisociale') :-
    a_symptome(Patient, G04),
    a_symptome(Patient, G11),
    a_symptome(Patient, G68).

% Règle 29 : Diagnostic du Trouble de la Personnalité Limite
diagnostic(Patient, 'Trouble de la Personnalité Limite') :-
    a_symptome(Patient, G23),
    a_symptome(Patient, G61),
    a_symptome(Patient, G64).

% Règle 30 : Diagnostic de la Dépendance aux Jeux de Hasard
diagnostic(Patient, 'Dépendance aux Jeux de Hasard') :-
    a_symptome(Patient, G37),
    a_symptome(Patient, G40),
    a_symptome(Patient, G65).



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
