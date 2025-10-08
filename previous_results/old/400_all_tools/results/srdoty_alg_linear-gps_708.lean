import Mathlib

noncomputable section

open Real

/-- Rotation rho θ on R^2 = EuclideanSpace ℝ (Fin 2). -/
def rho (θ : ℝ) (v : EuclideanSpace ℝ (Fin 2)) : EuclideanSpace ℝ (Fin 2) :=
  fun i => match i with
    | 0 => cos θ * v 0 - sin θ * v 1
    | 1 => sin θ * v 0 + cos θ * v 1

/-- For any θ and any nonzero x in R^2, the angle between x and rho θ x equals θ. -/
theorem angle_rho_eq (θ : ℝ) (x : EuclideanSpace ℝ (Fin 2)) (hx : x ≠ 0) :
  InnerProductGeometry.angle x (rho θ x) = θ := by
  sorry

end noncomputable section
