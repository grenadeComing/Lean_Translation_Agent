import Mathlib

/-- Let a,b ∈ ℂ. -/
theorem normSq_add (a b : ℂ) : Complex.normSq (a + b) = Complex.normSq a + Complex.normSq b + 2 * (a * conj b).re := by sorry