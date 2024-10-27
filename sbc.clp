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

; (defmodule MAIN (export ?ALL))

(defclass Visitant
    (is-a USER)
    (pattern-match reactive)
    (multislot Mira_a
        (type STRING)
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

(deftemplate Obres
    (slot nom
        (type STRING))
    (slot any_de_creacio
        (type INTEGER))
    (slot epoca
        (type STRING))
    (slot estil
        (type STRING))
    (slot autor_quadre
        (type STRING))
    (slot sala
        (type INTEGER))
    (slot tematica
        (type STRING))
    (slot dimensions
        (type INTEGER))
    (slot complexitat
        (type STRING))
    (slot rellevancia
        (type STRING))
    (slot visitada
        (type SYMBOL)
        (allowed-symbols TRUE FALSE)
        (default FALSE))
)

(deftemplate contador
    (slot valor (type INTEGER))
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

(deftemplate Sala
    (slot id
        (type INTEGER))
    (multislot connected-to
        (type INTEGER))
)

(deftemplate Ruta
    (slot start-room
        (type INTEGER))
    (slot end-room
        (type INTEGER))
)

; INSTÀNCIES
; temàtica Història (7), Mitologia (8), Religió (21), Retrat (12), Paisatge (14), Altres (12)
; estil Renaixement (7), Barroc (27), Neoclassicisme (11), Romanticisme (11), Altres (15)
(deffacts instancies_obres
    ;; Sala 1 - Època Antiga i Medieval
    (Obres 
        (nom "Codi d'Hammurabi")
        (any_de_creacio -1792)
        (epoca "Antiga")
        (estil "Altres")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Història")
        (dimensions 17775)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Obres 
        (nom "Lamassu")
        (any_de_creacio -720)
        (epoca "Antiga")
        (estil "Altres")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Mitologia")
        (dimensions 180188)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Tique de Constantinoble")
        (any_de_creacio 649)
        (epoca "Medieval")
         (estil "Altres")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Mitologia")
        (dimensions 688)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Pintures Murals Conquesta Mallorca")
        (any_de_creacio 1288)
        (epoca "Medieval")
        (estil "Altres")
        (autor_quadre "Desconegut")
        (sala 1)
        (tematica "Història")
        (dimensions 6048)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "La crucifixió")
        (any_de_creacio 1320)
        (epoca "Medieval")
        (estil "Altres")
        (autor_quadre "Agnolo Gaddi")
        (sala 1)
        (tematica "Religió")
        (dimensions 594)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Sant Miquel 1450")
        (any_de_creacio 1450)
        (epoca "Medieval")
        (estil "Altres")
        (autor_quadre "Jaume Huguet")
        (sala 1)
        (tematica "Religió")
        (dimensions 34080)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (Obres
        (nom "Sant Miquel 1455")
        (any_de_creacio 1455)
        (epoca "Medieval")
        (estil "Altres")
        (autor_quadre "Jaume Huguet")
        (sala 1)
        (tematica "Religió")
        (dimensions 29318)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Sant Agustí")
        (any_de_creacio 1463)
        (epoca "Medieval")
        (estil "Altres")
        (autor_quadre "Jaume Huguet")
        (sala 1)
        (tematica "Religió")
        (dimensions 48250)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    ;; Sala 2 - Renaixement i Manierisme
    (Obres
        (nom "Davallament")
        (any_de_creacio 1475)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Desconegut")
        (sala 2)
        (tematica "Religió")
        (dimensions 1998)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Retaule de Sant Cebrià")
        (any_de_creacio 1475)
        (epoca "Edat Moderna")
        (estil "Altres")
        (autor_quadre "Jaume Huguet")
        (sala 2)
        (tematica "Religió")
        (dimensions 55357)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Mare de Déu de les Roques")
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
    (Obres
        (nom "Sant Gregori Papa")
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
    (Obres
        (nom "La Mona Lisa")
        (any_de_creacio 1519)
        (epoca "Edat Moderna")
        (estil "Renaixement")
        (autor_quadre "Leonardo da Vinci")
        (sala 2)
        (tematica "Retrat")
        (dimensions 424)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Obres
        (nom "Sant Jordi matant el drac")
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
    (Obres
        (nom "Les Noces de Canà")
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
    (Obres
        (nom "L'Anunciació")
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
    (Obres
        (nom "Arco de triunfo")
        (any_de_creacio 1607)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Domenichino")
        (sala 3)
        (tematica "Altres")
        (dimensions 4200)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Paisaje con Psique y Jupiter")
        (any_de_creacio 1610)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Pedro Pablo Rubens")
        (sala 3)
        (tematica "Mitologia")
        (dimensions 12255)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Cabeza de venado")
        (any_de_creacio 1626)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Diego Rodríguez de Silva y Velázquez")
        (sala 3)
        (tematica " Altres")
        (dimensions 3432)
        (complexitat "Baixa")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Sibila")
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
    (Obres
        (nom "La Vista y el Olfato")
        (any_de_creacio 1632)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Jan Brueghel 'el Vell'")
        (sala 3)
        (tematica "Altres")
        (dimensions 46464)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "El embarco de santa Paula Romana")
        (any_de_creacio 1639)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Claudio de Lorena")
        (sala 3)
        (tematica "Religió")
        (dimensions 30595)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "La Inmaculada de El Escorial")
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
    (Obres
        (nom "La puntaire")
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
    (Obres
        (nom "L'astrònom")
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
    (Obres
        (nom "Cofre de joies de Lluís XIV")
        (any_de_creacio 1677)
        (epoca "Edat Moderna")
         (estil "Altres")
        (autor_quadre "Jakob Blanck")
        (sala 4)
        (tematica "Altres")
        (dimensions 1197)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Eugenia Martínez Vallejo vestida de Menina")
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
    (Obres
        (nom "Paisaje con tormenta")
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
    (Obres
        (nom "El sacrificio de Isaac")
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
    (Obres
        (nom "La reina Zenobia ante el emperador Aureliano")
        (any_de_creacio 1717)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giambattista Tiepolo")
        (sala 4)
        (tematica "Història")
        (dimensions 125000)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Retrato del conde Fulvio Grati")
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
    (Obres
        (nom "Ofrena a Bacus")
        (any_de_creacio 1720)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Michel-Ange Houasse")
        (sala 4)
        (tematica "Mitologia")
        (dimensions 22500)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )

    ;; Sala 5 - Barroc i Neoclassicisme
    (Obres
        (nom "Retrato de Isabel Farnesio")
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
    (Obres
        (nom "La piscina probatica")
        (any_de_creacio 1724)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giovanni Paolo Panini")
        (sala 5)
        (tematica "Religió")
        (dimensions 7220)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "La educacion de Aquiles")
        (any_de_creacio 1727)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Sebastiano Conca")
        (sala 5)
        (tematica "Mitologia")
        (dimensions 4366)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Bodegon_con_gato_y_pescado")
        (any_de_creacio 1728)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Jean Baptiste Siméon Chardin")
        (sala 5)
        (tematica "Altres")
        (dimensions 5008)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Concierto Campestre")
        (any_de_creacio 1734)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Jean-Baptiste Pater")
        (sala 5)
        (tematica "Altres")
        (dimensions 3630)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Grupo_de_mendigos")
        (any_de_creacio 1737)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giacomo Cerutti")
        (sala 5)
        (tematica "Altres")
        (dimensions 12397)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Capricho con rio y puente")
        (any_de_creacio 1745)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Bernardo Bellotto")
        (sala 5)
        (tematica "Paisatge")
        (dimensions 3540)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "La expulsion de los mercaderes del templo")
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
    (Obres
        (nom "Frances condesa de Dartmouth")
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
    (Obres
        (nom "La apoteosis de Hercules")
        (any_de_creacio 1765)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Giandomenico Tiepolo")
        (sala 5)
        (tematica "Mitologia")
        (dimensions 8661)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "El patio de la aduana")
        (any_de_creacio 1775)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Nicolas-Bernard Lépicié")
        (sala 5)
        (tematica "Altres")
        (dimensions 16072)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Paisaje invernal con una familia de campesinos")
        (any_de_creacio 1780)
        (epoca "Edat Moderna")
        (estil "Barroc")
        (autor_quadre "Francesco Foschi")
        (sala 5)
        (tematica "Altres")
        (dimensions 2976)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )

    ;; Sala 6 - Neoclassicisme i Romanticisme
    (Obres
        (nom "La cita")
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
    (Obres
        (nom "Riña de gatos")
        (any_de_creacio 1786)
        (epoca "Edat Moderna")
         (estil "Altres")
        (autor_quadre "Francisco de Goya y Lucientes")
        (sala 6)
        (tematica " Altres")
        (dimensions 11104)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "La familia de Carlos IV")
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
    (Obres
        (nom "Cincinato abandona el arado para dictar leyes a Roma")
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
    (Obres
        (nom "La coronació de Napoleo")
        (any_de_creacio 1806)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Jacques-Louis David")
        (sala 6)
        (tematica "Història")
        (dimensions 607659)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (Obres
        (nom "El Rai de la Medusa")
        (any_de_creacio 1818)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Théodore Géricault")
        (sala 6)
        (tematica "Història")
        (dimensions 351556)
        (complexitat "Alta")
        (rellevancia "Alta")
    )
    (Obres
        (nom "La Llibertat guiant el poble")
        (any_de_creacio 1830)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Eugène Delacroix")
        (sala 6)
        (tematica "Història")
        (dimensions 84500)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Obres
        (nom "Amalia de Llano y Dotres, condesa de Vilches")
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
    (Obres
        (nom "Calma matinal interior del bosc")
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
    (Obres
        (nom "Crepuscle")
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
    (Obres
        (nom "Inundacions a Saint Cloud")
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
    (Obres
        (nom "Bosc de Fontainebleau Els cacadors")
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
    (Obres
        (nom "Parc de Saint Cloud en un dia festiu")
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
    (Obres
        (nom "Cabana normanda Vell Trouville")
        (any_de_creacio 1861)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Paul Huet")
        (sala 7)
        (tematica "Altres")
        (dimensions 4988)
        (complexitat "Mitjana")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "La plana davant dels Pirineus")
        (any_de_creacio 1861)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Théodore Rousseau")
        (sala 7)
        (tematica "Paisatge")
        (dimensions 646)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    ;; Sala 8 - Paisatges Realistes i Impressionistes
    (Obres
        (nom "Robles junto al agua")
        (any_de_creacio 1832)
        (epoca "Edat Contemporània")
         (estil "Altres")
        (autor_quadre "Christian E.B.Morgenstern")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 7135)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Vista del puerto de Rotterdam")
        (any_de_creacio 1856)
        (epoca "Edat Contemporània")
         (estil "Altres")
        (autor_quadre "Johan Barthold Jongkind")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 2408)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Atardecer en la pradera")
        (any_de_creacio 1870)
        (epoca "Edat Contemporània")
        (estil "Altres")
        (autor_quadre "Albert Bierstadt")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 10000)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "El bosque de Marly")
        (any_de_creacio 1871)
        (epoca "Edat Contemporània")
        (estil "Altres")
        (autor_quadre "Camille Pissarro")
        (sala 8)
        (tematica "Paisatge")
        (dimensions 2475)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Jinete árabe")
        (any_de_creacio 1854)
        (epoca "Edat Contemporània")
        (estil "Romanticisme")
        (autor_quadre "Desconegut")
        (sala 8)
        (tematica "Altres")
        (dimensions 2408)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )

    ;; Sala 9 - Obres de Josep Bernat Flaugier
    (Obres
        (nom "Anunciació")
        (any_de_creacio 1800)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religió")
        (dimensions 12615)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Seguici Nupcial Amb Himeneu")
        (any_de_creacio 1803)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Mitologia")
        (dimensions 4017)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Mort de Sant Josep Oriol")
        (any_de_creacio 1806)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religió")
        (dimensions 263)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Retrat del Rei Josep I")
        (any_de_creacio 1809)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Retrat")
        (dimensions 13888)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Aparició de la Mare de Déu")
        (any_de_creacio 1812)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religió")
        (dimensions 2928)
        (complexitat "Alta")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Dos Frares i Grup de Gent")
        (any_de_creacio 1812)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religió")
        (dimensions 691)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Sant Joan Baptista")
        (any_de_creacio 1790)
        (epoca "Edat Contemporània")
        (estil "Neoclassicisme")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religió")
        (dimensions 1168)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Sagrada Família")
        (any_de_creacio 1812)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Josep Bernat Flaugier")
        (sala 9)
        (tematica "Religió")
        (dimensions 459)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )

    ;; Sala 10 - Art Modern Català
    (Obres
        (nom "Autoretrat")
        (any_de_creacio 1802)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Salvador Mayol")
        (sala 10)
        (tematica "Retrat")
        (dimensions 3220)
        (complexitat "Alta")
        (rellevancia "Mitjana")
    )
    (Obres
        (nom "Un Cafè durant Carnestoltes")
        (any_de_creacio 1824)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Salvador Mayol")
        (sala 10)
        (tematica "Altres")
        (dimensions 19608)
        (complexitat "Mitjana")
        (rellevancia "Baixa")
    )
    (Obres
        (nom "Masia Blanca de Bunyola")
        (any_de_creacio 1902)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Santiago Rusiñol")
        (sala 10)
        (tematica "Paisatge")
        (dimensions 5376)
        (complexitat "Mitjana")
        (rellevancia "Alta")
    )
    (Obres
        (nom "Màquina de Llaurar")
        (any_de_creacio 1953)
        (epoca "Edat Contemporània")
        (estil "Art Modern")
        (autor_quadre "Desconegut")
        (sala 10)
        (tematica "Altres")
        (dimensions 1280)
        (complexitat "Baixa")
        (rellevancia "Baixa")
    )
)

(deffacts instancies_sales
    (Sala (id 0) (connected-to 1))
    (Sala (id 1) (connected-to 2))
    (Sala (id 2) (connected-to 3))
    (Sala (id 3) (connected-to 4))
    (Sala (id 4) (connected-to 5))
    (Sala (id 5) (connected-to 6 7))
    (Sala (id 6) (connected-to 5))
    (Sala (id 7) (connected-to 8))
    (Sala (id 8) (connected-to 9))
    (Sala (id 9) (connected-to 10))
    (Sala (id 10) (connected-to 1))
)

;;; REGLES
;(defmodule PreguntesGenerals)
; Funció de benvinguda i inici del programa
(defrule initialRule "Regla principal"
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

(defrule preguntarGrup "Pregunta sobre si el visitant ve sol o acompanyat"
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

; Pregunta sobre l'època preferida amb seleccions múltiples
(defrule preguntarEpoca "Pregunta sobre l'època preferida"
    (declare (salience 20))
    =>
    (printout t "Quina és la teva època artística preferida?" crlf)
    (printout t "1. Antiga" crlf)
    (printout t "2. Medieval" crlf)
    (printout t "3. Edat Moderna" crlf)
    (printout t "4. Edat Contemporània" crlf)
    ; (printout t "5. No tinc una preferència en quant a època artística" crlf)
    (printout t "Selecciona una o més opcions (per ex: 1 3 o 24): " crlf)
    (bind ?opc (readline))  ; Llegim la cadena d'opcions

    ; Verifiquem cada opció utilitzant str-index
    (if (integerp (str-index "1" ?opc)) then
        (assert (preferencia-epoca "Antiga"))
        (printout t "Has seleccionat: Antiga" crlf)
    )
    (if (integerp (str-index "2" ?opc)) then
        (assert (preferencia-epoca "Medieval"))
        (printout t "Has seleccionat: Medieval" crlf)
    )
    (if (integerp (str-index "3" ?opc)) then
        (assert (preferencia-epoca "Edat Moderna"))
        (printout t "Has seleccionat: Barroc" crlf)
    )
    (if (integerp (str-index "4" ?opc)) then
        (assert (preferencia-epoca "Edat Contemporània"))
        (printout t "Has seleccionat: Edat Contemporània" crlf)
    )
    ; (if (integerp (str-index "5" ?opc)) then
    ;     (assert (preferencia-epoca "ND")) ; ND = Not Defined
    ;     (printout t "Has seleccionat: No tinc una preferència en quant a època artística" crlf)
    ; )
)
; Segona pregunta sobre la durada de la visita
(defrule preguntarDuracio "Pregunta sobre la durada de la visita"
    (declare (salience 19))
    =>
    (printout t "Quant temps tens disponible per la visita? (en hores): " crlf)
    (bind ?temps (read))
    (assert (temps-visita ?temps))
    (printout t "Temps disponible: " ?temps " hores" crlf)
)

; Pregunta sobre la freqüència de visites al museu amb opcions numèriques
(defrule preguntarFreqVisita "Pregunta sobre la freqüència de visita al museu"
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

(defrule preguntarTematica "Pregunta sobre la temàtica preferida"
    (declare (salience 16))
    =>
    (printout t "Quina és la teva temàtica preferida?" crlf)
    (printout t "1. Religió" crlf)
    (printout t "2. Mitologia" crlf)
    (printout t "3. Paisatge" crlf)
    (printout t "4. Retrat" crlf)
    (printout t "5. Història" crlf)
    (printout t "6. Altres" crlf)
    (printout t "7. No tinc una preferència en quant a temàtica" crlf)
    (printout t "Selecciona una o més opcions (per ex: 1 3 o 2 4): " crlf)
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
        (assert (preferencia-tematica "Retrat"))
        (printout t "Has seleccionat: Retrat" crlf)
    )
    (if (integerp (str-index "5" ?opc)) then
        (assert (preferencia-tematica "Història"))
        (printout t "Has seleccionat: Història" crlf)
    )
    (if (integerp (str-index "6" ?opc)) then
        (assert (preferencia-tematica "Altres"))
        (printout t "Has seleccionat: Altres" crlf)
    )
    (if (integerp (str-index "7" ?opc)) then
        (assert (preferencia-tematica "ND")) ; ND = No Definida
        (printout t "Has seleccionat: No tinc una preferència en quant a temàtica" crlf)
    )
)

(defrule estil "Pregunta quin estil prefereix el visitant"
    (declare (salience 15))
    =>
    (printout t "Quin estil prefereixes?" crlf)
    (printout t "1. Renaixement" crlf)
    (printout t "2. Barroc" crlf)
    (printout t "3. Neoclassicisme" crlf)
    (printout t "4. Romanticisme" crlf)
    (printout t "5. Art Modern" crlf)
    (printout t "6. Altres" crlf)
    (printout t "Selecciona una o més opcions: " crlf)
    (bind ?opc (readline))

    (if (integerp (str-index "1" ?opc)) then
        (assert (estil "Renaixement"))
        (printout t "Has seleccionat: Renaixement" crlf)
    )
    (if (integerp (str-index "2" ?opc)) then
        (assert (estil "Barroc"))
        (printout t "Has seleccionat: Barroc" crlf)
    )
    (if (integerp (str-index "3" ?opc)) then
        (assert (estil "Neoclassicisme"))
        (printout t "Has seleccionat: Neoclassicisme" crlf)
    )
    (if (integerp (str-index "4" ?opc)) then
        (assert (estil "Romanticisme"))
        (printout t "Has seleccionat: Romanticisme" crlf)
    )
    (if (integerp (str-index "5" ?opc)) then
        (assert (estil "Art Modern"))
        (printout t "Has seleccionat: Art Modern" crlf)
    )
    (if (integerp (str-index "6" ?opc)) then
        (assert (estil "Altres"))
        (printout t "Has seleccionat: Altres" crlf)
    )
)

(defrule author "Pregunta quin autor prefereix el visitant"
    (declare (salience 1))
    =>
    (printout t "Quin és el teu autor preferit: " crlf)
    (bind ?autor (readline))  ; readline per llegir nom i cognom(s)
    (assert (autor-preferit ?autor))
    (printout t "Autor preferit: " ?autor crlf)
)

(defrule c_art "Pregunta quin coneixement d'art té el visitant"
    (declare (salience 14))
    =>
    (printout t "Quin nivell de coneixement d'art tens?" crlf)
    (printout t "1. Alt" crlf)
    (printout t "2. Mitjà" crlf)
    (printout t "3. Baix" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (coneixement "Alt"))
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

(defrule interes "Pregunta quin interès té el visitant"
    (declare (salience 6))
    =>
    (printout t "Com d'interessat/da estàs per l'exposició?" crlf)
    (printout t "1. Molt" crlf)
    (printout t "2. Normal" crlf)
    (printout t "3. Poc" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (interes "Alt"))
        (printout t "Has seleccionat: Molt" crlf)
    )
    (if (eq ?grup 2) then
        (assert (interes "Mitjà"))
        (printout t "Has seleccionat: Normal" crlf)
    )
    (if (eq ?grup 3) then
        (assert (interes "Baix"))
        (printout t "Has seleccionat: Poc" crlf)
    )
)

(defrule tipgrup "Pregunta el tipus de grup"
    (declare (salience 6))
    (grup "Acompanyat")
    =>
    (printout t "Amb qui vens?" crlf)
    (printout t "1. amics" crlf)
    (printout t "2. família" crlf)
    (printout t "3. classe" crlf)
    (printout t "4. grup turístic" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (tipus-grup "amics"))
        (assert (tipus-visitant "Grasshopper"))
        (printout t "Has seleccionat: amics" crlf)
    )
    (if (eq ?grup 2) then
        (assert (tipus-grup "familia"))
        (assert (tipus-visitant "Grasshopper"))
        (printout t "Has seleccionat: familia" crlf)
    )
    (if (eq ?grup 3) then
        (assert (tipus-grup "classe"))
        (assert (tipus-visitant "Ant"))
        (printout t "Has seleccionat: classe" crlf)
    )
    (if (eq ?grup 4) then
        (assert (tipus-grup "grup turístic"))
        (assert (tipus-visitant "Ant"))
        (printout t "Has seleccionat: grup turístic" crlf)
    )
)

;(any-factp ((?f grup)) (eq ?f:implied (create$ "Sol")))        --> mira si existeix el fact (grup "Sol")         NOMES LINEA DE COMANDES!!
;(any-factp ((?f grup)) (eq ?f:implied (create$ "Acompanyat"))) --> mira si existeix el fact (grup "Acompanyat")  NOMES LINEA DE COMANDES!!

;;;     Clasificacció de Visitant individual     ;;;

;;      Ant      ;;

; ant -> Visita > 2h, Primer cop, Interès (Alt) o Coneixement (Alt)
(defrule classificar-visitant-ant
    ; (declare (salience 0))
    (grup "Sol")
    (frequencia-visites "Primer cop")
    (temps-visita ?temps&:(>= ?temps 2))  
    (or 
        (interes "Alt")                  
        (coneixement "Alt"))             
    =>
    (assert (tipus-visitant "Ant"))
)

;;      Butterfly      ;;

; butterfly -> Visita > 2h, Primer cop o esporàdic, Interes (Mitjà) i Coneixement (Alt o Mitjà)
(defrule classificar-visitant-butterfly
    ; (declare (salience 0))
    (grup "Sol")
    (or
        (frequencia-visites "Primer cop")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(>= ?temps 2)) 
    (interes "mitjà")  
    (or
        (coneixement "Mitjà")                
        (coneixement "Alt"))             
     =>
    (assert (tipus-visitant "Butterfly"))
)

;;      Grasshopper      ;;

; grasshopper -> Visita < 2h, freq o esporàdic, (Interès (mitjà) i Coneixement (baix)) o (Interes (baix) i Coneixement (mitjà))
(defrule classificar-visitant-grasshopper
    ; (declare (salience 0))
    (grup "Sol")
    (or
        (frequencia-visites "Freqüent")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(< ?temps 2)) 
    (or
        (interes "Mitjà")
        (interes "Baix"))   
    (or
        (coneixement "Baix")
        (coneixement "Mitjà"))
    =>
    (assert (tipus-visitant "Grasshopper"))
)

;;      Fish      ;;

; fish -> Visita < 2h, freq o esporàdic, Interès (baix) i Coneixement (baix)
(defrule classificar-visitant-fish
    ; (declare (salience 0))
    (grup "Sol")
    (or
        (frequencia-visites "Freqüent")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(< ?temps 2))  
    (interes "Baix")                  
    (coneixement "Baix")             
    =>
    (assert (tipus-visitant "Fish"))
)

;;;     REGLES DE MATCHING DE CUADRES       ;;;
;;     RESTRICCIO MAXIMA      ;;
(defrule matchquadres_restrictiva1
    (declare (salience 0))

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    (test (eq ?esv ?es))
    (test (eq ?au ?auq))
    (test (eq ?t ?ot))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: 0" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva1
    (declare (salience 0))
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf True))
)



;;     RESTRICCIO MAXIMA -1     ;;
(defrule matchquadres_restrictiva2
    (declare (salience -1))

    (nocuadsuf True)

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))
    
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    (test (eq ?esv ?es))
    (test (eq ?au ?auq))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: -1" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva2
    (declare (salience -1))

    (nocuadsuf True)
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf2 True))
)


;;     RESTRICCIO MAXIMA -2     ;;
(defrule matchquadres_restrictiva3
    (declare (salience -2))

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))

    (nocuadsuf2 True)
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    (test (eq ?esv ?es))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: -2" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva3
    (declare (salience -2))

    (nocuadsuf2 True)
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf3 True))
)


;;     RESTRICCIO MAXIMA -3     ;;
(defrule matchquadres_restrictiva4
    (declare (salience -3))

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))

    (nocuadsuf3 True)
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: -3" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva4
    (declare (salience -3))

    (nocuadsuf3 True)
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf4 True))
)


; Regla per inicialitzar la Ruta segons el tipus de visitant
(defrule iniciar-ruta
    (tipus-visitant ?style)
    =>
    (printout t "Generant ruta per a un visitant de tipus: " ?style crlf)
    (assert (Ruta (start-room 1) (end-room 10)))  ; Suposem una sala final predeterminada
    (assert (current-room 1))
)

(defrule anar-a-la-sala
    ?sala <- (Sala (id ?current) (connected-to $?next-rooms))
    ?sala-actual <- (current-room ?current)
    (Ruta (end-room ?end-room))
    (test (neq ?current ?end-room))
    =>
    (if (= (length$ ?next-rooms) 1)
        then
        ; Si només hi ha una opció, la seleccionem automàticament
        (bind ?next (nth$ 1 ?next-rooms))
        else
        ; Si hi ha múltiples opcions, demanem a l'usuari que triï
        (printout t "La sala actual és la sala " ?current crlf)
        (printout t "Les sales següents són: " ?next-rooms crlf)
        (printout t "Selecciona la sala a la que vols anar: " crlf)
        (bind ?next (read))
        (while (not (member$ ?next ?next-rooms))
            (printout t "Sala no vàlida. Si us plau, tria una de les opcions disponibles: " ?next-rooms crlf)
            (bind ?next (read))
        )
    )

    (retract ?sala-actual)
    (assert (current-room ?next))
    (assert (nova-sala-entrada ?next))
    (printout t "Movent-se a la sala: " ?next crlf)
)

(defrule processar-obres-sala
    ?nova-sala <- (nova-sala-entrada ?sala-id)
    =>
    (retract ?nova-sala)
    (assert (processar-obres ?sala-id))
)

(defrule obres-vistes-de-sala
    ?proc <- (processar-obres ?sala-id)
    ?obra <- (Obres (nom ?nom) 
                    (epoca ?ep) 
                    (estil ?es) 
                    (sala ?sala-id)
                    (visitada FALSE))
    =>
    (retract ?proc)
    
    ; Comprovem si l'època i l'estil coincideixen
    (modify ?obra (visitada TRUE))
    (printout t "L'obra '" ?nom "' a la sala " ?sala-id " ha estat marcada com a visitada. " crlf)
    
    (assert (processar-obres ?sala-id))
    (printout t "Generat fet (processar-obres " ?sala-id ")" crlf)
)

(defrule verificar-obres-sala
    (processar-obres ?sala-id)
    (Obres (sala ?sala-id) (nom ?nom) (epoca ?ep) (estil ?es) (tematica ?tem) (visitada ?vis))
    =>
    (printout t "Obra a la sala " ?sala-id ": " ?nom 
              " (Època: " ?ep ", Estil: " ?es ", Temàtica: " ?tem ", Visitada: " ?vis ")" crlf)
)

(defrule finalitzar-visita
    ?current-room <- (current-room ?end-room)
    (Ruta (end-room ?end-room))
    =>
    (assert (processar-obres ?end-room))  ; Processem les obres de l'última sala
    (printout t "Ruta completa. El visitant ha finalitzat la visita a la sala " ?end-room crlf)
    (assert (visita-acabada))
)

; Print quines obres s'han visitat a cada sala
(defrule imprimir-obres-visitades
   (visita-acabada)
   =>
   (printout t "Obres visitades:" crlf)
   (do-for-all-facts ((?sala Sala))
      if (neq ?sala:id 0) then
        (printout t "Sala " ?sala:id ":" crlf)
        (do-for-all-facts ((?obra Obres))
            (if (and (eq ?obra:sala ?sala:id)
                    (eq ?obra:visitada TRUE))
                then
                (printout t " - " ?obra:nom crlf)
            )
        )
   )
)
