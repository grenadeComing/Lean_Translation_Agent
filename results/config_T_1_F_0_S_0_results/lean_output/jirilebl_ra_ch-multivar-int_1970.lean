import Mathlib

open MeasureTheory

/-- Let U ⊂ ℝ^n be open and f : U → ℝ continuous. Let G = { (x, f x) : x ∈ U } be the graph of f.
    Then G has measure zero in ℝ^{n+1}. -/
theorem graph_has_measure_zero {n : ℕ} (U : Set (Fin n → ℝ)) (hU : IsOpen U)
  (f : (Fin n → ℝ) → ℝ) (hf : ContinuousOn f U) :
  volume { p : (Fin n → ℝ) × ℝ | p.2 = f p.1 ∧ p.1 ∈ U } = 0 := by sorry