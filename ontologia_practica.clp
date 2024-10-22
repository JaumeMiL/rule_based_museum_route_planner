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
    ;; Sala 1 - Època Antiga i Medieval
    (Codi_d_Hammurabi
        of Obres
        (any_de_creacio -1792)
        (epoca "Antiga")
        (estil "Escultura")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Legal")
        (dimensions 17775)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Lamassu
        of Obres
        (any_de_creacio -720)
        (epoca "Antiga")
        (estil "Escultura")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Mitologia")
        (dimensions 180188)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Tique_de_Constantinoble
        of Obres
        (any_de_creacio 649)
        (epoca "Medieval")
        (estil "Bizantí")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Mitologia")
        (dimensions 688.2)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Pintures_Murals_Conquesta_Mallorca
        of Obres
        (any_de_creacio 1288)
        (epoca "Medieval")
        (estil "Gòtic")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Història")
        (dimensions 6048)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )
    (La_crucifixio
        of Obres
        (any_de_creacio 1320)
        (epoca "Medieval")
        (estil "Gòtic")
        (autor_quadre "Agnolo Gaddi")
        (sala 1)
        (tematica "Religió")
        (dimensions 594.5)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Sant_Miquel_1450
        of Obres
        (any_de_creacio 1450)
        (epoca "Medieval")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 1)
        (tematica "Religió")
        (dimensions 34080)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (Sant_Miquel_1455
        of Obres
        (any_de_creacio 1455)
        (epoca "Medieval")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 1)
        (tematica "Religió")
        (dimensions 29318)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Sant_Agusti
        of Obres
        (any_de_creacio 1463)
        (epoca "Medieval")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 1)
        (tematica "Religió")
        (dimensions 48250)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    ;; Sala 2 - Renaixement i Manierisme
    (Davallament
        of Obres
        (any_de_creacio 1475)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Desconegut")
        (sala 2)
        (tematica "Religió")
        (dimensions 1998.15)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Retaule_de_Sant_Cebria
        of Obres
        (any_de_creacio 1475)
        (epoca "Edat Moderna")
        (estil "Gòtic")
        (autor_quadre "Jaume Huguet")
        (sala 2)
        (tematica "Religió")
        (dimensions 55357)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Mare_de_Deu_de_les_Roques
        of Obres
        (any_de_creacio 1483)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Leonardo da Vinci")
        (sala 2)
        (tematica "Religió")
        (dimensions 24278)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Sant_Gregori_Papa
        of Obres
        (any_de_creacio 1495)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Pedro Berruguete")
        (sala 2)
        (tematica "Religió")
        (dimensions 1280)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (La_Mona_Lisa
        of Obres
        (any_de_creacio 1519)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Leonardo da Vinci")
        (sala 2)
        (tematica "Retrat")
        (dimensions 0.424)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Sant_Jordi_matant_el_drac
        of Obres
        (any_de_creacio 1520)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Grégoire Guérard")
        (sala 2)
        (tematica "Mitologia")
        (dimensions 5244)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Les_Noces_de_Cana
        of Obres
        (any_de_creacio 1550)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Paolo Caliari")
        (sala 2)
        (tematica "Religió")
        (dimensions 673238)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (La_Anunciacion
        of Obres
        (any_de_creacio 1576)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "El Greco")
        (sala 2)
        (tematica "Religió")
        (dimensions 11466)
        (complexitat "Alta")
        (rellevancia "Alta")
    )

    ;; Sala 3 - Barroc primerenc
    (Arco_de_triunfo
        of Obres
        (any_de_creacio 1607)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Domenichino")
        (sala 3)
        (tematica "Arquitectura")
        (dimensions 4200)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Paisaje_con_Psique_y_Jupiter
        of Obres
        (any_de_creacio 1610)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Pedro Pablo Rubens")
        (sala 3)
        (tematica "Arquitectura")
        (dimensions 12255)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Cabeza_de_venado
        of Obres
        (any_de_creacio 1626)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Diego Rodríguez de Silva y Velázquez")
        (sala 3)
        (tematica "Animals")
        (dimensions 3432)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )
    (Sibila
        of Obres
        (any_de_creacio 1632)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Diego Rodríguez de Silva y Velázquez")
        (sala 3)
        (tematica "Retrat")
        (dimensions 3100)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (La_Vista_y_el_Olfato
        of Obres
        (any_de_creacio 1632)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Jan Brueghel 'el Vell'")
        (sala 3)
        (tematica "Al·legoria")
        (dimensions 46464)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (El_embarco_de_santa_Paula_Romana
        of Obres
        (any_de_creacio 1639)
        (epoca "Edat Moderna")
        (estil "Classicisme")
        (autor_quadre "Claudio de Lorena")
        (sala 3)
        (tematica "Religió")
        (dimensions 30595)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (La_Inmaculada_de_El_Escorial
        of Obres
        (any_de_creacio 1660)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Bartolomé Esteban Murillo")
        (sala 3)
        (tematica "Religió")
        (dimensions 29664)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (La_puntaire
        of Obres
        (any_de_creacio 1670)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Johannes Vermeer")
        (sala 3)
        (tematica "Retrat")
        (dimensions 504)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    ;; Sala 4 - Barroc i Rococó
    (L_astronom
        of Obres
        (any_de_creacio 1668)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Johannes Vermeer")
        (sala 4)
        (tematica "Retrat")
        (dimensions 2295)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )
    (Cofre_de_joies_de_Lluis_XIV
        of Obres
        (any_de_creacio 1677)
        (epoca "Edat Moderna")
        (estil "Escultura")
        (autor_quadre "Jakob Blanck")
        (sala 4)
        (tematica "Monarquia")
        (dimensions 1197)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Eugenia_Martinez_Vallejo_vestida
        of Obres
        (any_de_creacio 1680)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Juan Carreño de Miranda")
        (sala 4)
        (tematica "Retrat")
        (dimensions 17655)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )
    (Paisaje_con_tormenta
        of Obres
        (any_de_creacio 1701)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Marco Ricci")
        (sala 4)
        (tematica "Paisatge")
        (dimensions 12994)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Es_sacrificio_de_Isaac
        of Obres
        (any_de_creacio 1715)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giambattista Piazzetta")
        (sala 4)
        (tematica "Religió")
        (dimensions 12550)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (La_reina_Zenobia_ante_el_emperador_Aureliano
        of Obres
        (any_de_creacio 1717)
        (epoca "Edat Moderna")
        (estil "Rococó")
        (autor_quadre "Giambattista Tiepolo")
        (sala 4)
        (tematica "Història")
        (dimensions 125000)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Retrato_del_conde_Fulvio_Grati
        of Obres
        (any_de_creacio 1720)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giuseppe Maria Crespi")
        (sala 4)
        (tematica "Retrat")
        (dimensions 34884)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Ofrenda_a_Baco
        of Obres
        (any_de_creacio 1720)
        (epoca "Edat Moderna")
        (estil "Rococó")
        (autor_quadre "Michel-Ange Houasse")
        (sala 4)
        (tematica "Mitologia")
        (dimensions 22500)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    ;; Sala 5 - Rococó i Neoclassicisme
    (Retrato_de_Isabel_Farnesio
        of Obres
        (any_de_creacio 1723)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Jean Ranc")
        (sala 5)
        (tematica "Retrat")
        (dimensions 16560)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (La_piscina_probatica
        of Obres
        (any_de_creacio 1724)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giovanni Paolo Panini")
        (sala 5)
        (tematica "Religió")
        (dimensions 7220.05)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (La_educacion_de_Aquiles
        of Obres
        (any_de_creacio 1727)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Sebastiano Conca")
        (sala 5)
        (tematica "Paisatge")
        (dimensions 4366)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Bodegon_con_gato_y_pescado
        of Obres
        (any_de_creacio 1728)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Jean Baptiste Siméon Chardin")
        (sala 5)
        (tematica "Bodegó")
        (dimensions 5008.5)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Concierto_Campestre
        of Obres
        (any_de_creacio 1734)
        (epoca "Edat Moderna")
        (estil "Rococó")
        (autor_quadre "Jean-Baptiste Pater")
        (sala 5)
        (tematica "Escena de gènere")
        (dimensions 3630.5)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Grupo_de_mendigos
        of Obres
        (any_de_creacio 1737)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giacomo Cerutti")
        (sala 5)
        (tematica "Escena de gènere")
        (dimensions 12397.5)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Capricho_con_rio_y_puente
        of Obres
        (any_de_creacio 1745)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Bernardo Bellotto")
        (sala 5)
        (tematica "Paisatge")
        (dimensions 3540.5)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (La_expulsion_de_los_mercaderes_del_templo
        of Obres
        (any_de_creacio 1750)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giandomenico Tiepolo")
        (sala 5)
        (tematica "Religió")
        (dimensions 20280)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Frances_condesa_de_Dartmouth
        of Obres
        (any_de_creacio 1756)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Sir Joshua Reynolds")
        (sala 5)
        (tematica "Retrat")
        (dimensions 12954)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (La_apoteosis_de_Hercules
        of Obres
        (any_de_creacio 1765)
        (epoca "Edat Moderna")
        (estil "Rococó")
        (autor_quadre "Giandomenico Tiepolo")
        (sala 5)
        (tematica "Mitologia")
        (dimensions 8661.15)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (El_patio_de_la_aduana
        of Obres
        (any_de_creacio 1775)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Nicolas-Bernard Lépicié")
        (sala 5)
        (tematica "Escena de gènere")
        (dimensions 16072)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Paisaje_invernal_con_una_familia_de_campesinos
        of Obres
        (any_de_creacio 1780)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Francesco Foschi")
        (sala 5)
        (tematica "Escena de gènere")
        (dimensions 2976)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    ;; Sala 6 - Neoclassicisme i Romanticisme
    (La_cita
        of Obres
        (any_de_creacio 1780)
        (epoca "Edat Moderna")
        (estil "Neoclassicisme")
        (autor_quadre "Francisco de Goya y Lucientes")
        (sala 6)
        (tematica "Paisatge")
        (dimensions 15100)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Riña_de_gatos
        of Obres
        (any_de_creacio 1786)
        (epoca "Edat Moderna")
        (estil "Naturalisme")
        (autor_quadre "Francisco de Goya y Lucientes")
        (sala 6)
        (tematica "Animals")
        (dimensions 11104.25)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (La_familia_de_Carlos_IV
        of Obres
        (any_de_creacio 1800)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Francisco de Goya y Lucientes")
        (sala 6)
        (tematica "Retrat")
        (dimensions 94080)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (Cincinato_abandona_el_arado_para_dictar_leyes_a_Roma
        of Obres
        (any_de_creacio 1806)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Juan Antonio Ribera y Fernández")
        (sala 6)
        (tematica "Història")
        (dimensions 34400)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (La_coronacio_de_Napoleo
        of Obres
        (any_de_creacio 1806)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Jacques-Louis David")
        (sala 6)
        (tematica "Esdeveniment històric")
        (dimensions 607659)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (El_Rai_de_la_Medusa
        of Obres
        (any_de_creacio 1818)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Théodore Géricault")
        (sala 6)
        (tematica "Esdeveniment històric")
        (dimensions 351556)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (La_Llibertat_guiant_el_poble
        of Obres
        (any_de_creacio 1830)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Eugène Delacroix")
        (sala 6)
        (tematica "Revolucionària")
        (dimensions 84500)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Amalia_de_Llano_y_Dotres_condesa_de_Vilches
        of Obres
        (any_de_creacio 1853)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Federico de Madrazo y Kuntz")
        (sala 6)
        (tematica "Retrat")
        (dimensions 11214)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )



    ;; Sala 7 - Paisatges Romàntics i Realistes
    (Calma_matinal_interior_del_bosc
        of Obres
        (any_de_creacio 1850)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 7)
        (tematica "Paisatge")
        (dimensions 4988)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Crepuscle
        of Obres
        (any_de_creacio 1842)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 7)
        (tematica "Paisatge")
        (dimensions 9882)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Inundacions_a_Saint_Cloud
        of Obres
        (any_de_creacio 1855)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 7)
        (tematica "Paisatge")
        (dimensions 60900)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Bosc_de_Fontainebleau_Els_cacadors
        of Obres
        (any_de_creacio 1855)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 7)
        (tematica "Paisatge")
        (dimensions 10875)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    ;; Sala 7 - Paisatges Romàntics
    (Parc_de_Saint_Cloud_en_un_dia_festiu
        of Obres
        (any_de_creacio 1829)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 7)
        (tematica "Paisatge")
        (dimensions 1656)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Cabana_normanda_Vell_Trouville
        of Obres
        (any_de_creacio 1861)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 7)
        (tematica "Vida quotidiana")
        (dimensions 4988)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (La_plana_davant_dels_Pirineus
        of Obres
        (any_de_creacio 1861)
        (epoca "Edat Contemporània")
        (estil "Escola de Barbizon")
        (autor_quadre "Théodore Rousseau")
        (sala 7)
        (tematica "Paisatge")
        (dimensions 646.25)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    ;; Sala 8 - Paisatges Realistes i Impressionistes
    (Robles_junto_al_agua
        of Obres
        (any_de_creacio 1832)
        (epoca "Edat Contemporània")
        (estil "Realisme")
        (autor_quadre "Christian E.B.Morgenstern")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 7135.5)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Vista_del_puerto_de_rotterdam
        of Obres
        (any_de_creacio 1856)
        (epoca "Edat Contemporània")
        (estil "Realisme")
        (autor_quadre "Johan Barthold Jongkind")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 2408)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Atardecer_en_la_pradera
        of Obres
        (any_de_creacio 1870)
        (epoca "Edat Contemporània")
        (estil "Realisme")
        (autor_quadre "Albert Bierstadt")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 9999.9)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (El_bosque_de_Marly
        of Obres
        (any_de_creacio 1871)
        (epoca "Edat Contemporània")
        (estil "Impressionisme")
        (autor_quadre "Camille Pissarro")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 2475)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Jinete_arabe
        of Obres
        (any_de_creacio 1854)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Desconegut")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 2408)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    ;; Sala 9 - Obres de Josep Bernat Flaugier
    (Anunciacio
        of Obres
        (any_de_creacio 1800)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religiosa")
        (dimensions 12615)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Seguici_Nupcial_Amb_Himeneu
        of Obres
        (any_de_creacio 1803)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Mitològica")
        (dimensions 4017)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Mort_de_Sant_Josep_Oriol
        of Obres
        (any_de_creacio 1806)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religiosa")
        (dimensions 263.34)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Retrat_del_Rei_Josep_I
        of Obres
        (any_de_creacio 1809)
        (epoca "Edat Contemporània")
        (estil "Pintura a l'oli")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Retrat")
        (dimensions 13888)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Aparicio_de_la_Mare_de_Deu
        of Obres
        (any_de_creacio 1812)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religiosa")
        (dimensions 2928)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Dos_Frares_i_Grup_de_Gent
        of Obres
        (any_de_creacio 1812)
        (epoca "Edat Contemporània")
        (estil "Dibuix")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religiosa")
        (dimensions 690.8)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Sant_Joan_Baptista
        of Obres
        (any_de_creacio 1790)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religiosa")
        (dimensions 1168.75)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Sagrada_Familia
        of Obres
        (any_de_creacio 1812)
        (epoca "Edat Contemporània")
        (estil "Tinta")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religiosa")
        (dimensions 459.34)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    ;; Sala 10 - Art Modern Català
    (Autoretrat
        of Obres
        (any_de_creacio 1802)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Salvador Mayol")
        (sala 10)
        (tematica "Autoretrat")
        (dimensions 3220)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Un_Cafe_durant_Carnestoltes
        of Obres
        (any_de_creacio 1824)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Salvador Mayol")
        (sala 10)
        (tematica "Vida quotidiana")
        (dimensions 19608)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Masia_Blanca_de_Bunyola
        of Obres
        (any_de_creacio 1902)
        (epoca "Edat Contemporània")
        (estil "Modernisme")
        (autor_quadre "Santiago Rusiñol")
        (sala 10)
        (tematica "Paisatge")
        (dimensions 5376)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Maquina_de_Llaurar
        of Obres
        (any_de_creacio 1953)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Desconegut")
        (sala 10)
        (tematica "Conceptual")
        (dimensions 1280)
        (complexitat "Baixa")
        (rellevancia "Baixa")
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
    (printout t "                       Museu de l'SBC                      " crlf)
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
    (if (eq ?groneixementup 1) then
        (assert (estil "neoclassicisme"))
        (printout t "Has seleccionat: neoclassicisme" crlf)
    )
    (if (eq ?groneixementup 2) then
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
(defrule MAIN::interes "Pregunta quin interès té el visitant"
    (declare (salience 6))
    =>
    (printout t "Quin interès tens sobre l'exposat?" crlf)
    (printout t "1. Alt" crlf)
    (printout t "2. Mitjà" crlf)
    (printout t "3. Baix" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (interes "alt"))
        (printout t "Has seleccionat: Alt" crlf)
    )
    (if (eq ?grup 2) then
        (assert (interes "Mitjà"))
        (printout t "Has seleccionat: Mitjà" crlf)
    )
    (if (eq ?grup 3) then
        (assert (interes "Baix"))
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

;(any-factp ((?f grup)) (eq ?f:implied (create$ "Sol")))        --> mira si existeix el fact (grup "Sol")         NOMES LINEA DE COMANDES!!
;(any-factp ((?f grup)) (eq ?f:implied (create$ "Acompanyat"))) --> mira si existeix el fact (grup "Acompanyat")  NOMES LINEA DE COMANDES!!

(defrule bind-rooms
    ?sala1 <- (Sala (id 1))
    ?sala2 <- (Sala (id 2))
    =>
    (modify ?sala1 (connected-to ?sala2))
    (modify ?sala2 (connected-to ?sala1))
)

;;;     Clasificacció de Visitant individual     ;;;

;;      Ant      ;;

; ant -> Visita > 2h, Primer com, Interes (Alt) o Coneixement (Alt)
(defrule classificar-visitant-ant
    (grup "Sol")
    (frequencia-visites "Primer cop")
    (temps-visita ?temps&:(>= ?temps 2))  
    (or 
        (interés "alt")                  
        (coneixement "alt"))             
    =>
    (assert (tipus-visitant "Ant"))
)

;;      Butterfly      ;;

; butterfly -> Visita > 2h, Primer com o esporàdic, Interes (mitjà) i Coneixement (Alt o mitja)
(defrule classificar-visitant-butterfly
    (grup "Sol")
    (or
        (frequencia-visites "Primer cop")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(>= ?temps 2)) 
    (interés "mitjà")  
    (or
        (coneixement "Mitjà")                
        (coneixement "alt"))             
     =>
    (assert (tipus-visitant "Butterfly"))
)

;;      Grasshopper      ;;

; grasshopper -> Visita < 2h, freq o esporàdic, (Interes (mitjà) i Coneixement (baix)) o (Interes (baix) i Coneixement (mitjà))
(defrule classificar-visitant-grasshopper
    (grup "Sol")
    (or
        (frequencia-visites "Freqüent")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(< ?temps 2)) 
    (or
        (interés "Mitjà")
        (interés "Baix"))   
    (or
        (coneixement "Baix")
        (coneixement "Mitjà"))
    =>
    (assert (tipus-visitant "Grasshopper"))
)

;;      Fish      ;;

; fish -> Visita < 2h, freq o esporàdic, Interes (baix) i Coneixement (baix)
(defrule classificar-visitant-fish
    (grup "Sol")
    (or
        (frequencia-visites "Freqüent")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(< ?temps 2))  
    (interés "Baix")                  
    (coneixement "Baix")             
    =>
    (assert (tipus-visitant "Fish"))
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

; Rule to start the route
(defrule start-route
    (Visitant (visiting_style ?style))
    =>
    (printout t "Generating a route for a " ?style " visitor..." crlf)
    (assert (start-room 1))  ; Start in room 1
    (assert (end-room 1))    ; End in room 1
)