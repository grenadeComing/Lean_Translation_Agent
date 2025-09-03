import Mathlib

open Set

/-- A point p is a condensation point of E if every punctured neighborhood of p meets E in an uncountable set. -/
def is_condensation_point (E : Set ℝ) (p : ℝ) : Prop :=
  ∀ r : ℝ, 0 < r → ¬ ((E ∩ Ioo (p - r) (p + r)).Countable)

/-- If E ⊆ ℝ is uncountable, then there exists a point p at which E condenses. -/
theorem exists_condensation_point_of_uncountable {E : Set ℝ} (h : ¬ E.Countable) :
  ∃ p : ℝ, is_condensation_point E p := by
  sorry
