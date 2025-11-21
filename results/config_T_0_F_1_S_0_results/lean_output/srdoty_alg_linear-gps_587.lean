import Mathlib

open Matrix

noncomputable section

open scoped BigOperators

def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then 1
  else if i = 0 ∧ j = 1 then 0
  else if i = 1 ∧ j = 0 then 0
  else -1

def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then Real.cos φ
  else if i = 0 ∧ j = 1 then -Real.sin φ
  else if i = 1 ∧ j = 0 then Real.sin φ
  else Real.cos φ

def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then Real.cos (2 * θ)
  else if i = 0 ∧ j = 1 then Real.sin (2 * θ)
  else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
  else -Real.cos (2 * θ)

theorem h_theta_eq (θ : ℝ) : H θ = fun i j => (Finset.univ : Finset (Fin 2)).sum fun k => H0 i k * R (-2 * θ) k j := by sorry

end
