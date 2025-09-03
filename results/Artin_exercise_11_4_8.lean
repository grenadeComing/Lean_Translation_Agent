import Mathlib

/-- Let p be a prime integer. Prove that the polynomial x^n - p is irreducible in Q[x]. -/
theorem Artin_exercise_11_4_8 (p : ℕ) (hp : Nat.Prime p) (n : ℕ) :
  Irreducible (Polynomial.X ^ n - Polynomial.C (p : ℚ)) := by sorry
