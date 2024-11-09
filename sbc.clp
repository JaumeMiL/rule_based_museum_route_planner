;;; ---------------------------------------------------------
;;; ontologia_practica.clp
;;; Correccions realitzades per solucionar problemes de "matching"
;;; ---------------------------------------------------------

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
    (slot restriccio
        (type INTEGER)
        (default 0))
)

(deftemplate comptador
    (slot valor (type INTEGER))
)

(deftemplate Sala
    (slot id
        (type INTEGER))
    (multislot connected-to
        (type INTEGER))
    (slot visitada
        (type SYMBOL)
        (allowed-symbols TRUE FALSE)
        (default FALSE))
)

(deftemplate Ruta
    (slot start-room
        (type INTEGER))
    (slot end-room
        (type INTEGER))
)

; INSTÀNCIES (omitides per petició)

; Aquí carregaries les instàncies d'obres i sales
(deffacts instancies_obres
    (comptador (valor 0))
    (mean_t 120) 
    (mean_d_t 1000)
    (numObres 76)

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
        (tematica "Altres")
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
        (tematica "Altres")
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
        (nom "Bosc de Fontainebleau Els caçadors")
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
    (Sala (id 0))
    (Sala (id 1) (connected-to 2))
    (Sala (id 2) (connected-to 3))
    (Sala (id 3) (connected-to 4))
    (Sala (id 4) (connected-to 5))
    (Sala (id 5) (connected-to 6 7))
    (Sala (id 6) (connected-to 5))
    (Sala (id 7) (connected-to 8))
    (Sala (id 8) (connected-to 9))
    (Sala (id 9) (connected-to 10))
    (Sala (id 10) (connected-to 0))
)

;(deffacts instancies_sales
;    (Sala (id 0))
;    (Sala (id 1) (connected-to 2 5))
;    (Sala (id 2) (connected-to 3 5))
;    (Sala (id 3) (connected-to 2 4 5))
;    (Sala (id 4) (connected-to 3 5))
;    (Sala (id 5) (connected-to 2 3 4 6))
;    (Sala (id 6) (connected-to 7))
;    (Sala (id 7) (connected-to 8 10))
;    (Sala (id 8) (connected-to 9))
;    (Sala (id 9) (connected-to 10))
;    (Sala (id 10) (connected-to 0))
;)

;;; REGLES

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
    (declare (salience 98))
    =>
    (printout t "Quina és la teva època artística preferida?" crlf)
    (printout t "1. Antiga" crlf)
    (printout t "2. Medieval" crlf)
    (printout t "3. Edat Moderna" crlf)
    (printout t "4. Edat Contemporània" crlf)
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
        (printout t "Has seleccionat: Edat Moderna" crlf)
    )
    (if (integerp (str-index "4" ?opc)) then
        (assert (preferencia-epoca "Edat Contemporània"))
        (printout t "Has seleccionat: Edat Contemporània" crlf)
    )
)

; Segona pregunta sobre la durada de la visita
(defrule preguntarDuracio "Pregunta sobre la durada de la visita"
    (declare (salience 97))
    =>
    (printout t "Quant temps tens disponible per la visita? (en hores): " crlf)
    (bind ?temps (read))
    (assert (temps-visita ?temps))
    (printout t "Temps disponible: " ?temps " hores" crlf)
)

; Pregunta sobre la freqüència de visites al museu amb opcions numèriques
(defrule preguntarFreqVisita "Pregunta sobre la freqüència de visita al museu"
    (declare (salience 96))
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
    (declare (salience 95))
    =>
    (printout t "Quina és la teva temàtica preferida?" crlf)
    (printout t "1. Religió" crlf)
    (printout t "2. Mitologia" crlf)
    (printout t "3. Paisatge" crlf)
    (printout t "4. Retrat" crlf)
    (printout t "5. Història" crlf)
    (printout t "6. Altres" crlf)
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
)

(defrule estil "Pregunta quin estil prefereix el visitant"
    (declare (salience 94))
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
    (declare (salience 93))
    =>
    (printout t "Quin és el teu autor preferit: " crlf)
    (bind ?autor (readline))  ; readline per llegir nom i cognom(s)
    (assert (autor-preferit ?autor))
    (printout t "Autor preferit: " ?autor crlf)
)

