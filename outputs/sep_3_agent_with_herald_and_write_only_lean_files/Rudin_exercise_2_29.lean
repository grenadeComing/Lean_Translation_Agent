import Mathlib

/-!
# Rudin exercise 2.29

Statement: Every open set in ℝ is the union of an at most countable collection of disjoint segments.
-/

open Set

/-- Every open set in ℝ is the union of an at most countable collection of disjoint open intervals. -/
theorem open_set_union_countable_disjoint_intervals {U : Set ℝ} (hU : IsOpen U) :
  ∃ S : Set (Set ℝ),
    Countable S ∧
    (∀ I ∈ S, ∃ a b : ℝ, a < b ∧ I = Ioo a b) ∧
    (∀ I J, I ∈ S → J ∈ S → (I = J ∨ I ∩ J = ∅)) ∧
    U = ⋃₀ S := by sorry
