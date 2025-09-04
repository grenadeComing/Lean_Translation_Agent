import Mathlib

open Real
open Matrix

/-- Rotation matrix R_theta in dimension 2. -/
noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 then
      if j = 0 then Real.cos θ else -Real.sin θ
    else
      if j = 0 then Real.sin θ else Real.cos θ

/-- Reflection matrix H_theta across the line making angle θ with the x-axis. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 then
      if j = 0 then Real.cos (2 * θ) else Real.sin (2 * θ)
    else
      if j = 0 then Real.sin (2 * θ) else -Real.cos (2 * θ)

/-- The orthogonal group O(2) consists exactly of the rotations R_theta and the reflections H_theta. -/
theorem O2_eq : (Matrix.orthogonalGroup (Fin 2) ℝ : Set (Matrix (Fin 2) (Fin 2) ℝ)) =
  {M | ∃ θ : ℝ, M = R θ} ∪ {M | ∃ θ : ℝ, M = H θ} := by sorry
