import Mathlib

/-- Rotation matrix R_θ in R^{2×2} -/
noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => Real.cos θ
    | 0, 1 => -Real.sin θ
    | 1, 0 => Real.sin θ
    | 1, 1 => Real.cos θ

/-- Reflection matrix H_θ across the line through the origin at angle θ -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => Real.cos (2 * θ)
    | 0, 1 => Real.sin (2 * θ)
    | 1, 0 => Real.sin (2 * θ)
    | 1, 1 => -Real.cos (2 * θ)

/-- The orthogonal group O(2) as 2×2 real matrices: those with Mᵀ M = I -/
def O2 : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | M.transpose * M = 1 }

/-- O(2) = { R_θ : θ ∈ ℝ } ∪ { H_θ : θ ∈ ℝ } -/
theorem o2_eq : O2 = { R θ | θ : ℝ } ∪ { H θ | θ : ℝ } := by sorry
