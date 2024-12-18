USE NexaWorks_Ticketting;
GO

-- systèmes d'exploitation
INSERT INTO OperatingSystem (id, os) VALUES 
(1, 'Windows'),
(2, 'Linux'),
(3, 'MacOS'),
(4, 'Android'),
(5, 'iOS'),
(6, 'Windows Mobile');

-- produits
INSERT INTO Products (id, name) VALUES 
(1, 'Maître des investissements'),
(2, 'Planificateur d''Entrainement'),
(3, 'Planificateur d''Anxiété Sociale'),
(4, 'Trader en Herbe');

-- versions
INSERT INTO Version (id, version) VALUES 
(1, '1.0'),
(2, '1.1'),
(3, '1.2'),
(4, '1.3'),
(5, '2.0'),
(6, '2.1');

-- statuts
INSERT INTO Status (id, status) VALUES 
(1, 'Résolu'),
(2, 'En cours');

-- tickets
INSERT INTO Tickets (id, productId, versionId, osId, creationDate, fixDate, statusId, problem, fix) VALUES 
(1, 1, 6, 1, '2023-03-12', '2023-03-20', 1, 
    'L''utilisateur dit qu''il y a un souci à l''import de ses pièces d''identité, qui ne sont pas reconnues par l''application, alors qu''il peut les afficher sur son ordinateur.',
    'L''application ne prend en compte que l''extension des fichiers. Une détection des mimetypes a été ajoutée.'),
(2, 2, 1, 2, '2023-04-12', '2023-04-25', 1, 
    'L''application ne se lance plus pour certains utilisateurs depuis quelques jours, sans message d''erreur apparent.',
    'Les dépendances obsolètes ont été patchées. Une migration forcée vers la nouvelle version est envisagée.'),
(3, 3, 2, 5, '2023-05-14', NULL, 2, 
    'Les utilisateurs se plaignent de ralentissements à l''affichage de certaines pages depuis la dernière mise à jour.',
    NULL),
(4, 4, 4, 1, '2023-05-06', '2023-05-22', 1, 
    'Certains serveurs crashent lors de la création de comptes utilisateurs.',
    'Ajout de contraintes en frontend et gestion des erreurs en backend pour éviter les crashs.'),
(5, 1, 6, 1, '2023-06-06', NULL, 2, 
    'Certains utilisateurs se plaignent de ne pas avoir accès à l''historique de leurs transactions. La page reste vide après actualisation.',
    NULL),
(6, 2, 2, 4, '2023-06-09', NULL, 1, 
    'Affichage désagréable à cause de forts contrastes et choix de couleurs erratiques.',
    'Problème de mode nuit résolu en ajustant les paramètres spécifiques à certains téléphones.'),
(7, 3, 2, 3, '2023-06-21', NULL, 2, 
    'Un utilisateur demande la suppression totale de ses données personnelles (RGPD), mais son compte reste activable après 30 jours.',
    NULL),
(8, 4, 3, 2, '2023-06-25', NULL, 2, 
    'Lors de la consultation de certains produits financiers, aucune donnée n''est disponible, bien qu''ils existent sur d''autres sites.',
    NULL),
(9, 1, 1, 3, '2023-06-30', '2023-07-12', 1, 
    'Lenteurs lors de l''affichage de pages de calculs.',
    'Une dépendance open-source a été rétrogradée pour restaurer les performances.'),
(10, 2, 5, 4, '2023-07-04', NULL, 2, 
    'Impossible de scroller vers le bas dans le formulaire d''édition de compte, rendant certains champs inaccessibles.',
    NULL),
(11, 3, 2, 1, '2023-07-17', '2023-07-30', 1, 
    'Erreur 404 lorsqu''un utilisateur tente de consulter la FAQ.',
    'Erreur de routage corrigée par l''équipe frontend.'),
(12, 4, 2, 2, '2023-07-22', '2023-08-17', 1, 
    'Certains boutons de l''application ne fonctionnent pas, et parfois l''application se bloque.',
    'Ajout d''une gestion des erreurs plus robuste dans le programme.'),
(13, 1, 5, 5, '2023-08-01', '2023-08-18', 1, 
    'Certaines données apparaissent tronquées sur les comptes utilisateurs.',
    'Champs augmentés et gestion des validations améliorée.'),
(14, 2, 2, 6, '2023-08-12', '2023-09-12', 1, 
    'L''application ne fonctionne pas hors connexion sur Windows Mobile.',
    'Mise à jour disponible uniquement sur Windows 10 Mobile.'),
(15, 3, 1, 1, '2023-08-18', '2023-08-31', 1, 
    'Certaines données sont absentes des pages, mais le problème semble isolé.',
    'Extension anti-publicité sur le navigateur bloque certains scripts.'),
(16, 4, 4, 5, '2023-08-22', '2023-08-31', 1, 
    'Outils d''observation des produits financiers non fonctionnels.',
    'Formation utilisateur pour résoudre une méconnaissance du fonctionnement de l''application.'),
(17, 1, 6, 4, '2023-09-12', '2023-09-20', 1, 
    'Interface de l''application trop petite sur téléphone.',
    'Problème lié à l''utilisation de la version web sur mobile. Media queries optimisées.'),
(18, 2, 5, 3, '2023-09-15', NULL, 2, 
    'Données de compte incorrectes lors de la connexion.',
    NULL),
(19, 3, 2, 5, '2023-09-22', NULL, 2, 
    'Données incorrectes dans l''outil statistique. Résultats incohérents avec des calculs manuels.',
    NULL),
(20, 4, 4, 4, '2023-09-28', NULL, 2, 
    'Déconnexions aléatoires de l''application, ce qui gêne les utilisateurs pendant des transactions importantes.',
    NULL),
(21, 2, 2, 5, '2023-10-15', '2023-10-20', 1, 
    'Données d''entraînement non synchronisées avec le compte cloud.',
    'Problème de compatibilité avec certaines versions d''iOS. Une mise à jour a corrigé les appels API.'),
(22, 4, 2, 1, '2023-11-02', '2023-11-10', 1, 
    'Tri des actions par performance non fonctionnel.',
    'Correction d''une boucle infinie dans l''algorithme de tri.'),
(23, 2, 2, 2, '2023-11-05', NULL, 2, 
    'Objectifs d''entraînement disparus après une mise à jour récente.',
    NULL),
(24, 3, 2, 4, '2023-11-15', NULL, 2, 
    'Notifications de rappels d''événements non fonctionnelles ou en retard.',
    NULL),
(25, 1, 6, 3, '2023-11-18', '2023-11-25', 1, 
    'Export de données en PDF génère un fichier vide.',
    'Mise à jour de la librairie de génération PDF pour corriger le problème.');