(defrule c_art "Pregunta quin coneixement d'art té el visitant"
    (declare (salience 92))
    =>
    (printout t "Quin nivell de coneixement d'art tens?" crlf)
    (printout t "1. Alt" crlf)
    (printout t "2. Mitjà" crlf)
    (printout t "3. Baix" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?nivell (read))
    (if (eq ?nivell 1) then
        (assert (coneixement "Alt"))
        (printout t "Has seleccionat: Alt" crlf)
    )
    (if (eq ?nivell 2) then
        (assert (coneixement "Mitjà"))
        (printout t "Has seleccionat: Mitjà" crlf)
    )
    (if (eq ?nivell 3) then
        (assert (coneixement "Baix"))
        (printout t "Has seleccionat: Baix" crlf)
    )
)

(defrule interes "Pregunta quin interès té el visitant"
    (declare (salience 91))
    =>
    (printout t "Com d'interessat/da estàs per l'exposició?" crlf)
    (printout t "1. Molt" crlf)
    (printout t "2. Normal" crlf)
    (printout t "3. Poc" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?interes (read))
    (if (eq ?interes 1) then
        (assert (interes "Alt"))
        (printout t "Has seleccionat: Molt" crlf)
    )
    (if (eq ?interes 2) then
        (assert (interes "Mitjà"))
        (printout t "Has seleccionat: Normal" crlf)
    )
    (if (eq ?interes 3) then
        (assert (interes "Baix"))
        (printout t "Has seleccionat: Poc" crlf)
    )
)

(defrule tipgrup "Pregunta el tipus de grup"
    (declare (salience 90))
    (grup "Acompanyat")
    =>
    (printout t "Amb qui vens?" crlf)
    (printout t "1. Amb els amics" crlf)
    (printout t "2. Amb la família" crlf)
    (printout t "3. Amb la classe" crlf)
    (printout t "4. Amb un grup turístic" crlf)
    (printout t "Selecciona una opció: " crlf)
    (bind ?grup (read))
    (if (eq ?grup 1) then
        (assert (tipus-grup "amics"))
        (assert (tipus-visitant "Butterfly"))
        (assert (weight 0))
        (printout t "Has seleccionat: amics" crlf)
    )
    (if (eq ?grup 2) then
        (assert (tipus-grup "familia"))
        (assert (tipus-visitant "Grasshopper"))
        (assert (weight 0))
        (printout t "Has seleccionat: família" crlf)
    )
    (if (eq ?grup 3) then
        (assert (tipus-grup "classe"))
        (assert (tipus-visitant "Ant"))
        (assert (weight 15))
        (printout t "Has seleccionat: classe" crlf)
    )
    (if (eq ?grup 4) then
        (assert (tipus-grup "grup turístic"))
        (assert (tipus-visitant "Grasshopper"))
        (assert (weight 10))
        (printout t "Has seleccionat: grup turístic" crlf)
    )
)

;;;     Classificació de Visitant individual     ;;;

;;      Ant      ;;

; ant -> Visita > 2h, Primer cop, Interès (Alt) o Coneixement (Alt)
(defrule classificar-visitant-ant
    (declare (salience 89))
    (grup "Sol")
    (frequencia-visites "Primer cop")
    (temps-visita ?temps&:(>= ?temps 2))  
    (or 
        (interes "Alt")                  
        (coneixement "Alt"))             
    =>
    (assert (tipus-visitant "Ant"))
    (assert (weight 15))
)

;;      Butterfly      ;;

; butterfly -> Visita > 2h, Primer cop o esporàdic, Interès (Mitjà) i Coneixement (Alt o Mitjà)
(defrule classificar-visitant-butterfly
    (declare (salience 89))
    (grup "Sol")
    (or
        (frequencia-visites "Primer cop")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(>= ?temps 2)) 
    (interes "Mitjà")  
    (or
        (coneixement "Mitjà")                
        (coneixement "Alt"))             
     =>
    (assert (tipus-visitant "Butterfly"))
    (assert (weight 10))
)

;;      Grasshopper      ;;

; grasshopper -> Visita < 2h, freq o esporàdic, (Interès (Mitjà) i Coneixement (Baix)) o (Interès (Baix) i Coneixement (Mitjà))
(defrule classificar-visitant-grasshopper
    (declare (salience 89))
    (grup "Sol")
    (or
        (frequencia-visites "Freqüent")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(< ?temps 2)) 
    (or
        (and (interes "Mitjà") (coneixement "Baix"))
        (and (interes "Baix") (coneixement "Mitjà")))
    =>
    (assert (tipus-visitant "Grasshopper"))
    (assert (weight 0))
)

