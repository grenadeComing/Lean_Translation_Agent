import Mathlib

/-- Exercise 3.10 (Ireland & Rosen). If n is composite, then (n - 1)! ≡ 0 (mod n), except when n = 4. -/
theorem ireland_rosen_exercise_3_10 (n : ℕ) (hn1 : 2 ≤ n) (hn2 : ¬Nat.Prime n) (hn3 : n ≠ 4) :
  (Nat.factorial (n - 1) : ZMod n) = 0 := by sorry
