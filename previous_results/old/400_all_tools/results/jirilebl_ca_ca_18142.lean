import Mathlib

/-- For complex numbers a, b we have |a + b|^2 = |a|^2 + |b|^2 + 2 * Re (a * conj b).
    In Mathlib the complex conjugation is given by `starRingEnd ℂ`. -/
theorem normSq_add (a b : ℂ) : Complex.normSq (a + b) = Complex.normSq a + Complex.normSq b + 2 * (Complex.re (a * starRingEnd ℂ b)) := by sorry
