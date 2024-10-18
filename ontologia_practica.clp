;;; ---------------------------------------------------------
;;; ontologia_practica.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia_practica.ttl
;;; :Date 11/10/2024 18:04:18
;;; ---------------------------------------------------------
;;; ontologia_practica.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia_practica.ttl
;;; :Date 11/10/2024 18:04:18

(defclass Visitant
    (is-a USER)
    (pattern-match reactive)
    (multislot Mira_a  ; This is the "mira-a" relationship
        (type INSTANCE)
        (allowed-classes Obres)  ; It references instances of the class "Obres"
        (create-accessor read-write))
    (multislot autor_pref
        (type STRING)
        (create-accessor read-write))
    (multislot epoca_pref
        (type STRING)
        (create-accessor read-write))
    (multislot estil_pref
        (type STRING)
        (create-accessor read-write))
    (multislot primer_cop_o_no
        (type STRING)
        (create-accessor read-write))
    (multislot tematica_pref
        (type STRING)
        (create-accessor read-write))
)

(defclass Obres
    (is-a USER)
    (pattern-match reactive)
    (slot Nom
        (type STRING)
        (create-accessor read-write))
;    (multislot Mirada_por ; Optionally, to reference who is looking at the work of art
;        (type INSTANCE)
;        (allowed-classes Visitant)  ; It references instances of the class "Visitant"
;        (create-accessor read-write))
    (multislot any_de_creacio
        (type INTEGER)
        (create-accessor read-write))
    (multislot autor_quadre
        (type STRING)
        (create-accessor read-write))
    (multislot complexitat
        (type STRING)
        (create-accessor read-write))
    (multislot dimensions
        (type INTEGER)
        (create-accessor read-write))
    (multislot epoca
        (type STRING)
        (create-accessor read-write))
    (multislot estil
        (type STRING)
        (create-accessor read-write))
    (multislot rellevancia
        (type STRING)
        (create-accessor read-write))
    (multislot sala
        (type INTEGER)
        (create-accessor read-write))
    (multislot tematica
        (type STRING)
        (create-accessor read-write))
)

(defclass Sala
    (is-a USER)
    (slot id
        (type INTEGER)
        (create-accessor read-write))
    (slot connected-to
        (type INSTANCE)
        (allowed-classes Sala)
        (create-accessor read-write))
)

(defclass Visitant_acompanyat
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
    (multislot tipus_de_grup
        (type STRING)
        (create-accessor read-write))
)

(defclass Visitant_sol
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
    (multislot tipus_de_comportament
        (type STRING)
        (create-accessor read-write))
)

; INSTÀNCIES

