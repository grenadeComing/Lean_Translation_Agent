import Mathlib

open Set

/-- Rudin exercise 2.29: Every open set U in ℝ is the union of an at most countable collection
of disjoint open intervals. Here we state a version: there exists a sequence of pairwise
disjoint open sets whose union is U. -/
theorem Rudin_exercise_2_29 {U : Set ℝ} (hU : IsOpen U) :
  ∃ f : ℕ → Set ℝ, (∀ n, IsOpen (f n)) ∧ (∀ i j, i ≠ j → (f i ∩ f j) = ∅) ∧ (U = ⋃ n, f n) := by sorry
