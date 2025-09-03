import Mathlib

variable {G : Type _} [Group G] [TopologicalSpace G] [TopologicalGroup G]

/-- Let G be a topological group; let C be the component of G containing the identity element e.
    Show that C is a normal subgroup of G. -/
def Munkres_exercise_25_9 : Prop :=
  let C : Set G := connected_component (1 : G)
  (∀ x y, x ∈ C → y ∈ C → x * y ∈ C) ∧ (∀ x, x ∈ C → x⁻¹ ∈ C) ∧ (∀ g h, h ∈ C → g * h * g ⁻¹ ∈ C) := by sorry
