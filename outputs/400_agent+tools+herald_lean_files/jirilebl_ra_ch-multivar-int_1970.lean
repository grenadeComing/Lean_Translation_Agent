import Mathlib

open MeasureTheory Set

variable {n : ℕ}

theorem graph_has_measure_zero (U : Set (Fin n → ℝ)) (hU : IsOpen U) (f : (Fin n → ℝ) → ℝ)
  (hf : ContinuousOn f U) :
  MeasureTheory.MeasureSpace.volume ({ x : (Fin n → ℝ) × ℝ | x.1 ∈ U ∧ x.2 = f x.1 }) = 0 := by sorry
