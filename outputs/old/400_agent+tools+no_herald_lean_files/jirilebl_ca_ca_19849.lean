import Mathlib

/-!
Let z ∈ ℂ. Show that |arctan z| ≤ (π / 4) * |z| / (1 - |z|) whenever |z| < 1.
-/

theorem complex_arctan_bound (z : ℂ) (h : Complex.abs z < 1) :
  Complex.abs (Complex.arctan z) ≤ (Real.pi / 4) * (Complex.abs z / (1 - Complex.abs z)) := by
  sorry