;;      Fish      ;;

; fish -> Visita < 2h, freq o esporàdic, Interès (Baix) i Coneixement (Baix)
(defrule classificar-visitant-fish
    (declare (salience 89))
    (grup "Sol")
    (or
        (frequencia-visites "Freqüent")
        (frequencia-visites "Esporàdic"))
    (temps-visita ?temps&:(< ?temps 2))  
    (interes "Baix")                  
    (coneixement "Baix")             
    =>
    (assert (tipus-visitant "Fish"))
    (assert (weight -5))
)

; per defecte -> Butterflies perquè són un 50%
(defrule classificar-visitant-butterfly-default
    (declare (salience 88))
    (grup "Sol")
    (not (tipus-visitant "Ant"))
    (not (tipus-visitant "Butterfly"))
    (not (tipus-visitant "Fish"))
    (not (tipus-visitant "Grasshopper"))
    =>
    (assert (tipus-visitant "Butterfly"))
    (assert (weight 10))
)

;;;     REGLES DE MATCHING DE QUADRES       ;;;
(defrule matchquadres_restrictiva1
    (declare (salience 87))
    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom)
                    (epoca ?ep)
                    (estil ?es)
                    (autor_quadre ?auq)
                    (tematica ?ot)
                    (rellevancia ?r)
                    (sala ?s)
                    (visitada FALSE))

    ?fetaut <- (autor-preferit ?au)
    ; Coincideixen l'època, l'estil, el tema i l'autor
    (and
        (preferencia-epoca ?e&:(eq ?e ?ep))
        (estil ?esv&:(eq ?esv ?es))
        (preferencia-tematica ?t&:(eq ?t ?ot))
        (test (eq ?au ?auq)))
    ; Comptador
    ?cont <- (comptador (valor ?c))
    =>
    ;(printout t ?nom " ha fet match! Nivell de Restricció: 1" crlf)
    (modify ?cont (valor (+ ?c 1)))
    (modify ?obra (visitada TRUE) (restriccio 1))
    (assert (matchquadres1 True))
)

; Regles per disminuir el nivell de restricció si no s'han trobat prou obres
(defrule NoCuadrosSuficientes_restrictiva1
    (declare (salience 86))
    ?cont <- (comptador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    (test (< ?c (/ (- (* ?tv 3600) ?mdt) (+ ?mt ?w))))
    =>
    (assert (nocuadsuf True))
    (assert (matchquadres1 True))
)

(defrule matchquadres_restrictiva2
    (declare (salience 85))
    ; Parametres de Control
    (matchquadres1 True)
    (nocuadsuf True)

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom)
                    (epoca ?ep)
                    (estil ?es)
                    (tematica ?ot)
                    (rellevancia ?r)
                    (sala ?s)
                    (visitada FALSE))

    ; Coincideixen l'època, l'estil i el tema
    (and
        (preferencia-epoca ?e&:(eq ?e ?ep))
        (estil ?esv&:(eq ?esv ?es))
        (preferencia-tematica ?t&:(eq ?t ?ot)))
    ; Comptador
    ?cont <- (comptador (valor ?c))
    =>
    ;(printout t ?nom " ha fet match! Nivell de Restricció: 2" crlf)
    (modify ?cont (valor (+ ?c 1)))
    (modify ?obra (restriccio 2) (visitada TRUE))
    (assert (matchquadres2 True))
)

(defrule NoCuadrosSuficientes_restrictiva2
    (declare (salience 84))
    ; Parametres de Control
    (nocuadsuf True)

    ?cont <- (comptador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    (test (< ?c (/ (- (* ?tv 3600) ?mdt) (+ ?mt ?w))))
    =>
    (assert (nocuadsuf2 True))
    (assert (matchquadres2 True))
)

(defrule matchquadres_restrictiva3
    (declare (salience 83))
    ; Parametres de Control
    (matchquadres2 True)
    (nocuadsuf2 True)

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom)
                    (epoca ?ep)
                    (estil ?es)
                    (rellevancia ?r)
                    (sala ?s)
                    (visitada FALSE))
    ; Coincideixen l'època i l'estil
    (and
        (preferencia-epoca ?e&:(eq ?e ?ep))
        (estil ?esv&:(eq ?esv ?es)))
    ; Comptador
    ?cont <- (comptador (valor ?c))
    =>
    ;(printout t ?nom " ha fet match! Nivell de Restricció: 3" crlf)
    (modify ?cont (valor (+ ?c 1)))
    (modify ?obra (restriccio 3) (visitada TRUE))
    (assert (matchquadres3 True))
)

