import Mathlib

open MeasureTheory Set

variable {n : ℕ}

/-- Suppose X ⊆ ℝ^n is such that for every ε > 0 there exists a set Y ⊇ X with μ(Y) ≤ ε, where μ is an outer measure on ℝ^n. Then X has outer measure zero. -/
theorem outer_measure_zero_of_approx {X : Set (Fin n → ℝ)} {μ : MeasureTheory.OuterMeasure (Fin n → ℝ)}
  (h : ∀ ε : ℝ, 0 < ε → ∃ Y : Set (Fin n → ℝ), X ⊆ Y ∧ μ Y ≤ ENNReal.ofReal ε) :
  μ X = 0 := by sorry
