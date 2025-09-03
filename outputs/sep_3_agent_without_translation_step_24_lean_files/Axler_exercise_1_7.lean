import Mathlib

-- Example: a nonempty subset U of R^2 closed under scalar multiplication but not a subspace.

def U : Set (ℝ × ℝ) := { p : ℝ × ℝ | p.1 = 0 } ∪ { p : ℝ × ℝ | p.2 = 0 }

theorem Axler_exercise_1_7 :
  Set.Nonempty U ∧ (∀ (a : ℝ) (v : ℝ × ℝ), v ∈ U → a • v ∈ U) ∧ ¬ (∀ (x y : ℝ × ℝ), x ∈ U → y ∈ U → x + y ∈ U) := by
  sorry
