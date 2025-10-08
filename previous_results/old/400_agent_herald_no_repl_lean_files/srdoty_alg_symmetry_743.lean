import Mathlib

open Matrix Real

/-- Rotation by 2π/n represented as a 2×2 rotation matrix. -/
def rotation_matrix (n : ℕ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    match (i, j) with
    | (0, 0) => Real.cos (2 * Real.pi / (n : ℝ))
    | (0, 1) => -Real.sin (2 * Real.pi / (n : ℝ))
    | (1, 0) => Real.sin (2 * Real.pi / (n : ℝ))
    | (1, 1) => Real.cos (2 * Real.pi / (n : ℝ))

/-- Reflection across the horizontal axis as a 2×2 matrix. -/
def reflect_h : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    match (i, j) with
    | (0, 0) => 1
    | (0, 1) => 0
    | (1, 0) => 0
    | (1, 1) => -1

/-- For the dihedral symmetry of a regular n-gon (n ≥ 3), the rotation r and the
    horizontal reflection h satisfy r * h * r = h (as 2×2 matrices). -/
theorem rhr_eq_h (n : ℕ) (hn : 3 ≤ n) :
  rotation_matrix n * reflect_h * rotation_matrix n = reflect_h := by sorry
