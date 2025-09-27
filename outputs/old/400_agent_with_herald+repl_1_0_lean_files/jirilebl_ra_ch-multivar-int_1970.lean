import Mathlib

open Set

variable {n : ℕ}

/-- Let U ⊆ ℝ^n be open and f : U → ℝ continuous. The graph G = { (x, f x) | x ∈ U } has Lebesgue measure zero in ℝ^{n+1}. -/
theorem graph_has_measure_zero (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (hU : IsOpen U) (hf : ContinuousOn f U) :
  MeasureTheory.isNull (MeasureTheory.volume : Measure ((Fin n → ℝ) × ℝ))
    (Set.image (fun x => (x, f x)) U) := by sorry
