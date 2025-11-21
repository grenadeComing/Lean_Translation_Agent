import Mathlib

/-- Let z ∈ ℂ. Show that arctan' z = 1/(1+z^2) and log'(z) = 1/z where defined. -/

theorem hasDerivAt_arctan {z : ℂ} (hz : 1 + z ^ 2 ≠ 0) :
  HasDerivAt Complex.arctan (1 / (1 + z ^ 2)) z := by sorry

theorem hasDerivAt_log {z : ℂ} (hz : z ≠ 0) :
  HasDerivAt Complex.log (1 / z) z := by sorry
