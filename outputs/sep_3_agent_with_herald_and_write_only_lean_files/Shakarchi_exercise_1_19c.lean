import Mathlib

open Complex

/-- Exercise 1.19(c) (Shakarchi): The power series ∑ z^n / n converges for every z on the unit circle
    except z = 1. -/
theorem Shakarchi_exercise_1_19c (z : ℂ) (hz : |z| = 1) (hz_ne : z ≠ 1) : Summable fun n : ℕ => z ^ n / (n : ℂ) := by sorry
