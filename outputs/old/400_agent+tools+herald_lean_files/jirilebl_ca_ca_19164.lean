import Mathlib

/-- Derivative of complex arctan: arctan' z = 1 / (1 + z^2). -/
theorem hasDerivAt_complex_arctan (z : ℂ) : HasDerivAt Complex.arctan (1 / (1 + z^2)) z := by sorry

/-- Derivative of complex log on the slit plane: log' z = 1 / z. -/
theorem hasDerivAt_complex_log {z : ℂ} (hz : z ∈ Complex.slitPlane) : HasDerivAt Complex.log z⁻¹ z := by sorry
