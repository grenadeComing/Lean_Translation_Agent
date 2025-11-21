import Mathlib

open Matrix

/-- The reflection matrix H0 = [[1,0],[0,-1]] -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then 1 else 0 else if j = 0 then 0 else -1

/-- Rotation matrix R φ = [[cos φ, -sin φ], [sin φ, cos φ]] -/
def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then Real.cos φ else -Real.sin φ else if j = 0 then Real.sin φ else Real.cos φ

/-- The family of matrices H θ = [[cos 2θ, sin 2θ], [sin 2θ, -cos 2θ]] -/
def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then Real.cos (2 * θ) else Real.sin (2 * θ) else if j = 0 then Real.sin (2 * θ) else -Real.cos (2 * θ)

theorem H_eq_H0_mul_R (θ : ℝ) : H θ = H0.mul (R (-2 * θ)) := by sorry
