import Mathlib

/-- The matrix H₀ = [[1,0],[0,-1]] as a 2×2 real matrix. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then 1 else 0 else if j = 0 then 0 else -1

/-- Rotation matrix R(φ) = [[cos φ, -sin φ],[sin φ, cos φ]] as a 2×2 real matrix. -/
def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then Real.cos φ else -Real.sin φ
  else if j = 0 then Real.sin φ else Real.cos φ

/-- We state the relation: for each θ ∈ ℝ, H θ = H₀ * R(-2θ).
    Here H is an arbitrary θ-indexed family of 2×2 real matrices assumed available. -/
variable (H : ℝ → Matrix (Fin 2) (Fin 2) ℝ)

theorem H_theta_eq (θ : ℝ) : H θ = H0 ⬝ R (-2 * θ) := by sorry