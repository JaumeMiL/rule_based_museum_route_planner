# Rule-Based Dialogue System for Museum Route Recommendation project 🏛️✨

**Enhancing Visitor Experiences Through Tailored Museum Recommendations**

## Overview 📑

This project implements a rule-based system to recommend personalized museum routes for visitors. By considering visitor preferences, available time, and artistic interests, the system ensures an optimized and enjoyable museum experience. Built using CLIPS, the project leverages a knowledge-based approach to adapt recommendations dynamically to different visitor profiles.

## Key Features 🛠️

- **Visitor Profiling**:
  - Classifies visitors based on time availability, artistic knowledge, and preferences (e.g., themes, styles, and periods).
  - Supports individual and group dynamics with tailored routes for families, tourists, and other categories.
- **Museum Data Integration**:
  - Incorporates a dataset of 76 artworks from renowned museums like the MNAC, Prado, Louvre, and Thyssen.
  - Distributes artworks across 10 themed museum halls to align with historical and stylistic movements.
- **Dynamic Route Generation**:
  - Uses matching and stopping rules to recommend artworks aligned with visitor preferences.
  - Prioritizes artworks based on their relevance (e.g., "Essential," "Highly Recommended") and dynamically adjusts the route length.
- **Flexibility and Scalability**:
  - Adapts to different levels of visitor engagement, from quick tours to detailed explorations.
  - Scalable to larger datasets and museums with more complex layouts.

## Project Structure 📂

1. **Ontology Design**:
   - Defined entities such as Visitors, Artworks, and Rooms, establishing relationships like "preferences" and "connections."
   - Included attributes like style, theme, artist, and historical relevance for tailored recommendations.
2. **Rule Design and Implementation**:
   - Rules for visitor classification based on preferences and time constraints.
   - Matching and stopping rules to select appropriate artworks and determine route length.
   - Route planning logic to navigate the museum layout.
3. **Experiments and Results**:
   - Tested the system with various visitor profiles, evaluating its ability to adapt to preferences, group types, and available time.
   - Analyzed outcomes using metrics like route length, artwork relevance, and alignment with preferences.

## Execution 🚀

1. Ensure you have CLIPS installed on your system.
2. Load the `main.clp` file into the CLIPS environment.
3. Start the program and follow the interactive prompts to define visitor preferences.
4. View the recommended route and artwork details for a personalized museum visit.

## Key Results 🔍

- **Personalized Routes**:
  - Successfully generated tailored routes for different visitor profiles (e.g., solo visitors, families, tourists).
  - Adjusted recommendations based on time constraints and artistic preferences.
- **Scalability**:
  - Demonstrated the system's ability to adapt to larger museums and datasets.
- **Visitor Satisfaction**:
  - Provided balanced routes with essential and optional artworks, enhancing visitor engagement.

## Conclusion 📝

This project highlights the potential of rule-based systems for enhancing cultural experiences. By offering tailored routes and dynamic recommendations, the system bridges the gap between vast museum collections and individual visitor interests, ensuring an optimized and enjoyable experience.

**Developed by**: Ramon Andreu, Nils Duran, Jaume Mora, Dani López
