import Mathlib

/-- If H is a nontrivial normal subgroup of the solvable group G then there is a nontrivial
subgroup A of H with A ⊲ G and A abelian. We express nontriviality as the existence of an
element ≠ 1, normality by closure under conjugation, and abelian by commutativity of elements
when coerced to G. -/
theorem Dummit_Foote_exercise_3_4_11 {G : Type*} [Group G] [IsSolvable G] (H : Subgroup G)
  (H_nontrivial : ∃ h : G, h ∈ H ∧ h ≠ 1)
  (H_normal : ∀ (g h : G), h ∈ H → g * h * g⁻¹ ∈ H) :
  ∃ (A : Subgroup G),
    (∀ a : A, (a : G) ∈ H) ∧ -- A ≤ H
    (∃ a : A, (a : G) ≠ 1) ∧ -- A nontrivial
    (∀ g : G, ∀ a : A, g * (a : G) * g⁻¹ ∈ A) ∧ -- A normal in G
    (∀ (a b : A), (a : G) * (b : G) = (b : G) * (a : G)) := by sorry
