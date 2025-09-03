import Mathlib

open Polynomial

/-- Let p be a prime integer. The polynomial X^n - p is irreducible over ℚ. -/
theorem Artin_exercise_11_4_8 {p : ℕ} (hp : p.Prime) (n : ℕ) : Irreducible (X ^ n - C (p : ℚ)) := by
  -- Proof by Eisenstein's criterion at the prime p.
  sorry
