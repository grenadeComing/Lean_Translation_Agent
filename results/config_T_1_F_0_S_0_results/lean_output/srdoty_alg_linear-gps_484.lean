import Mathlib

/-- The rotation matrix R θ in 2D. -/
def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 then
      if j = 0 then Real.cos θ else -Real.sin θ
    else
      if j = 0 then Real.sin θ else Real.cos θ

/-- Predicate for special orthogonal 2×2 matrices. -/
def IsSpecialOrthogonal (A : Matrix (Fin 2) (Fin 2) ℝ) : Prop :=
  Matrix.det A = 1 ∧ Matrix.transpose A ⬝ A = 1

theorem range_rotation_eq_SO2 : Set.range R = { A | IsSpecialOrthogonal A } := by sorry