(defrule NoCuadrosSuficientes_restrictiva3
    (declare (salience 82))
    ; Parametres de Control
    (nocuadsuf2 True)

    ?cont <- (comptador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    (test (< ?c (/ (- (* ?tv 3600) ?mdt) (+ ?mt ?w))))
    =>
    (assert (nocuadsuf3 True))
    (assert (matchquadres3 True))
)

(defrule matchquadres_restrictiva4
    (declare (salience 81))
    ; Parametres de Control
    (matchquadres3 True)
    (nocuadsuf3 True)
    
    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom)
                    (epoca ?ep)
                    (rellevancia ?r)
                    (sala ?s)
                    (visitada FALSE))
    ; Coincideix l'època
    (preferencia-epoca ?e&:(eq ?e ?ep))
    ; Comptador
    ?cont <- (comptador (valor ?c))
    =>
    ;(printout t ?nom " ha fet match! Nivell de Restricció: 4" crlf)
    (modify ?cont (valor (+ ?c 1)))
    (modify ?obra (restriccio 4) (visitada TRUE))
)

; NO PODEM INCIAR LA RUTA FINS QUE NO HAGUEM ACABAT AMB LES REGLES DE MATCHING

; Regla per inicialitzar la Ruta segons el tipus de visitant
(defrule iniciar-ruta
    (declare (salience 80))
    (tipus-visitant ?style)
    =>
    (printout t "Generant ruta per a un visitant de tipus: " ?style crlf)
    (assert (Ruta (start-room 1) (end-room 0)))  ; Afegim una sala amb id 0 (sink) que no té cap obra
    (assert (current-room 1))
)

(defrule anar-a-la-sala
    (declare (salience 79))
    ?sala <- (Sala (id ?current) (connected-to $?next-rooms) (visitada FALSE))
    ?sala-actual <- (current-room ?current)
    (Ruta (end-room ?end-room))
    (test (neq ?current ?end-room))
    =>
    ; Marquem la sala actual com visitada
    (modify ?sala (visitada TRUE))
    
    ; Filtrem les sales no visitades
    (bind ?sales-disponibles (create$))
    (foreach ?next ?next-rooms
        (do-for-fact ((?s Sala)) (eq ?s:id ?next)
            (if (eq ?s:visitada FALSE)
                then
                (bind ?sales-disponibles (create$ ?sales-disponibles ?next))
            )
        )
    )
    ; Si no hi ha sales disponibles, busquem qualsevol sala no visitada
    (if (= (length$ ?sales-disponibles) 0)
        then
        (bind ?sales-no-visitades (create$))
        (do-for-all-facts ((?s Sala)) (and (eq ?s:visitada FALSE) (neq ?s:id 0))
            (bind ?sales-no-visitades (create$ ?sales-no-visitades ?s:id))
        )
        
        (if (> (length$ ?sales-no-visitades) 0)
            then
            (bind ?next (nth$ 1 ?sales-no-visitades))
            (retract ?sala-actual)
            (assert (current-room ?next))
            (printout t "No hi ha connexions directes disponibles. Saltant a la sala: " ?next crlf)
            else
            (printout t "No hi ha més sales per visitar." crlf)
            (assert (current-room ?end-room))
        )
        else
        ; Comportament normal quan hi ha sales disponibles
        (if (= (length$ ?sales-disponibles) 1)
            then
            (bind ?next (nth$ 1 ?sales-disponibles))
            else
            (printout t "La sala actual és la sala " ?current crlf)
            (printout t "Les sales disponibles són: " ?sales-disponibles crlf)
            (printout t "Selecciona la sala a la que vols anar: ")
            (bind ?next (read))
            (while (not (member$ ?next ?sales-disponibles)) 
                (printout t "Sala no vàlida. Si us plau, tria una de les opcions disponibles: " ?sales-disponibles crlf)
                (bind ?next (read))
            )
        )
        (retract ?sala-actual)
        (assert (current-room ?next))
        ; (printout t "Movent-se a la sala: " ?next crlf)
    )
) 

