import Mathlib

/-
Let a,b ∈ ℂ. Show that |a + b|^2 = |a|^2 + |b|^2 + 2 Re(a * conj b).
-/

theorem jirilebl_ca_ca_14036 (a b : Complex) : (Complex.abs (a + b)) ^ 2 = (Complex.abs a) ^ 2 + (Complex.abs b) ^ 2 + 2 * Complex.re (a * Complex.conj b) := by sorry
