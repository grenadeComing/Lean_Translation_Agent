import Mathlib

open MeasureTheory
open Set

/-- Let U ⊆ ℝ^n be open and f : (Fin n → ℝ) → ℝ continuous on U. Let G = {(x, f x) | x ∈ U} be the graph of f. Then G has Lebesgue measure zero in ℝ^{n+1}. -/
theorem graph_has_measure_zero {n : ℕ} {f : (Fin n → ℝ) → ℝ} {U : Set (Fin n → ℝ)}
  (hU : IsOpen U) (hf : ContinuousOn f U) :
  (MeasureTheory.MeasureSpace.volume : Measure ((Fin n → ℝ) × ℝ)) (Function.graph f ∩ (U ×ˢ (univ : Set ℝ))) = 0 := by sorry
