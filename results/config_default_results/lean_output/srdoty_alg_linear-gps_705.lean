import Mathlib
open Real

/-- Translate the following natural language statement to Lean4 code. Import Mathlib and end the declaration with := by sorry.

Statement:
Translate the following and check correctness: Give a conceptual derivation (i.e., a proof) of the addition formulas for sine and cosine: cos(θ1+θ2)=cosθ1 cosθ2 - sinθ1 sinθ2, sin(θ1+θ2)= sinθ1 cosθ2 + cosθ1 sinθ2, for all θ1, θ2 in R. -/
theorem cos_add_cos_eq_sub_sin_add_sin_eq (θ₁ θ₂ : ℝ) :
  (cos (θ₁ + θ₂) = cos θ₁ * cos θ₂ - sin θ₁ * sin θ₂) ∧
  (sin (θ₁ + θ₂) = sin θ₁ * cos θ₂ + cos θ₁ * sin θ₂) := by
  sorry