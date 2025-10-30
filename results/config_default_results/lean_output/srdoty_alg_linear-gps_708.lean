import Mathlib
open Complex
open CharZero
open ComplexConjugate

/-- Translate the following natural language statement to Lean4 code. Import Mathlib and end the declaration with := by sorry.

Statement:
Translate the following and check correctness: Show that for any θ in ℝ and any nonzero X in ℝ^2, the angle between X and ρ_θ(X) equals θ (hence ρ_θ is rotation by θ). Save it to: srdoty_alg_linear-gps_708.lean -/
theorem rotation_theta_is_rotation (θ : ℝ) :
    (rotation θ).IsRotation θ := by sorry