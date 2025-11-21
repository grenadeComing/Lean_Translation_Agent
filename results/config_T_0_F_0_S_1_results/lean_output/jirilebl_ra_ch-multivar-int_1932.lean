import Mathlib

open MeasureTheory Set

variable {n : ℕ}

/--
If X ⊆ ℝ^n is such that for every ε>0 there exists Y ⊇ X with m*(Y) ≤ ε (where m* is an outer
measure on ℝ^n), then X has outer measure zero: m*(X) = 0.
-/
theorem outer_measure_zero_of_arbitrarily_small_supersets
  (X : Set (Fin n → ℝ))
  (mstar : OuterMeasure (Fin n → ℝ))
  (h : ∀ ε : ENNReal, ε > 0 → ∃ Y : Set (Fin n → ℝ), X ⊆ Y ∧ mstar Y ≤ ε) :
  mstar X = 0 := by sorry