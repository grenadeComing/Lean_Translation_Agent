import Mathlib

open Complex

/-- The polynomial f_n(z) = n + (n-1) z + (n-2) z^2 + ... + z^{n-1}. -/
noncomputable def f_n (n : ℕ) (z : ℂ) : ℂ :=
  Finset.sum (Finset.range n) fun i => ((n : ℂ) - (i : ℂ)) * z ^ (i : ℕ)

/-- Putnam 2018 B2: for n > 0 the polynomial f_n has no roots in the closed unit disk. -/
theorem Putnam_exercise_2018_b2 (n : ℕ) (hn : n > 0) :
  ∀ z : ℂ, Complex.abs z ≤ 1 → f_n n z ≠ 0 := by sorry
