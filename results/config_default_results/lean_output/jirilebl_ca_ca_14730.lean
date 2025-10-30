import Mathlib
open Complex
lemma log_bound_complex (z : ℂ) (hz : |z| < 1) : |Complex.log (1 - z)| ≤ |z| / (1 - |z|) := by
  sorry
