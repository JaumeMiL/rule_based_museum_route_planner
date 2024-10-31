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
