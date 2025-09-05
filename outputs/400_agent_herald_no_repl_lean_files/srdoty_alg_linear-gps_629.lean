import Mathlib

open Real

/-- Rotation matrix R_θ in SO(2) as a 2×2 real matrix. -/
def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    if i = 0 ∧ j = 0 then Real.cos θ
    else if i = 0 ∧ j = 1 then -Real.sin θ
    else if i = 1 ∧ j = 0 then Real.sin θ
    else Real.cos θ

/-- Reflection across the line through the origin that makes angle θ with the x-axis. -/
def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    if i = 0 ∧ j = 0 then Real.cos (2 * θ)
    else if i = 0 ∧ j = 1 then Real.sin (2 * θ)
    else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
    else -Real.cos (2 * θ)

/-- The orthogonal group O(2) (as 2×2 real orthogonal matrices) equals the union of the
    rotations R_θ and the reflections H_θ. -/
def O2 : Set (Matrix (Fin 2) (Fin 2) ℝ) := {A | Matrix.transpose A * A = 1}

theorem O2_description : O2 = (Set.range R) ∪ (Set.range H) := by sorry
