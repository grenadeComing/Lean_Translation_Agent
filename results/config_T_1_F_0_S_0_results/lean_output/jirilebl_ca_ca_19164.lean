import Mathlib

/-! Let z ∈ ℂ. Show that arctan' z = 1/(1+z^2) and log'(z) = 1/z where defined. -/

theorem arctan_deriv (z : ℂ) (h : 1 + z ^ 2 ≠ 0) : HasDerivAt Complex.atan (1 / (1 + z ^ 2)) z := by sorry

theorem log_deriv (z : ℂ) (h : DifferentiableAt ℂ Complex.log z) : HasDerivAt Complex.log (1 / z) z := by sorry
