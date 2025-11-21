import Mathlib

open Finset

theorem operator_norm_of_dot {n : ℕ} (b : Fin n → ℝ) (B : (Fin n → ℝ) →L[ℝ] ℝ)
  (h : ∀ x : Fin n → ℝ, B x = (univ.sum fun i => b i * x i)) :
  ContinuousLinearMap.opNorm B = Real.sqrt (univ.sum fun i => (b i) ^ 2) := by sorry
