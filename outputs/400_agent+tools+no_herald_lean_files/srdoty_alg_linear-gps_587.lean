import Mathlib

open Matrix

/-- The fixed matrix H₀ = diag(1, -1). -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := ![![1, 0], ![0, -1]]

/-- The rotation matrix R φ. -/
noncomputable def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := ![![Real.cos φ, -Real.sin φ], ![Real.sin φ, Real.cos φ]]

/-- The family H θ defined by its entries. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![Real.cos (2 * θ), Real.sin (2 * θ)], ![Real.sin (2 * θ), -Real.cos (2 * θ)]]

theorem H_eq (θ : ℝ) : H θ = H0 * R (-2 * θ) := by sorry
