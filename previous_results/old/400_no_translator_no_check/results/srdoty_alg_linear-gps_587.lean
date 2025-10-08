import Mathlib

open Real

noncomputable def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then (1 : ℝ)
  else if i = 0 ∧ j = 1 then (0 : ℝ)
  else if i = 1 ∧ j = 0 then (0 : ℝ)
  else (-1 : ℝ)

noncomputable def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then Real.cos φ
  else if i = 0 ∧ j = 1 then -Real.sin φ
  else if i = 1 ∧ j = 0 then Real.sin φ
  else Real.cos φ

noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then Real.cos (2 * θ)
  else if i = 0 ∧ j = 1 then Real.sin (2 * θ)
  else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
  else -Real.cos (2 * θ)

theorem H_eq (θ : ℝ) : H θ = H0 * R (-2 * θ) := by sorry
