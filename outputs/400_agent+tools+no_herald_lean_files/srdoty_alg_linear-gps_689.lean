import Mathlib

open Matrix

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then Real.cos θ
  else if i = 0 ∧ j = 1 then -Real.sin θ
  else if i = 1 ∧ j = 0 then Real.sin θ
  else Real.cos θ

theorem rotation_in_SO2 (θ : ℝ) : (R θ).transpose * R θ = 1 ∧ det (R θ) = 1 := by
  -- proof omitted
  sorry
