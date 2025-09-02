import Mathlib

/-- Dummit and Foote, Ex. 1.1.15:
For a group G and elements a1 ... an,
  (a1 * a2 * ... * an)⁻¹ = an⁻¹ * ... * a1⁻¹.
This is stated here in the list formulation: for any list l of elements of G,
  (l.prod)⁻¹ = (l.reverse.map (·⁻¹)).prod
-/

theorem Dummit_Foote_exercise_1_1_15 {G : Type _} [Group G] (l : List G) : l.prod⁻¹ = (l.reverse.map (·⁻¹)).prod := by sorry