(definstances instancies_obres
    (Davallament
        of Obres
        (any_de_creacio 1475)
        (epoca "Medieval")
        (estil "Renaixentista")
        (autor_quadre "Anònim")
        (sala 001)
        (tematica "Religió")
        (dimensions 1998.15)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    
    (Sant_Gregori_Papa
        of Obres
        (any_de_creacio 1495)
        (epoca "Medieval")
        (estil "Renaixentista")
        (autor_quadre "Pedro Berruguete")
        (sala 001)
        (tematica "Religió")
        (dimensions 1280)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    (Maquina_de_Llaurar
        of Obres
        (any_de_creacio 1953)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Desconegut")
        (sala 81)
        (tematica "Conceptual")
        (dimensions 1280)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    (Anunciacio
        of Obres
        (any_de_creacio 1800)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Religiosa")
        (dimensions 12615)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )

    (Seguici_Nupcial_Amb_Himeneu
        of Obres
        (any_de_creacio 1803)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Mitològica")
        (dimensions 4017)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    (Aparicio_de_la_Mare_de_Deu
        of Obres
        (any_de_creacio 1812)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Religiosa")
        (dimensions 2928)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    (Mort_de_Sant_Josep_Oriol
        of Obres
        (any_de_creacio 1806)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Religiosa")
        (dimensions 263.34)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )

    (Sagrada_Familia
        of Obres
        (any_de_creacio 1812)
        (epoca "Edat contemporània")
        (estil "Tinta")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Religiosa")
        (dimensions 459.34)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    (Sant_Joan_Baptista
        of Obres
        (any_de_creacio 1790)
        (epoca "Edat moderna")
        (estil "Tinta")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Religiosa")
        (dimensions 1168.75)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    (Dos_Frares_i_Grup_de_Gent
        of Obres
        (any_de_creacio 1812)
        (epoca "Edat contemporània")
        (estil "Dibuix")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Religiosa")
        (dimensions 690.8)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    (Retrat_del_Rei_Josep_I
        of Obres
        (any_de_creacio 1809)
        (epoca "Edat contemporània")
        (estil "Pintura a l'oli")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 02)
        (tematica "Religiosa")
        (dimensions 13888)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    (Autoretrat
        of Obres
        (any_de_creacio 1802)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Salvador Mayol")
        (sala 35)
        (tematica "Autoretrat")
        (dimensions 3220)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )

    (Un_Cafe_durant_Carnestoltes
        of Obres
        (any_de_creacio 1824)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Salvador Mayol")
        (sala 35)
        (tematica "Autoretrat")
        (dimensions 19608)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    (Pintures_Murals_Conquesta_Mallorca
        of Obres
        (any_de_creacio 1288)
        (epoca "Edat Medieval")
        (estil "Gòtic")
        (autor_quadre "Desconegut")
        (sala 3)
        (tematica "Històrica")
        (dimensions 6048)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )

    (Sant_Agusti
        of Obres
        (any_de_creacio 1463)
        (epoca "Edat Medieval")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 26)
        (tematica "Religiosa")
        (dimensions 48250)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    (Retaule_de_Sant_Cebria
        of Obres
        (any_de_creacio 1475)
        (epoca "Edat Medieval")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 26)
        (tematica "Religiosa")
        (dimensions 55357)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    (Sant_Miquel_1455
        of Obres
        (any_de_creacio 1455)
        (epoca "Edat Medieval")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 26)
        (tematica "Religiosa")
        (dimensions 29318)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    (Sant_Miquel_1450
        of Obres
        (any_de_creacio 1450)
        (epoca "Edat Medieval")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 26)
        (tematica "Religiosa")
        (dimensions 34080)
        (complexitat "Alta")
        (rellevancia "Alta")
    )

    (Masia_Blanca_de_Bunyola
        of Obres
        (any_de_creacio 1902)
        (epoca "Edat contemporània")
        (estil "Art Modern")
        (autor_quadre "Santiago Rusiñol")
        (sala 8)
        (tematica "Paisatges")
        (dimensions 5376)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )

    (Cofre_de_joies_de_Lluis_XIV
        of Obres
        (any_de_creacio 1677)
        (epoca "Medieval")
        (estil "Escultura")
        (autor_quadre "Jakob Blanck")
        (sala "No exposat")
        (tematica "Monarquia")
        (dimensions 1197)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    (Codi_d_Hammurabi
        of Obres
        (any_de_creacio -1792)
        (epoca "Babilònic antic")
        (estil "Escultura")
        (autor_quadre "Desconegut")
        (sala 227)
        (tematica "Legal")
        (dimensions 17775)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )

    (La_Mona_Lisa
        of Obres
        (any_de_creacio 1519)
        (epoca "Medieval")
        (estil "Renaixentista")
        (autor_quadre "Leonardo da Vinci")
        (sala 711)
        (tematica "Retrat")
        (dimensions 4240)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )

    (Les_Noces_de_Cana
        of Obres
        (any_de_creacio 1550)
        (epoca "Moderna")
        (estil "Escola d'Itàlia")
        (autor_quadre "Paolo Caliari")
        (sala 711)
        (tematica "Religiosa")
        (dimensions 673238)
        (complexitat "Alta")
        (rellevancia "Alta")
    )

    (La_Llibertat_guiant_el_poble
        of Obres
        (any_de_creacio 1830)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Eugène Delacroix")
        (sala 700)
        (tematica "Revolucionària")
        (dimensions 84500)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )

    (Mare_de_Deu_de_les_Roques
        of Obres
        (any_de_creacio 1483)
        (epoca "Medieval")
        (estil "Escola d'Itàlia")
        (autor_quadre "Leonardo da Vinci")
        (sala 710)
        (tematica "Religiosa")
        (dimensions 24278)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    (Tique_de_Constantinoble
        of Obres
        (any_de_creacio 649)
        (epoca "Bizantina")
        (estil "Bizantí")
        (autor_quadre "Desconegut")
        (sala "No exposat")
        (tematica "Mitològica")
        (dimensions 688.2)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    (El_Rai_de_la_Medusa
        of Obres
        (any_de_creacio 1818)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Théodore Géricault")
        (sala 700)
        (tematica "Esdeveniment històric")
        (dimensions 351556)
        (complexitat "Alta")
        (rellevancia "Alta")
    )

    (La_coronacio_de_Napoleo
        of Obres
        (any_de_creacio 1806)
        (epoca "Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Jacques-Louis David")
        (sala 702)
        (tematica "Esdeveniment històric")
        (dimensions 607659)
        (complexitat "Alta")
        (rellevancia "Alta")
    )

    (Lamassu
        of Obres
        (any_de_creacio -720)
        (epoca "Antiga")
        (estil "Relleu mural")
        (autor_quadre "Desconegut")
        (sala 229)
        (tematica "Mitològica")
        (dimensions 180188)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    (La_puntaire
        of Obres
        (any_de_creacio 1670)
        (epoca "Moderna")
        (estil "Escola holandesa")
        (autor_quadre "Johannes Vermeer")
        (sala 837)
        (tematica "Retrat")
        (dimensions 504)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    (L_astonom
        of Obres
        (any_de_creacio 1668)
        (epoca "Moderna")
        (estil "Neoclassicisme")
        (autor_quadre "Jacques-Louis David")
        (sala 702)
        (tematica "Retrat")
        (dimensions 2295)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )

    (Calma_matinal_interior_del_bosc
        of Obres
        (any_de_creacio 1850)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala "No exposat")
        (tematica "Paisatge")
        (dimensions 4988)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    (Crepuscle
        of Obres
        (any_de_creacio 1842)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala "No exposat")
        (tematica "Paisatge")
        (dimensions 9882)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    (Inundacions_a_Saint_Cloud
        of Obres
        (any_de_creacio 1855)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 700)
        (tematica "Paisatge")
        (dimensions 60900)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    (Bosc_de_Fontainebleau_Els_cacadors
        of Obres
        (any_de_creacio 1855)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala "No exposat")
        (tematica "Paisatge")
        (dimensions 10875)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    (Parc_de_Saint_Cloud_en_un_dia_festiu
        of Obres
        (any_de_creacio 1829)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala "No exposat")
        (tematica "Paisatge")
        (dimensions 1656)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    (Cabana_normanda_Vell_Trouville
        of Obres
        (any_de_creacio 1861)
        (epoca "Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 944)
        (tematica "Vida quotidiana")
        (dimensions 4988)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    (Sant_Jordi_matant_el_drac
        of Obres
        (any_de_creacio 1520)
        (epoca "Moderna")
        (estil "Escola de França Champagne")
        (autor_quadre "Grégoire Guérard")
        (sala 821)
        (tematica "Mitològica")
        (dimensions 5244)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    (La_plana_davant_dels_Pirineus
        of Obres
        (any_de_creacio 1861)
        (epoca "Contemporània")
        (estil "Escola de Barbizon")
        (autor_quadre "Théodore Rousseau")
        (sala 948)
        (tematica "Paisatge")
        (dimensions 646.25)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    (La_crucifixion
        of Obres
        (any_de_creacio 1320)
        (epoca "baixa edat mitjana")
        (estil "tardogòtic")
        (autor_quadre "Agnolo Gaddi")
        (sala 5)
        (tematica "religió")
        (dimensions 594.5)
        (complexitat "baixa")
        (relevancia "baixa")
    )

    (Robles_junto_al_agua
        of Obres
        (any_de_creacio 1832)
        (epoca "Contemporània")
        (estil "realisme")
        (autor_quadre "Christian E.B.Morgenstern")
        (sala 29)
        (tematica "paisatge")
        (dimensions 7135.5)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (Vista_del_puerto_de_rotterdam
        of Obres
        (any_de_creacio 1856)
        (epoca "Contemporània")
        (estil "realisme")
        (autor_quadre "Johan Barthold Jongkind")
        (sala 29)
        (tematica "paisatge")
        (dimensions 2408)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (Jinete_arabe
        of Obres
        (any_de_creacio 1854)
        (epoca "Contemporània")
        (estil "romanticisme")
        (autor_quadre "")
        (sala 29)
        (tematica "paisatge")
        (dimensions 2408)
        (complexitat "mitjana")
        (relevancia "baixa")
    )

    (Atardecer_en_la_pradera
        of Obres
        (any_de_creacio 1870)
        (epoca "Contemporània")
        (estil "realisme")
        (autor_quadre "Albert Bierstadt")
        (sala 12)
        (tematica "paisatge")
        (dimensions 9999.9)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (El_bosque_de_Marly
        of Obres
        (any_de_creacio 1871)
        (epoca "Contemporània")
        (estil "impressionisme")
        (autor_quadre "Camille Pissarro")
        (sala 33)
        (tematica "paisatge")
        (dimensions 2475)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (Paisaje_con_tormenta
        of Obres
        (any_de_creacio 1701)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Marco Ricci")
        (sala 22)
        (tematica "paisatge")
        (dimensions 12994)
        (complexitat "alta")
        (relevancia "baixa")
    )

    (Es_sacrificio_de_Isaac
        of Obres
        (any_de_creacio 1715)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Giambiattista Piazzetta")
        (sala 4)
        (tematica "religiós")
        (dimensions 12550.0)
        (complexitat "mitjana")
        (relevancia "baixa")
    )

    (Retrato_del_conde_Fulvio_Grati
        of Obres
        (any_de_creacio 1720)
        (epoca "Moderna")
        (estil "Escola de Bolonya")
        (autor_quadre "Giuseppe Maria Crespi")
        (sala 6)
        (tematica "retrat")
        (dimensions 34884)
        (complexitat "mitjana")
        (relevancia "baixa")
    )

    (La_piscina_probática
        of Obres
        (any_de_creacio 1724)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Giovanni Paolo Panini")
        (sala 22)
        (tematica "religiosa")
        (dimensions 7220.05)
        (complexitat "alta")
        (relevancia "baixa")
    )

    (Bodegon_con_gato_y_pescado
        of Obres
        (any_de_creacio 1728)
        (epoca "Moderna")
        (estil "Escola francesa")
        (autor_quadre "Jean Baptiste Siméon Chardin")
        (sala 24)
        (tematica "bodegó")
        (dimensions 5008.5)
        (complexitat "baixa")
        (relevancia "baixa")
    )
    
    (Concierto_Campestre
        of Obres
        (any_de_creacio 1734)
        (epoca "Moderna")
        (estil "Escola francesa")
        (autor_quadre "Jean-Baptiste Pater")
        (sala 24)
        (tematica "escena de gènere")
        (dimensions 3630.5)
        (complexitat "mitjana")
        (relevancia "baixa")
    )

    (Grupo_de_mendigos
        of Obres
        (any_de_creacio 1737)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Giacomo Cerutti")
        (sala 34)
        (tematica "escena de gènere")
        (dimensions 12397.5)
        (complexitat "mitjana")
        (relevancia "baixa")
    )
    
    (Capricho_con_rio_y_puente
        of Obres
        (any_de_creacio 1745)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Bernardo Bellotto")
        (sala 10)
        (tematica "paisatge")
        (dimensions 3540.5)
        (complexitat "mitjana")
        (relevancia "baixa")
    )

    (Paisaje_invernal_con_una_familia_de_campesinos
        of Obres
        (any_de_creacio 1780)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Francesco Foschi")
        (sala 22)
        (tematica "escena de gènere")
        (dimensions 2976)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (La_expulsion_de_los_mercaderes_del_templo
        of Obres
        (any_de_creacio 1750)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Giandomenico Tiepolo")
        (sala 22)
        (tematica "religiós")
        (dimensions 20280)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (Frances_condesa_de_Dartmouth
        of Obres
        (any_de_creacio 1756)
        (epoca "Moderna")
        (estil "Escola britànica")
        (autor_quadre "Sir Joshua Reynolds")
        (sala 7)
        (tematica "retrat")
        (dimensions 12954)
        (complexitat "baixa")
        (relevancia "baixa")
    )
    
    (La_apoteosis_de_Hercules
        of Obres
        (any_de_creacio 1765)
        (epoca "Moderna")
        (estil "Escola italiana")
        (autor_quadre "Giandomenico Tiepolo")
        (sala 7)
        (tematica "mitologia")
        (dimensions 8661.15)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (El_patio_de_la_aduana
        of Obres
        (any_de_creacio 1775)
        (epoca "Moderna")
        (estil "Escola francesa")
        (autor_quadre "Nicolas-Bernard Lépicié")
        (sala 24)
        (tematica "escena de gènere")
        (dimensions 16072)
        (complexitat "alta")
        (relevancia "baixa")
    )
    
    (La_Anunciacion
        of Obres
        (any_de_creacio 1576)
        (epoca "Moderna")
        (estil "Escola espanyola")
        (autor_quadre "El Greco")
        (sala 11)
        (tematica "religiosa")
        (dimensions 11466)
        (complexitat "alta")
        (relevancia "alta")
    )

    (El_embarco_de_santa_Paula_Romana
        of Obres
        (any_de_creacio 1639)
        (epoca "Edat Moderna")
        (estil "Clasicisme")
        (autor_quadre "Claudio de Lorena")
        (sala 002)
        (tematica "Religió")
        (dimensions 30595)
        (complexitat "Mitjana")
        (relevancia "Mitjana")
    )

    (Riña_de_gatos
        of Obres
        (any_de_creacio 1786)
        (epoca "Edat Moderna")
        (estil "Naturalisme")
        (autor_quadre "Francisco de Goya y Lucientes")
        (sala 085)
        (tematica "Animals")
        (dimensions 11104.25)
        (complexitat "Mitjana")
        (relevancia "Baixa")
    )

    (Ofrenda_a_Baco
        of Obres
        (any_de_creacio 1720)
        (epoca "Edat Moderna")
        (estil "Rococó")
        (autor_quadre "Michel-Ange Houasse")
        (sala 020)
        (tematica "Mitologia")
        (dimensions 22500)
        (complexitat "Mitjana-Alta")
        (relevancia "Mitjana")
    )

    (Eugenia_Martínez_Vallejo_vestida
        of Obres
        (any_de_creacio 1680)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Juan Carreño de Miranda")
        (sala 016A)
        (tematica "Retrat")
        (dimensions 17655)
        (complexitat "Baixa")
        (relevancia "Mitjana")
    )

    (Cabeza_de_venado
        of Obres
        (any_de_creacio 1626)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Diego Rodríguez de Silva y Velázquez")
        (sala 011)
        (tematica "Animals")
        (dimensions 3432)
        (complexitat "Baixa")
        (relevancia "Mitjana")
    )

    (La_cita
        of Obres
        (any_de_creacio 1780)
        (epoca "Edat Moderna")
        (estil "Neoclassicisme")
        (autor_quadre "Francisco de Goya y Lucientes")
        (sala 092)
        (tematica "Paisatge")
        (dimensions 15100)
        (complexitat "Mitjana")
        (relevancia "Mitjana")
    )

    (Sibila
        of Obres
        (any_de_creacio 1632)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Diego Rodríguez de Silva y Velázquez")
        (sala 014)
        (tematica "Retrat")
        (dimensions 3100)
        (complexitat "Mitjana")
        (relevancia "Baixa")
    )

    (La_Vista_y_el_Olfato
        of Obres
        (any_de_creacio 1632)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Jan Brueghel 'el Viejo'")
        (sala 077)
        (tematica "Al·legoria")
        (dimensions 46464)
        (complexitat "Alta")
        (relevancia "Mitjana")
    )

    (La_Inmaculada_de_El_Escorial
        of Obres
        (any_de_creacio 1660)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Bartolomé Esteban Murillo")
        (sala 017)
        (tematica "Religió")
        (dimensions 29664)
        (complexitat "Mitjana")
        (relevancia "Alta")
    )

    (Amalia_de_Llano_y_Dotres_condesa_de_Vilches
        of Obres
        (any_de_creacio 1853)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Federico de Madrazo y Kuntz")
        (sala 061)
        (tematica "Retrat")
        (dimensions 11214)
        (complexitat "Mitjana")
        (relevancia "Mitjana")
    )

    (La_familia_de_Carlos_IV
        of Obres
        (any_de_creacio 1800)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Francisco de Goya y Lucientes")
        (sala 032)
        (tematica "Retrat")
        (dimensions 94080)
        (complexitat "Alta")
        (relevancia "Alta")
    )

    (Cincinato_abandona_el_arado_para_dictar_leyes_a_Roma
        of Obres
        (any_de_creacio 1806)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Juan Antonio Ribera y Fernández")
        (sala 062)
        (tematica "Història")
        (dimensions 34400)
        (complexitat "Mitjana")
        (relevancia "Alta")
    )

    (Naumaquia_romana
        of Obres
        (any_de_creacio 1835)
        (epoca "Edat Contemporània")
        (estil "Barroc")
        (autor_quadre "Giovanni Lanfranco")
        (sala 005)
        (tematica "Paisatge")
        (dimensions 65522)
        (complexitat "Mitjana")
        (relevancia "Baixa")
    )

    (Arco_de_triunfo
        of Obres
        (any_de_creacio 1607)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Domenichino")
        (sala 006)
        (tematica "Arquitectura")
        (dimensions 4200)
        (complexitat "Baixa")
        (relevancia "Baixa")
    )

    (Paisaje_con_Psique_y_Júpiter
        of Obres
        (any_de_creacio 1610)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Pedro Pablo Rubens")
        (sala 078)
        (tematica "Arquitectura")
        (dimensions 12255)
        (complexitat "Baixa")
        (relevancia "Baixa")
    )

    (La_reina_Zenobia_ante_el_emperador_Aureliano
        of Obres
        (any_de_creacio 1717)
        (epoca "Edat Moderna")
        (estil "Rococó")
        (autor_quadre "Giambattista Tiepolo")
        (sala 023)
        (tematica "Història")
        (dimensions 125000)
        (complexitat "Alta")
        (relevancia "Mitjana")
    )

    (Retrato_de_Isabel_Farnesio
        of Obres
        (any_de_creacio 1723)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Jean Ranc")
        (sala 020)
        (tematica "Retrat")
        (dimensions 16560)
        (complexitat "Mitjana")
        (relevancia "Mitjana")
    )

    (La_educacion_de_Aquiles
        of Obres
        (any_de_creacio 1727)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Sebastiano Conca")
        (sala 020)
        (tematica "Paisatge")
        (dimensions 4366)
        (complexitat "Mitjana")
        (relevancia "Mitjana")
    )

    (Alejandro_Magno_en_el_Templo_de_Jerusalén
        of Obres
        (any_de_creacio 1736)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Sebastiano Conca")
        (sala 020)
        (tematica "Història")
        (dimensions 3763)
        (complexitat "Alta")
        (relevancia "Mitjana")
    )

    (La_idolatría_de_Salomón
        of Obres
        (any_de_creacio 1750)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Sebastiano Conca")
        (sala 021)
        (tematica "Religió")
        (dimensions 3834)
        (complexitat "Alta")
        (relevancia "Mitjana")
    )
)

(definstances instancies_visitants
    (visitant1 of Visitants
        (autor_pref "Leonardo da Vinci")
        (epoca_pref "Renaixement")
        (estil_pref "Renaixentista")
        (primer_cop_o_no "Sí")
        (tematica_pref "Religiós")
    )
    (visitant2 of Visitants
        (autor_pref "Paul Huet")
        (epoca_pref "Contemporània")
        (estil_pref "Romanticisme")
        (primer_cop_o_no "No")
        (tematica_pref "Paisatge")
    )
)

(definstances instancies_sales
    (sala1 of Sala (id 1) (connected-to 2 10))
    (sala2 of Sala (id 2) (connected-to 1 3))
    (sala3 of Sala (id 3) (connected-to 2 4))
    (sala4 of Sala (id 4) (connected-to 3 5))
    (sala5 of Sala (id 5) (connected-to 4 6))
    (sala6 of Sala (id 6) (connected-to 5 7))
    (sala7 of Sala (id 7) (connected-to 6 8))
    (sala8 of Sala (id 8) (connected-to 7 9))
    (sala9 of Sala (id 9) (connected-to 8 10))
    (sala10 of Sala (id 10) (connected-to 9 1))
)

;;; REGLES
; Funció de benvinguda i inici del programa
(defrule MAIN::initialRule "Regla principal"
    (declare (salience 100))
    =>
    (printout t "..........................................................." crlf)
    (printout t "                       Museu del 'SBC                      " crlf)
    (printout t "..........................................................." crlf)
    (printout t crlf)     
    (printout t "En Ramon, en Dani, en Nils i en Jaume us donem la benvinguda al museu!" crlf)
    (printout t "Estem aquí per recomanar-vos la ruta que millor us encaixi pel nostre museu." crlf)
    (printout t "Per això comencem amb unes quantes preguntes que ens ajudaran a saber les vostres preferències." crlf crlf)
    (printout t crlf)
)

; Pregunta sobre l'època preferida amb seleccions múltiples
(defrule MAIN::preguntarEpoca "Pregunta sobre l'època preferida"
    (declare (salience 20))
    =>
    (printout t "Quina és la teva època artística preferida?" crlf)
    (printout t "1. Medieval" crlf)
    (printout t "2. Renaixement" crlf)
    (printout t "3. Barroc" crlf)
    (printout t "4. Edat contemporània" crlf)
    (printout t "5. No tinc una preferència en quant a època artística" crlf)
    (printout t "Selecciona una o més opcions (per ex: 1 3 o 24): " crlf)
    (bind ?opc (readline))  ; Llegim la cadena d'opcions

    ; Verifiquem cada opció utilitzant str-index
    (if (integerp (str-index "1" ?opc)) then
        (assert (preferencia-epoca "Medieval"))
        (printout t "Has seleccionat: Medieval" crlf)
    )
    (if (integerp (str-index "2" ?opc)) then
        (assert (preferencia-epoca "Renaixement"))
        (printout t "Has seleccionat: Renaixement" crlf)
    )
    (if (integerp (str-index "3" ?opc)) then
        (assert (preferencia-epoca "Barroc"))
        (printout t "Has seleccionat: Barroc" crlf)
    )
    (if (integerp (str-index "4" ?opc)) then
        (assert (preferencia-epoca "Edat contemporània"))
        (printout t "Has seleccionat: Edat contemporània" crlf)
    )
    (if (integerp (str-index "5" ?opc)) then
        (assert (preferencia-epoca "ND")) ; ND = Not Defined
        (printout t "Has seleccionat: No tinc una preferència en quant a època artística" crlf)
    )
)
; Segona pregunta sobre la durada de la visita
(defrule MAIN::preguntarDuracio "Pregunta sobre la durada de la visita"
    (declare (salience 19))
    =>
    (printout t "Quant temps tens disponible per la visita? (en hores): " crlf)
    (bind ?temps (read))
    (assert (temps-visita ?temps))
    (printout t "Temps disponible: " ?temps " hores" crlf)
)

; Pregunta sobre la freqüència de visites al museu amb opcions numèriques
(defrule MAIN::preguntarFreqVisita "Pregunta sobre la freqüència de visita al museu"
    (declare (salience 17))
    =>
    (printout t "Com et consideres pel que fa a visitar museus d'art?" crlf)
    (printout t "1. És el meu primer cop" crlf)
    (printout t "2. Visitant esporàdic" crlf)
    (printout t "3. Visitant freqüent" crlf)
    (printout t "Selecciona una opció (1, 2 o 3): " crlf)
    (bind ?opc (read))
    
    ; Control de les opcions seleccionades
    (if (eq ?opc 1) then
        (assert (frequencia-visites "Primer cop"))
        (printout t "Has seleccionat: Primer cop" crlf)
    )
    (if (eq ?opc 2) then
        (assert (frequencia-visites "Esporàdic"))
        (printout t "Has seleccionat: Esporàdic" crlf)
    )
    (if (eq ?opc 3) then
        (assert (frequencia-visites "Freqüent"))
        (printout t "Has seleccionat: Freqüent" crlf)
    )
)

; Pregunta sobre la temàtica preferida amb seleccions múltiples
(defrule MAIN::preguntarTematica "Pregunta sobre la temàtica preferida"
    (declare (salience 16))
    =>
    (printout t "Quina és la teva temàtica preferida?" crlf)
    (printout t "1. Religió" crlf)
    (printout t "2. Mitologia" crlf)
    (printout t "3. Paisatge" crlf)
    (printout t "4. Retrats" crlf)
    (printout t "5. No tinc una preferència en quant a temàtica" crlf)
    (printout t "Selecciona una o més opcions (per ex: 1 3 o 24): " crlf)
    (bind ?opc (readline))

    ; Verifiquem cada opció utilitzant str-index i integerp
    (if (integerp (str-index "1" ?opc)) then
        (assert (preferencia-tematica "Religió"))
        (printout t "Has seleccionat: Religió" crlf)
    )
    (if (integerp (str-index "2" ?opc)) then
        (assert (preferencia-tematica "Mitologia"))
        (printout t "Has seleccionat: Mitologia" crlf)
    )
    (if (integerp (str-index "3" ?opc)) then
        (assert (preferencia-tematica "Paisatge"))
        (printout t "Has seleccionat: Paisatge" crlf)
    )
    (if (integerp (str-index "4" ?opc)) then
        (assert (preferencia-tematica "Retrats"))
        (printout t "Has seleccionat: Retrats" crlf)
    )
    (if (integerp (str-index "5" ?opc)) then
        (assert (preferencia-tematica "ND")) ; ND = Not Defined
        (printout t "Has seleccionat: No tinc una preferència en quant a temàtica" crlf)
    )
)

(defrule MAIN::preguntarGrup "Pregunta sobre si el visitant ve sol o acompanyat"
    (declare (salience 99))
    =>
    (printout t "Visitaràs el museu sol o acompanyat?" crlf)
    (printout t "1. Sol" crlf)
    (printout t "2. Acompanyat" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (grup "Sol"))
        (printout t "Has seleccionat: Sol" crlf)
    )
    (if (eq ?grup 2) then
        (assert (grup "Acompanyat"))
        (printout t "Has seleccionat: Acompanyat" crlf)
    )
)
(defrule MAIN::estil "Pregunta què estil prefereix el visitant"
    (declare (salience 15))
    =>
    (printout t "Què estil prefereixes?" crlf)
    (printout t "1. neoclassicisme" crlf)
    (printout t "2. cubisme" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?groneixementup (read))
    (if (eq ?grup 1) then
        (assert (estil "neoclassicisme"))
        (printout t "Has seleccionat: neoclassicisme" crlf)
    )
    (if (eq ?grup 2) then
        (assert (estil "cubisme"))
        (printout t "Has seleccionat: cubisme" crlf)
    )
)
(defrule MAIN::author "Pregunta què autor prefereix el visitant"
    (declare (salience 1))
    =>
    (printout t "Quin és el teu autor preferit: " crlf)
    (bind ?autor (read))
    (assert (autor-preferit ?autor))
    (printout t "Autor preferit: " ?autor crlf)
)
(defrule MAIN::c_art "Pregunta què coneixement d'art té  el visitant"
    (declare (salience 14))
    =>
    (printout t "Què coneixement d'art tens?" crlf)
    (printout t "1. Alt" crlf)
    (printout t "2. Mitjà" crlf)
    (printout t "2. Baix" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (coneixement "alt"))
        (printout t "Has seleccionat: Alt" crlf)
    )
    (if (eq ?grup 2) then
        (assert (coneixement "Mitjà"))
        (printout t "Has seleccionat: Mitjà" crlf)
    )
    (if (eq ?grup 3) then
        (assert (coneixement "Baix"))
        (printout t "Has seleccionat: Baix" crlf)
    )
)
(defrule MAIN::interés "Pregunta quin interès té el visitant"
    (declare (salience 6))
    =>
    (printout t "Quin interès tens sobre l'exposat?" crlf)
    (printout t "1. Alt" crlf)
    (printout t "2. Mitjà" crlf)
    (printout t "3. Baix" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (interés "alt"))
        (printout t "Has seleccionat: Alt" crlf)
    )
    (if (eq ?grup 2) then
        (assert (interés "Mitjà"))
        (printout t "Has seleccionat: Mitjà" crlf)
    )
    (if (eq ?grup 3) then
        (assert (interés "Baix"))
        (printout t "Has seleccionat: Baix" crlf)
    )
)
(defrule MAIN::tipgrup "Pregunta el tipus de grup"
    (declare (salience 6))
    =>
    (printout t "Amb qui vens?" crlf)
    (printout t "1. amics" crlf)
    (printout t "2. familia" crlf)
    (printout t "3. classe" crlf)
    (printout t "4. grup turístic" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (tipusgrup "amics"))
        (printout t "Has seleccionat: amics" crlf)
    )
    (if (eq ?grup 2) then
        (assert (tipusgrup "familia"))
        (printout t "Has seleccionat: familia" crlf)
    )
    (if (eq ?grup 3) then
        (assert (tipusgrup "classe"))
        (printout t "Has seleccionat: classe" crlf)
    )
    (if (eq ?grup 4) then
        (assert (tipusgrup "grup turístic"))
        (printout t "Has seleccionat: grup turístic" crlf)
    )
)

;(any-factp ((?f grup)) (eq ?f:implied (create$ "Sol"))) --> mira si existeix el fact (grup "Sol")
;(any-factp ((?f grup)) (eq ?f:implied (create$ "Acompanyat"))) --> mira si existeix el fact (grup "Acompanyat")

; ant ->            Visita > 2h, Primer com, Interes (Alt) o Coneixement (Alt)
; butterfly ->      Visita > 2h, Primer com o esporàdic, Interes (mitjà) o Coneixement (Alt)
; grasshopper ->    Visita < 2h, freq o esporàdic, (Interes (mitjà) i Coneixement (baix)) o (Interes (baix) i Coneixement (mitjà))
; peix ->           Visita < 2h, freq o esporàdic, Interes (baix) i Coneixement (baix)

(defrule bind-rooms
    ?sala1 <- (Sala (id 1))
    ?sala2 <- (Sala (id 2))
    =>
    (modify ?sala1 (connected-to ?sala2))
    (modify ?sala2 (connected-to ?sala1))
)

; Rule to calculate interest in each artwork based on visitor preferences
(defrule calculate-artwork-interest
  (Visitant (autor_pref ?artist) (epoca_pref ?period) (estil_pref ?style) (tematica_pref ?theme))
  (Obres (autor_quadre ?artist) (epoca ?period) (estil ?style) (tematica ?theme) (rellevancia ?relevance))
  =>
  (bind ?match-count 0)
  (if (eq ?artist (fact-slot-value ?f2 autor_quadre)) then (bind ?match-count (+ ?match-count 1)))
  (if (eq ?period (fact-slot-value ?f2 epoca)) then (bind ?match-count (+ ?match-count 1)))
  (if (eq ?style (fact-slot-value ?f2 estil)) then (bind ?match-count (+ ?match-count 1)))
  (if (eq ?theme (fact-slot-value ?f2 tematica)) then (bind ?match-count (+ ?match-count 1)))
  (bind ?interest (calculate-interest ?relevance ?match-count))
  (assert (artwork-interest ?f2 ?interest))
)

; Simple pathfinding rule (breadth-first search) - You'll need to refine this
(defrule find-path
    (start-room ?start)
    (end-room ?end)
    (not (path ?start ?end)) 
    (Sala (id ?start) (connected-to $?neighbors))
    =>
    (foreach ?neighbor $?neighbors
      (assert (path ?start ?neighbor))
      (if (eq ?neighbor ?end) then
        (printout t "Path found: " ?start " -> " ?end crlf)
      else
        (assert (start-room ?neighbor))))
)

; Example rule to select artworks in a room based on interest and visiting style
(defrule select-artworks
    (path ?current-room ?next-room)
    (Visitant (visiting_style ?style))
    (artwork-interest ?artwork ?interest)
    (Obres (sala ?current-room) (titol ?title)) ; Access the artwork title
    =>
    ; Logic to select artworks based on interest and style
    (printout t "In room " ?current-room ", consider: " ?title " (interest: " ?interest ") " crlf)
)

; Rule to read the visiting style
(defrule MAIN::assignar-persona "Assignar persona"
    (assignar-persona)
    =>
    (bind ?style (read))
    (assert (Visitant (visiting_style ?style)))
    (printout t "You selected: " ?style crlf)
)

; Rule to start the route -  This is just a placeholder, you'll need to develop the actual routing logic
(defrule start-route
    (Visitant (visiting_style ?style))
    =>
    (printout t "Generating a route for a " ?style " visitor..." crlf)
    (assert (start-room 1))  ; Start in room 1
    (assert (end-room 1))    ; End in room 1
)