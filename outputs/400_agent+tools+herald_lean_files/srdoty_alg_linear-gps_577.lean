import Mathlib

open Matrix

/-- Reflection across the x-axis. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then (1 : ℝ) else 0 else if j = 0 then 0 else (-1 : ℝ)

/-- A 2×2 matrix is orthogonal iff Aᵀ * A = I. -/
def is_O2 (A : Matrix (Fin 2) (Fin 2) ℝ) : Prop :=
  Matrix.transpose A * A = (1 : Matrix (Fin 2) (Fin 2) ℝ)

/-- A 2×2 matrix is special orthogonal iff it is orthogonal and has determinant 1. -/
def is_SO2 (A : Matrix (Fin 2) (Fin 2) ℝ) : Prop :=
  Matrix.transpose A * A = (1 : Matrix (Fin 2) (Fin 2) ℝ) ∧ Matrix.det A = (1 : ℝ)

/-- For any improper orthogonal 2×2 matrix H (i.e., Hᵀ H = I and det H = -1), the products
    H0 * H and H * H0 both lie in SO(2). -/
theorem improper_reflection_products_in_SO2 (H : Matrix (Fin 2) (Fin 2) ℝ)
  (hO : is_O2 H) (hdet : Matrix.det H = (-1 : ℝ)) :
  is_SO2 (H0 * H) ∧ is_SO2 (H * H0) := by sorry
