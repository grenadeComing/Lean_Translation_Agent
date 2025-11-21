import Mathlib

open Set MeasureTheory

/-- Let U ⊆ ℝ^n be open and f : U → ℝ continuous. Then the graph of f has Lebesgue measure zero in ℝ^{n+1}. -/
theorem graph_of_continuous_on_has_measure_zero {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : IsOpen U) (hf : ContinuousOn f U) :
  MeasureTheory.volume (Set.image (fun x => (x, f x)) U) = 0 := by sorry