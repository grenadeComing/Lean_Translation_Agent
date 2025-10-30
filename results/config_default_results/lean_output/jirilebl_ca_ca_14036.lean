import Mathlib

open Complex

/-- Let a b : ℂ. Then |a + b|^2 = |a|^2 + |b|^2 + 2 * Re (a * conj b). -/
theorem normSq_add (a b : ℂ) : Complex.normSq (a + b) = Complex.normSq a + Complex.normSq b + 2 * (a * Complex.conj b).re := by
  sorry
