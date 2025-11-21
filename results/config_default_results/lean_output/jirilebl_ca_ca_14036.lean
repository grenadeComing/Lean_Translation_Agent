import Mathlib

/--
Let a,b ∈ ℂ. Show that |a+b|^2 = |a|^2 + |b|^2 + 2 Re(a * conj b).
-/
theorem jirilebl_norm_add_sq_14036 (a b : ℂ) : (abs (a + b) * abs (a + b) : ℝ) = (abs a * abs a) + (abs b * abs b) + (2 : ℝ) * Complex.re (a * star b) := by sorry
