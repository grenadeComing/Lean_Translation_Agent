import Mathlib
open scoped ComplexConjugate
open Complex

/-- Lemma: For complex numbers a b, show |a + b|^2 = |a|^2 + |b|^2 + 2 * re (a * conj b). -/
theorem normSq_add (a b : ℂ) : normSq (a + b) = normSq a + normSq b + 2 * re (a * star b) := by sorry
