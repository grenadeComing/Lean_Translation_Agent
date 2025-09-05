import Mathlib

open Real

/-- Addition formulas for cosine and sine: for all θ1, θ2 ∈ ℝ,
    cos(θ1 + θ2) = cos θ1 * cos θ2 - sin θ1 * sin θ2,
    sin(θ1 + θ2) = sin θ1 * cos θ2 + cos θ1 * sin θ2. -/
theorem trig_addition_formulas (θ1 θ2 : ℝ) :
  cos (θ1 + θ2) = cos θ1 * cos θ2 - sin θ1 * sin θ2 ∧
  sin (θ1 + θ2) = sin θ1 * cos θ2 + cos θ1 * sin θ2 := by sorry
