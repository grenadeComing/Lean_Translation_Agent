import Mathlib

/-- Rotation by angle θ in R^2, represented as functions Fin 2 → ℝ. -/
def rho (θ : ℝ) (x : Fin 2 → ℝ) : Fin 2 → ℝ :=
  fun i => if i = 0 then Real.cos θ * x 0 - Real.sin θ * x 1 else Real.sin θ * x 0 + Real.cos θ * x 1

/-- For any θ and any nonzero x, the angle between x and ρ θ x equals θ, i.e. the arccos of the
normalized inner product equals θ. -/
theorem angle_between_rho_eq (θ : ℝ) {x : Fin 2 → ℝ} (hx : x ≠ 0) :
  Real.arccos (inner x (rho θ x) / (‖x‖ * ‖rho θ x‖)) = θ := by sorry