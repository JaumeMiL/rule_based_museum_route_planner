import networkx as nx
import matplotlib.pyplot as plt

# Creem el graf dirigit
G = nx.DiGraph()

# Definim les connexions de les sales
instancies_sales = [
    (1, [2, 5]),
    (2, [3, 5]),
    (3, [2, 4, 5]),
    (4, [3, 5]),
    (5, [2, 3, 4, 6]),
    (6, [7]),
    (7, [8, 10]),
    (8, [9]),
    (9, [10]),
    (10, []),
]

# Afegim les sales i les connexions al graf
for sala, connexions in instancies_sales:
    for connexio in connexions:
        G.add_edge(sala, connexio)

# Definim el layout amb les sales 0 i 6 directament a sobre i a sota de la resta
pos = {
    1: (1, 1),
    2: (3, 1),
    3: (3, -1),
    4: (1, -1),
    5: (2, 0),
    6: (1.25, 0),  # Sala 6 lleugerament per sobre
    7: (0.5, 0),
    8: (0.5, -1),
    9: (-0.5, -1),
    10: (-0.5, 0),
}

# Etiquetes personalitzades per afegir "Sala" abans de cada número
labels = {i: f"Sala {i}" for i in G.nodes()}

# Dibuixem el graf amb les configuracions especificades
plt.figure(figsize=(12, 3))
nx.draw(
    G,
    pos,
    with_labels=True,
    labels=labels,  # Etiquetes afegides aquí
    node_size=800,
    node_color="white",
    edgecolors="black",
    font_size=6,
    font_weight="bold",
    arrowstyle="->",
    arrowsize=20,
)
# Afegim marc quadrat per als nodes
nx.draw_networkx_nodes(G, pos, node_shape="s", node_size=800, node_color="white", edgecolors="black")

plt.title("Ruta entre Sales amb 'Sala' abans de cada número")
plt.axis("off")  # Eliminem els eixos per a una visualització més neta
plt.show()
