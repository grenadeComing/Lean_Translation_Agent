import Mathlib

/-- Rotation matrix in R^{2x2} by angle θ. -/
def rotation (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | 0, 0 => Real.cos θ
  | 0, 1 => -Real.sin θ
  | 1, 0 => Real.sin θ
  | 1, 1 => Real.cos θ

/-- Reflection across the horizontal (x-) axis in R^{2x2}. -/
def reflect_horizontal : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | 0, 0 => 1
  | 0, 1 => 0
  | 1, 0 => 0
  | 1, 1 => -1

/-- For the dihedral symmetry of a regular n-gon (n ≥ 3), let r be the rotation by 2π/n
    and h the reflection across the horizontal axis. Algebraically (as 2×2 real matrices)
    one has r * h * r = h. -/
lemma rhr_eq_h (n : ℕ) (hn : 3 ≤ n) :
  Matrix.mul (Matrix.mul (rotation (2 * Real.pi / n)) reflect_horizontal) (rotation (2 * Real.pi / n)) = reflect_horizontal := by sorry
