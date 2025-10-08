import Mathlib

open Set MeasureTheory

/-- Let U ⊆ ℝ^n be open and f : U → ℝ continuous. The graph G = {(x, f x) : x ∈ U} has Lebesgue measure zero in ℝ^{n+1}. -/
theorem graph_of_continuous_has_measure_zero {n : ℕ} {U : Set (Fin n → ℝ)} (hU : IsOpen U)
  {f : (Fin n → ℝ) → ℝ} (hf : ContinuousOn f U) :
  MeasureTheory.volume ({p : (Fin n → ℝ) × ℝ | p.1 ∈ U ∧ p.2 = f p.1}) = 0 := by sorry
