import Mathlib

/--
Exercise 5.13 (Ireland--Rosen).
If a prime p divides x^4 - x^2 + 1 (with x an integer), then p ≡ 1 (mod 12).
-/
theorem Ireland_Rosen_exercise_5_13 (p : ℕ) (hp : p.Prime) (x : ℤ)
  (h : (p : ℤ) ∣ (x ^ 4 - x ^ 2 + 1)) : p % 12 = 1 := by sorry
