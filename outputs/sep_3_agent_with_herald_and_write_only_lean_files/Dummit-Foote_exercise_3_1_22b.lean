import Mathlib

open Set

/-- The intersection of an arbitrary nonempty collection of normal subgroups
    of a group is a normal subgroup.  Here we state closure under multiplication,
    identity, inverses, and conjugation for the indexed intersection of the
    underlying sets of the subgroups.  A full proof is omitted (:= by sorry).
-/
theorem Dummit_Foote_exercise_3_1_22b {G : Type*} [Group G] {ι : Sort*} (S : ι → Subgroup G)
  (hne : Nonempty ι) (hnormal : ∀ (i : ι) (g h : G), h ∈ (S i) → g * h * g⁻¹ ∈ (S i)) :
  (∀ a b, a ∈ (⋂ i, (S i : Set G)) → b ∈ (⋂ i, (S i : Set G)) → a * b ∈ (⋂ i, (S i : Set G)))
  ∧ (1 ∈ (⋂ i, (S i : Set G)))
  ∧ (∀ x, x ∈ (⋂ i, (S i : Set G)) → x⁻¹ ∈ (⋂ i, (S i : Set G)))
  ∧ (∀ g x, x ∈ (⋂ i, (S i : Set G)) → g * x * g⁻¹ ∈ (⋂ i, (S i : Set G))) := by sorry
