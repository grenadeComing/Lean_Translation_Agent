import Mathlib

/-- A point p is a condensation point of E if every neighborhood of p contains uncountably many points of E. -/
def IsCondensationPoint (p : ℝ) (E : Set ℝ) : Prop :=
  ∀ r : ℝ, 0 < r → ¬ (E ∩ Ioo (p - r) (p + r)).Countable

/-- Pugh, Ex. 2.126: If E ⊆ ℝ is uncountable, then there exists a point p ∈ ℝ at which E condenses. -/
theorem Pugh_exercise_2_126 (E : Set ℝ) (h : ¬ E.Countable) : ∃ p : ℝ, IsCondensationPoint p E := by sorry