(defrule finalitzar-visita
    (declare (salience 78))
    ?current-room <- (current-room ?end-room)
    (Ruta (end-room ?end-room))
    ?sala <- (Sala (id ?end-room))
    =>
    ; delete end room from Sala
    (retract ?current-room)
    (retract ?sala)
    (assert (visita-acabada))
)

; Print quines obres s'han visitat a cada sala
(defrule imprimir-obres-visitades
    (declare (salience 77))
    (visita-acabada)
    ?comp <- (comptador (valor ?total))
    =>
    (printout t "..........................................................." crlf)
    (printout t "Segons les teves preferències, et recomanarem les següents obres:" crlf)
    (printout t "..........................................................." crlf)

    ; Restricció 1 (Imprescindibles)
    (if (any-factp ((?o Obres)) (and (eq ?o:restriccio 1) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE)))))
        then
        (printout t "Les imprescindibles:" crlf)
        (do-for-all-facts ((?o Obres)) (and (eq ?o:restriccio 1) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE))))
            (printout t "Sala " ?o:sala ": " ?o:nom crlf)
        )
        (printout t crlf)
    )

    ; Restricció 2 (Molt recomanables)
    (if (any-factp ((?o Obres)) (and (eq ?o:restriccio 2) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE)))))
        then
        (printout t "Molt recomanables:" crlf)
        (do-for-all-facts ((?o Obres)) (and (eq ?o:restriccio 2) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE))))
            (printout t "Sala " ?o:sala ": " ?o:nom crlf)
        )
        (printout t crlf)
    )

    ; Restricció 3 (Recomanables)
    (if (any-factp ((?o Obres)) (and (eq ?o:restriccio 3) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE)))))
        then
        (printout t "Recomanables:" crlf)
        (do-for-all-facts ((?o Obres)) (and (eq ?o:restriccio 3) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE))))
            (printout t "Sala " ?o:sala ": " ?o:nom crlf)
        )
        (printout t crlf)
    )

    ; Restricció 4 (Opcionals)
    (if (any-factp ((?o Obres)) (and (eq ?o:restriccio 4) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE)))))
        then
        (printout t "Opcionals:" crlf)
        (do-for-all-facts ((?o Obres)) (and (eq ?o:restriccio 4) (any-factp ((?s Sala)) (and (eq ?s:id ?o:sala) (eq ?s:visitada TRUE))))
            (printout t "Sala " ?o:sala ": " ?o:nom crlf)
        )
        (printout t crlf)
    )

    ; Imprimim estadístiques finals
    (bind ?r1 0)
    (bind ?r2 0)
    (bind ?r3 0)
    (bind ?r4 0)

    (do-for-all-facts ((?o Obres)) (> ?o:restriccio 0)
        (if (eq ?o:restriccio 1) then (bind ?r1 (+ ?r1 1)))
        (if (eq ?o:restriccio 2) then (bind ?r2 (+ ?r2 1)))
        (if (eq ?o:restriccio 3) then (bind ?r3 (+ ?r3 1)))
        (if (eq ?o:restriccio 4) then (bind ?r4 (+ ?r4 1)))
    )

    (printout t "..........................................................." crlf)
    (printout t "Resum de la visita:" crlf)
    (printout t "Total d'obres recomanades: " ?total crlf)
    (if (> ?r1 0) then (printout t "- Imprescindibles: " ?r1 crlf))
    (if (> ?r2 0) then (printout t "- Molt recomanables: " ?r2 crlf))
    (if (> ?r3 0) then (printout t "- Recomanables: " ?r3 crlf))
    (if (> ?r4 0) then (printout t "- Opcionals: " ?r4 crlf))
    (printout t "..........................................................." crlf)

    ; Ruta completa
    (printout t "Aquí tens la ruta proposada completa ordenada per sales:" crlf)
    
    (do-for-all-facts ((?sala Sala))
        (if (eq ?sala:visitada TRUE)
            then
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

    ; Acomiadament
    (printout t "..........................................................." crlf)
    (printout t "Gràcies per visitar el Museu GIA-SBC" crlf)
    (printout t "Esperem que gaudeixis de la teva visita!" crlf)
)