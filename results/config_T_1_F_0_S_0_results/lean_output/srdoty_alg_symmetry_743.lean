import Mathlib

open Matrix

/-- Rotation matrix by angle 2π / n acting on R^2, represented as a 2×2 real matrix. -/
def rotation_matrix (n : ℕ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | Fin.zero, Fin.zero => Real.cos (2 * Real.pi / (n : ℝ))
  | Fin.zero, Fin.one  => -Real.sin (2 * Real.pi / (n : ℝ))
  | Fin.one,  Fin.zero => Real.sin (2 * Real.pi / (n : ℝ))
  | Fin.one,  Fin.one  => Real.cos (2 * Real.pi / (n : ℝ))

/-- Reflection across the horizontal axis (x-axis) as a 2×2 real matrix. -/
def horizontal_reflection : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | Fin.zero, Fin.zero => 1
  | Fin.zero, Fin.one  => 0
  | Fin.one,  Fin.zero => 0
  | Fin.one,  Fin.one  => -1

/-- For a regular n-gon (n ≥ 3), let r be the rotation by 2π/n and h the horizontal reflection. Algebraically (as matrices) r * h * r = h. -/
lemma r_mul_h_mul_r_eq_h (n : ℕ) (hn : 3 ≤ n) :
  rotation_matrix n ⬝ horizontal_reflection ⬝ rotation_matrix n = horizontal_reflection := by sorry