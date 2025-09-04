import Mathlib

open MeasureTheory Topology Set

theorem graph_of_continuous_has_measure_zero {n : ℕ} (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (hU : IsOpen U) (hf : ContinuousOn f U) :
  MeasureTheory.volume ({p : (Fin n → ℝ) × ℝ | p.1 ∈ U ∧ p.2 = f p.1} : Set ((Fin n → ℝ) × ℝ)) = 0 := by sorry
