import Mathlib

/-- If n is not prime and n ≠ 4 (with n ≥ 2), then (n-1)! ≡ 0 (mod n).
    In other words, n divides (n-1)! under these hypotheses. -/
theorem ireland_rosen_exercise_3_10 (n : ℕ) (hn : 2 ≤ n) (hcomp : ¬Nat.Prime n) (hne4 : n ≠ 4) :
  n ∣ Nat.factorial (n - 1) := by sorry
