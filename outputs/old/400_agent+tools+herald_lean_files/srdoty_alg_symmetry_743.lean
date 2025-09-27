import Mathlib

/-!
Dihedral group matrix relation
We represent the rotation r by a 2x2 rotation matrix by angle (2 * pi / n)
and the reflection h by reflection across the x-axis. We show the matrix
relation r * h * r = h as a Lean statement ending with := by sorry.
-/

open Matrix

noncomputable section

/-- Rotation by angle theta as a 2x2 real matrix -/
def rotation_matrix (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![Real.cos θ, -Real.sin θ; Real.sin θ, Real.cos θ]

/-- Reflection across the x-axis as a 2x2 real matrix -/
def reflection_x : Matrix (Fin 2) (Fin 2) ℝ :=
  !![1, 0; 0, -1]

/-- The main statement: for r = rotation (2*pi/n) and h = reflect_x, we have r * h * r = h. -/
theorem dihedral_rhr_eq_h (n : ℕ) (hn : n ≥ 3) :
  let r := rotation_matrix (2 * Real.pi / (n : ℝ))
  let h := reflection_x
  r * h * r = h := by sorry

end
