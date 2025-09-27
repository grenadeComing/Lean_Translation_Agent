import Mathlib

/-- Rotation matrix R_θ in SO(2) -/
def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    if i.val = 0 then
      if j.val = 0 then Real.cos θ else -Real.sin θ
    else
      if j.val = 0 then Real.sin θ else Real.cos θ

/-- Reflection matrix H_θ across the line through the origin at angle θ -/
def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    if i.val = 0 then
      if j.val = 0 then Real.cos (2 * θ) else Real.sin (2 * θ)
    else
      if j.val = 0 then Real.sin (2 * θ) else -Real.cos (2 * θ)

/-- The orthogonal group O(2) as 2x2 real matrices A with Aᵀ A = I -/
def O2 : Set (Matrix (Fin 2) (Fin 2) ℝ) := { A | A.transpose * A = 1 }

/-- Decomposition of O(2) into rotations and reflections. -/
theorem O2_eq_range_R_union_range_H : O2 = (Set.range R) ∪ (Set.range H) := by
  sorry
