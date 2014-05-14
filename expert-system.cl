;;; IA01 - TP03
;;; Erwan Normand

;;; R�gles
(defparameter R1 '(((survie satisfaite)) ((faim 6 >=) (soif 6 >=) (sante 6 >=) (danger 0 =)) "Survie satisfaite"))
(defparameter R2 '(((survie moyen)) ((faim 4 >=) (soif 4 >=) (sante 4 >=) (danger 0 =)) "Survie moyen"))

(defparameter R3 '(((faim 3 +)) ((bananes beaucoup)) "Mangez les bananes avec la peau pour ne pas gacher de vitamines !"))
(defparameter R4 '(((faim 2 +)) ((bananes moyen)) "Mangez les bananes avec la peau pour ne pas gacher de vitamines !"))
(defparameter R5 '(((faim 1 +)) ((bananes rare)) "Mangez les bananes avec la peau pour ne pas gacher de vitamines !"))
(defparameter R9 '(((faim 3 +) (recipient moyen)) ((noix_de_coco marron)) "Ouvrez la noix de coco comme vous le pouvez pour manger la pulpe. Gardez la carapace comme r�cipient."))
(defparameter R10 '(((faim 2 +) (recipient moyen)) ((noix_de_coco orange)) "Ouvrez la noix de coco comme vous le pouvez pour manger la pulpe. Gardez la carapace comme r�cipient."))
(defparameter R11 '(((faim 1 +) (recipient moyen)) ((noix_de_coco verte)) "Ouvrez la noix de coco comme vous le pouvez pour manger la pulpe. Gardez la carapace comme r�cipient."))

(defparameter R6 '(((soif 3 +)) ((noix_de_coco marron) (couteau oui)) "Percez avec le couteau les yeux de la noix pour boire l�eau � l'int�rieur."))
(defparameter R7 '(((soif 2 +)) ((noix_de_coco orange) (couteau oui)) "Percez avec le couteau les yeux de la noix pour boire l�eau � l'int�rieur."))
(defparameter R8 '(((soif 1 +)) ((noix_de_coco verte) (couteau oui)) "Percez avec le couteau les yeux de la noix pour boire l�eau � l'int�rieur, puis vous pouvez manger la pulpe."))
(defparameter R12 '(((soif 2 +)) ((recipient beaucoup) (temps pluie)) "R�cup�rez l�eau de la pluie � l�aide des r�cipients"))
(defparameter R13 '(((soif 1 +)) ((recipient moyen) (temps pluie)) "R�cuperez l�eau de la pluie � l�aide des r�cipients"))
(defparameter R42 '(((soif 1 +)) ((grande_feuille oui) (temps pluie)) "Utilisez les plus grandes feuilles que vous voyez et placez les dans un trou pour recolter l'eau de la pluie"))
(defparameter R40 '(((eau non-potable)) ((riviere sauvage)) "Mefiez vous de l'eau de la riviere, rien ne dit qu'elle est potable.."))
(defparameter R26 '(((soif 4 +)) ((feu oui) (recipient rare) (eau non-potable)) "Faites bouillir l�eau pour la rendre potable"))
(defparameter R27 '(((soif 2 +) (sante 3 -)) ((eau non-potable) (soif 4 <) (sante 5 >)) "C�est mauvais de boire de l�eau sans avoir la certitude qu�elle est potable, mais si vous n�avez pas le choix."))
(defparameter R44 '(((soif 3 +) (emeche oui)) ((cachette rhum)) "Yo Ho !"))

(defparameter R14 '(((oriente oui)) ((ile grande)) "Rep�rez les lieux en marchant dans une m�me direction assez longtemps. Attention, ne vous fiez pas trop � l��toile polaire si vous n��tes pas s�r d��tre dans l�h�misph�re nord"))
(defparameter R18 '(((arme bonne)) ((couteau oui))))
(defparameter R19 '(((corde oui)) ((liane oui)) "Utilisez les lianes comme corde"))
(defparameter R20 '(((grande_feuille oui) (bois oui)) ((palmier present))))
(defparameter R21 '(((grande_feuille oui) (bois illimite) (liane oui)) ((vegetation abondante)) "Allez chercher des lianes et les plus grandes feuilles que vous trouvez �a pourra servir"))
(defparameter R41 '(((bois oui)) ((bois illimite))))
(defparameter R22 '(((hamac confortable)) ((grande_feuille oui) (corde oui)) "Construisez un hamac avec des feuilles et des cordes"))
(defparameter R31 '(((feu oui)) ((bois oui) (couteau oui) (corde oui)) "D�coupez une encoche dans une buche. Lovez une corde autour d�un baton assez solide. Attachez les extr�mit�s de cette corde autour d�un autre baton comme si vous fabriquiez un arc. Grace � ce syst�me faites tourner tr�s vite le baton dans l�encoche cela fabriquera des �tincelles."))
(defparameter R32 '(((couteau oui)) ((silex trouve) (corde oui) (bois oui)) "Fabriquez un couteau n�olithique � partir d�un silex. Formez la lame en entrechoquant le silex et un caillou. Pour le manche il faut un bois dur. Du ch�ne noyer ou merisier serait le mieux. Forez le manche puis attachez les deux parties avec une corde."))
(defparameter R33 '(((silex trouve) (bois oui)) ((ile grande) (oriente oui))))
(defparameter R36 '(((lance grande)) ((bois oui) (couteau oui)) "Construire une lance en taillant votre baton"))

(defparameter R15 '(((crocodile mort) (danger 1 -) (sante 2 -)) ((crocodile oui) (arme bonne) (sante 4 >)) "Ne pas fuir face � un crocodile. Pour rendre l��le s�re, il faut vous en d�barrasser. Prenez votre courage � deux mains et attaquez le avec votre arme! Si vous �tes affam� mangez le, mais c�est � �viter."))
(defparameter R43 '(((viande bout)) ((crocodile mort))))
(defparameter R16 '(((faim 2 +)) ((crocodile mort) (faim 4 <)) "Bon, ce crocodile n�a vraiment pas l�air bon, mais vous �tes affam�..."))
(defparameter R17 '(((sante 2 +)) ((crocodile mort) (securite 3 <) (couteau oui)) "Vous avez vraiment froid.. Fabriquez vous une couverture comme vous le pouvez avec les reste du lion"))
(defparameter R28 '(((crocodile non) (danger 1 -) (faim 3 -)) ((crocodile oui) (viande bout) (faim 4 >)) "Nourrir le crocodile pour cohabiter."))
(defparameter R23 '(((fourmis_rouge non) (danger 1 -)) ((hamac confortable) (fourmis_rouge oui)) "Grace au hamac les fourmis ne vous atteindront plus!"))
(defparameter R34 '(((fourmis_rouge non)) ((feu oui) (fourmis_rouge oui)) "Le feu fait fuir les fourmis"))
(defparameter R24 '(((sante 2 -)) ((fourmis_rouge oui)) "Les fourmis vous d�rangent quand vous dormez..."))
(defparameter R25 '(((serpent_dangereux non) (danger 1 -)) ((serpent_dangereux oui) (viande bout) (bois oui)) "Construire des pieges � serpents en mettant un bout de viande dans une cage qui se refermera sur celui-ci."))
(defparameter R29 '(((sante 2 -)) ((feu oui) (moustique beaucoup)) "Attention les moustiques sont attir�s par le feu"))
(defparameter R30 '(((sante 1 -)) ((feu oui) (moustique moyen)) "Attention les moustiques sont attir�s par le feu"))

(defparameter R35 '(((poisson rare)) ((lance grande) (poisson visible) (sante 3 >)) "Essayez d�attraper quelques poissons avec votre lance"))
(defparameter R37 '(((faim 3 +)) ((poisson rare))))
(defparameter R38 '(((viande bout)) ((poisson rare))))
(defparameter R39 '(((sante 1 +)) ((hamac confortable))))

(defparameter *BR* '(R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 R17 R18 R19 R20 R21 R22 R23 R24 R25 R26 R27 R28 R29 R30 R31 R32 R33 R34 R35 R36 R37 R38 R39 R40 R41 R42 R43 R44))
;Pour acc�der � la i-�me r�gle : (eval (nth i *BR*))


;;; Jeux d'essais
(defparameter *buts* '((survie satisfaite) (survie moyen) "Survie non satisfaite : vous n'avez vraiment pas de chance, d�sol�"))

; Vous venez d'arriver, vous avez un peu faim et soif et les fruits sont en abondance.
(defparameter *BF* '((faim 3) (soif 4) (sante 8) (danger 0) (bananes beaucoup) (noix_de_coco verte) (temps pluie) (palmier present) (couteau oui)))
; Vous avez un nouveau compagnon, pas tr�s c�lin.
(defparameter *BF* '((faim 3) (soif 4) (sante 8) (danger 1) (bananes beaucoup) (noix_de_coco verte) (temps pluie) (palmier present) (crocodile oui)))
; Malgr� votre statut de naufrag�, rien de vous emp�che de vous lancer dans la maroquinerie : aujourd'hui, on va faire des sacs � main en crocodile.
(defparameter *BF* '((faim 3) (soif 4) (sante 8) (danger 1) (bananes beaucoup) (noix_de_coco verte) (temps pluie) (vegetation abondante) (crocodile oui) (ile grande)))

;; Lancement des moteurs, apr�s choix du *BF* voulu
(declencher_moteur_avant *BR* *BF* *buts*)
(declencher_moteur_arriere *BR* *BF* *buts*)


;;; Fonctions de services

;; Fonctions des r�gles
(defun actions (regle)
  (first regle))

(defun conditions (regle)
  (second regle))

(defun description (regle)
  (third regle))


;; Fonctions des faits, actions, conditions
(defun attribut (tuple) ; fait, action ou condition
  (first tuple))

(defun valeur (tuple) ; fait, action ou condition
  (second tuple))

(defun operateur (triplet) ; action ou condition
  (third triplet))

(defun type_condi (triplet) ;type de la condition : num�rique s'il y a un op�rateur, sinon fait
  (if (operateur triplet) 'numerique 'fait))


;; Fonctions de gestions des faits de BF
; Utilisation : la fonction ajouter_fait pour ajouter ou modifier des faits (la fonction g�re ces deux cas)
(defun ajouter_faits (BF actions); retourne BF avec le nouveau fait
  (cond
   ((null actions) BF)
   ((assoc (attribut (car actions)) BF)
    (setq BF (modifier_fait BF (car actions)))
    (ajouter_faits BF (cdr actions)))
   (t
    (cons (list (attribut (car actions)) (valeur_apres_action BF (car actions)))
          (ajouter_faits BF (cdr actions))) 
    )))

(defun modifier_fait (BF action) ; modifie dans BF le fait � la nouvelle valeur
  (let (BF_modifie)
    (dolist (fait BF)
      (push (copy-seq fait) BF_modifie))
    (setf (second (assoc (attribut action) BF_modifie)) (valeur_apres_action BF_modifie action))
    (reverse BF_modifie)))

(defun valeur_apres_action (BF action) ; retourne la valeur du fait apr�s ex�cution de l'action
  (if (and (assoc (attribut action) BF) ; si le fait est d�j� pr�sent
           (operateur action))          ; et si action contient un op�rateur
                 
                 (eval (list (operateur action) (valeur (assoc (attribut action) BF)) (valeur action))) ; ajout au fait de BF la valeur de action
            
               (valeur action))) ; sinon la valeur de l'action est utilis�e

(defun limite (max valeur) ; limite aux valeurs num�riques possibles
  (if (realp valeur)
      (if (> valeur 0) (if (< valeur max) valeur max) 0)
    valeur))


;;Affichage
; tabulation du texte console en fonction de la profondeur
(defun tabulation (profondeur)
  (format t "~S : " profondeur)
  (dotimes (i profondeur) (princ "  ")))

; affichage des descriptions d'un ensemble de r�gle
(defun affichage_description (ensemble profondeur)
  (dolist (regle ensemble)
    (when (description (eval regle))
      (tabulation profondeur)
      (format t "~S ~&" (description (eval regle))))))

;;; Fin fonctions de services



;;; Moteur en chainage avant en profondeur d'abord

; teste les buts dans l'ordre avec le moteur_avant
(defun declencher_moteur_avant (BR BF buts &optional (max 10))
  (cond
   ((stringp (car buts)) (print (car buts)))
   (T
    (let ((enregistrement_but (copy-seq (car buts))))
      (moteur_avant BR BF (car buts) max nil)
      (if (null (attribut (car buts)))
          (setf (car buts) enregistrement_but)
        (declencher_moteur_avant BR BF (cdr buts) max))))))

; v�rifie si une condition num�rique est v�rifi�e par la base de fait (ex: (faim 6 >=)...)
(defun respect_regle_numerique? (condi BF)
                (if (assoc (attribut condi) BF)
                 (eval (list (operateur condi) (valeur (assoc (attribut condi) BF)) (valeur condi)))
                  ))

; v�rifie si un fait est pr�sent dans la base de fait				  
(defun respect_regle_fait? (condi BF)
  (eq (valeur condi) (valeur (assoc (attribut condi) BF))))

(defun vu_ou_pas?? (regle experience)
  (if (member regle experience) NIL T))
  
; algorithme r�cursif, si toutes les conditions de la r�gle sont respect�es
(defun test_conditions (condis BF)
               (cond
               ((eq (car condis) NIL) T)
               ((eq (type_condi (car condis)) 'fait) 
                (if (respect_regle_fait? (car condis) BF) (test_conditions (cdr condis) BF) NIL)) 
               ((eq (type_condi (car condis)) 'numerique)
                (if (respect_regle_numerique? (car condis) BF) (test_conditions (cdr condis) BF) NIL))
               )
  )
  
; v�rifie si une r�gle est possible: si elle n'est pas deja faite et si les conditions sont respect�es
(defun possible? (regle deja_vu max BF)
               (if (vu_ou_pas?? regle deja_vu)
                 (test_conditions (conditions (eval regle)) BF)
                     
                  )
  )

; retourne la liste des r�gles possibles
(defun regle_possible? (BR deja_vu max BF)
               (let ((liste NIL))
                 (dolist (i BR)
                   (if (possible? i deja_vu max BF)
                       (push i liste)
                     )
                   )
                 liste))

(defun moteur_avant (BR BF but &optional (max 10) (deja_fait nil))
               (cond 
                ((null (car but)) NIL)		;Si le but a d�j� �t� atteint on arr�te la r�cursivit�. 
                ((assoc (attribut but) BF)    ; attribut de but dans BF et
                     (if (eq (valeur but) (valeur (assoc (attribut but) BF)))   ; valeur du but atteinte
                         (progn
                           (print 'reponse)
                           (setf (car but) NIL)	; Modifier une valeur du but change d�finitivement celui-ci
                           (dolist (i deja_fait)
                             (if (description (eval i))
                                 (print (description (eval i)))))
                           (print '____________))))
                ((null (regle_possible? BR deja_fait max BF)) NIL)
                (T (dolist (i (regle_possible? BR deja_fait max BF))
                     (moteur_avant BR (ajouter_faits BF (actions (eval i))) but max (cons i deja_fait))
                     )
                   )
                )
  )

;;; Fin moteur avant



;;; Moteur en chainage arri�re en profondeur d'abord

(defun declencher_moteur_arriere (BR BF buts)
  (cond
   ((stringp (car buts)) (print (car buts)))
   (t
    (unless (moteur_arriere (car buts) BF BR 0)
      (declencher_moteur_arriere BR BF (cdr buts))))))


(defun moteur_arriere (but BF BR &optional (profondeur 0)) 
  (cond
   ((verifie_but? BF but BF) ; si les faits de BF v�rifient le But
    (tabulation profondeur)
    (format t "But v�rifi�: ~S (Fait : ~S) ~&" But (assoc (attribut But) BF)) 
    t)
   
   (t
    (if (dolist (ensemble_candidat (ensemble_conflits but BF BR)) ; pour chacun des ensembles de r�gles candidates
          
          (tabulation profondeur)
          (format t "But: ~S - Regles cherch�es : ~S ~&" But ensemble_candidat)
          
          (let ((ensemble_candidat_verifie (ensemble_verifie? ensemble_candidat But BF BR profondeur)))
            (when ensemble_candidat_verifie ; d�s qu'un ensemble est v�rifi�, le but est v�rifi�
              (affichage_description ensemble_candidat_verifie profondeur)
              (tabulation profondeur)
              (format t "But v�rifi�: ~S (Regles : ~S) ~&" But ensemble_candidat_verifie)
              (return t)))
          )
        t ; si le but est atteint
        (let () ; si non
          (tabulation profondeur)
          (format t "But non v�rifi�: ~S ~&" But)))) ; sinon, s'il n�y a aucun ensemble candidat ou aucun v�rifi�
   ))


; retourne les ensembles de r�gles pouvant v�rifier le but, ils ont candidats
(defun ensemble_conflits (but BF BR)
  (let ((regles_candidates)
        (ensemble_candidat))
    (dolist (regle_candidate BR  regles_candidates ensemble_candidat)
      (cond
       
       ; si les actions de la r�gle v�rifient le but: elle est candidate
       ((verifie_but? (actions (eval regle_candidate)) but BF)
        (push (list regle_candidate) regles_candidates))
       
       ; les r�gles dont les actions peuvent seulement atteindre le but ensemble
       ((and (operateur but) 
             (assoc (attribut but) (actions (eval regle_candidate))))
        (push regle_candidate ensemble_candidat)
       )
    ))
    
    ; retourne les ensembles de r�gles candidates
    (when (not (null ensemble_candidat))
      (push (reverse ensemble_candidat) regles_candidates))
    (reverse regles_candidates)))


; pr�dicat : si les tuples (BF ou actions d�une r�gle) v�rifient le but
(defun verifie_but? (tuples but BF)
  (let ((tuple (assoc (attribut but) tuples)))
    (when tuple ; si le but fait partis de la liste des tuples
      (if (operateur but) 
          
          ; si le but comporte un op�rateur, il sera utilis�
          (eval (list (operateur But) (valeur_apres_action BF tuple) (valeur but)))
        
        ; sinon on utilise l'�galit� comme valeur de test
        (equal (valeur_apres_action BF tuple) (valeur But)) ))
    ))

; pr�dicat : si l'ensemble des r�gles v�rifient le but
(defun ensemble_candidat? (ensemble but BF)
  (let ((action_ensemble (list (attribut But) 0 '+)))
    (dolist (regle ensemble action_ensemble) ; la valeur obtenue par la combinaison de r�gles
      (let ((action (assoc (attribut but) (actions (eval regle)))))
        
        (setf (second action_ensemble) (valeur_apres_action (list action_ensemble) action))
    ))
    (verifie_but? (list action_ensemble) but BF)))


; pr�dicat : la r�gle est v�rifi�e (c'est-�-dire son but v�rifi�) si ses conditions sont des buts v�rifi�s
(defun regle_verifiee? (regle BF BR &optional (profondeur 0))
  (dolist (condition (conditions (eval regle)) t) 
    (unless (moteur_arriere condition BF BR (+ 1 profondeur)) ; chacune des conditions de la r�gles alors sont des sous-buts � �tablir
        (return nil))))

; pr�dicat : l'ensemble est v�rifi� si parmis ses r�gles v�rifi�es, leurs actions atteignent le but
(defun ensemble_verifie? (ensemble but BF BR &optional (profondeur 0))
  (let (regles_verifiees)
    (when (if (= (length ensemble) 1)
              
              ; si l'ensemble ne contient qu'une r�gle, candidate seule 
              (when (regle_verifiee? (first ensemble) BF BR profondeur) 
                (push (first ensemble) regles_verifiees) t)
             
            ; si l'ensemble contient plusieurs r�gles
            (dolist (regle ensemble nil regles_verifiees)
              (when (regle_verifiee? regle BF BR (+ 1 profondeur)) 
                
                (tabulation (+ 1 profondeur))
                (format t "Buts v�rifi�s: ~S (Regle : ~S) ~&" (actions (eval regle)) regle)
                
                (push regle regles_verifiees) 
                (when (ensemble_candidat? regles_verifiees but BF)
                  (return t)))))
   
      ; s'il y a un ensemble de r�gles v�rifi�es et candidates 
      (reverse regles_verifiees))))

;;; Fin moteur arri�re