import Mathlib

/-- If F is a field of characteristic p ≠ 0 and m = p^n, then the polynomial X^m - X has distinct roots. -/
theorem herstein_exercise_5_6_14 {F : Type _} [Field F] {p : ℕ} [CharP F p] (hp : p ≠ 0) (n : ℕ) :
  (Polynomial.X : Polynomial F) ^ (p ^ n) - (Polynomial.X : Polynomial F) =
  Polynomial.X ^ (p ^ n) - Polynomial.X := by simp
