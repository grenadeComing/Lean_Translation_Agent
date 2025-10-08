import Mathlib

open Matrix Set

/-- Rotation matrix R_θ in 2D. -/
noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 then
      if j = 0 then Real.cos θ else -Real.sin θ
    else
      if j = 0 then Real.sin θ else Real.cos θ

/-- Reflection across the line through the origin making angle θ with the x-axis. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  let u0 := Real.cos θ
  let u1 := Real.sin θ
  fun i j => 2 * (if i = 0 then u0 else u1) * (if j = 0 then u0 else u1) - (if i = j then 1 else 0 : ℝ)

/-- Description of O(2) as rotations and reflections. -/
theorem O2_eq_rotations_reflections :
  { M : Matrix (Fin 2) (Fin 2) ℝ | M * Mᵀ = 1 } = (range R) ∪ (range H) := by sorry
