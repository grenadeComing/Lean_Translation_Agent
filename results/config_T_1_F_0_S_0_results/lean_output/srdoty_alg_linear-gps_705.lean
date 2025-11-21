import Mathlib
open Real

/-- Addition formulas for sine and cosine:
    cos(θ₁ + θ₂) = cos θ₁ * cos θ₂ - sin θ₁ * sin θ₂,
    sin(θ₁ + θ₂) = sin θ₁ * cos θ₂ + cos θ₁ * sin θ₂,
  for all θ₁, θ₂ : ℝ. -/
theorem cos_add (θ₁ θ₂ : ℝ) : cos (θ₁ + θ₂) = cos θ₁ * cos θ₂ - sin θ₁ * sin θ₂ := by sorry

theorem sin_add (θ₁ θ₂ : ℝ) : sin (θ₁ + θ₂) = sin θ₁ * cos θ₂ + cos θ₁ * sin θ₂ := by sorry