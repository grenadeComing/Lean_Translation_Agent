import Mathlib
open scoped Classical
open Fintype

/-- Prove that if H has finite index n then there is a normal subgroup K of G with K ≤ H and |G: K| ≤ n! Save it to: Dummit-Foote_exercise_4_2_8.lean -/
lemma exists_normal_subgroup_le_index_le_factorial_extracted {G : Type*} [Group G] (H : Subgroup G) : H.FiniteIndex → ∃ K ≤ H, (K ≤ H) ∧ (Subgroup.normalCore H).Index ≤ Nat.factorial H.index := by sorry
