import Mathlib

/-- Rotation matrix R(θ) in O(2) as a 2×2 real matrix. -/
noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 then
      if j = 0 then Real.cos θ else -Real.sin θ
    else
      if j = 0 then Real.sin θ else Real.cos θ

/-- Reflection matrix H(θ): reflection across the line through the origin making angle θ with the x-axis. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  let θ2 := (2 : ℝ) * θ
  fun i j =>
    if i = 0 then
      if j = 0 then Real.cos θ2 else Real.sin θ2
    else
      if j = 0 then Real.sin θ2 else -Real.cos θ2

/-- The orthogonal group O(2) as a set of 2×2 real matrices. -/
def O2 : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | M * M.transpose = 1 }

/-- O(2) = { R θ : θ ∈ ℝ } ∪ { H θ : θ ∈ ℝ }. -/
theorem o2_eq_union : O2 = (Set.range R) ∪ (Set.range H) := by sorry
