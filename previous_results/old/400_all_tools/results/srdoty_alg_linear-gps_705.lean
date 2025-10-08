import Mathlib
open Real

/-- Addition formulas for cosine and sine. -/
theorem cos_add (θ₁ : ℝ) (θ₂ : ℝ) :
  cos (θ₁ + θ₂) = cos θ₁ * cos θ₂ - sin θ₁ * sin θ₂ := by sorry

/-- Addition formula for sine. -/
theorem sin_add (θ₁ : ℝ) (θ₂ : ℝ) :
  sin (θ₁ + θ₂) = sin θ₁ * cos θ₂ + cos θ₁ * sin θ₂ := by sorry
