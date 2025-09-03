import Mathlib

open Complex

theorem Shakarchi_exercise_2_13 (f : Complex → Complex)
  (h : ∀ z0 : Complex, ∃ (c : ℕ → Complex) (r : Real) (n0 : ℕ), 0 < r ∧ c n0 = 0 ∧ ∀ z : Complex, Complex.abs (z - z0) < r → f z = ∑' k : ℕ, c k * (z - z0) ^ k) :
  ∃ N : ℕ, ∃ a : ℕ → Complex, (∀ n, n > N → a n = 0) ∧ ∀ z : Complex, f z = ∑' n, a n * z ^ n := by sorry
