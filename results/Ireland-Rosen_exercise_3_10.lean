import Mathlib

/-!
Ireland & Rosen, Exercise 3.10:
If n is composite (not prime), show that (n-1)! ≡ 0 (mod n), except when n = 4.
We require n ≥ 2 and exclude the exceptional case n = 4.
-/

theorem ireland_rosen_exercise_3_10 (n : ℕ) (hn : 2 ≤ n) (hcomp : ¬ Nat.Prime n) (hne : n ≠ 4) :
  (Nat.factorial (n - 1)) % n = 0 := by sorry
