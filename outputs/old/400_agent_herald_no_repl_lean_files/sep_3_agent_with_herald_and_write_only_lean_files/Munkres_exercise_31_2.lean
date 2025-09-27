import Mathlib
open Set Filter Topology TopologicalSpace

/-- Show that if $X$ is normal, every pair of disjoint closed sets have neighborhoods whose closures are disjoint. -/
theorem exists_disjoint_nhds_of_closed (X : Type*) [TopologicalSpace X] [NormalSpace X] {A B : Set X}
    (hA : IsClosed A) (hB : IsClosed B) (hd : Disjoint A B) :
    ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ A ⊆ U ∧ B ⊆ V ∧ Disjoint (closure U) (closure V) := by sorry
