import Mathlib

open Set

/-- The collection T_infty = { U | X \ U is infinite or empty or all of X } -/
def T_infty (X : Set ℕ) : Set (Set ℕ) := { U | (X \ U).Infinite ∨ (X \ U) = ∅ ∨ (X \ U) = X }

/-- Even and odd subsets of ℕ. -/
def evens : Set ℕ := { n | n % 2 = 0 }
def odds  : Set ℕ := { n | n % 2 = 1 }

/-- Counterexample: for X = ℕ, odds ∈ T_infty and (evens \ {0}) ∈ T_infty, but their union is ℕ \ {0}, whose complement {0} is neither infinite, empty, nor all of ℕ; hence T_infty is not closed under unions. -/
theorem Munkres_exercise_13_3b :
  ∃ (A B : Set ℕ), A ∈ T_infty (Set.univ : Set ℕ) ∧ B ∈ T_infty (Set.univ : Set ℕ) ∧ (A ∪ B) ∉ T_infty (Set.univ : Set ℕ) := by sorry
