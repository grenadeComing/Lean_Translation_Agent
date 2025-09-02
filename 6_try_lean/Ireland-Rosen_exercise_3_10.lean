import Mathlib

/-- If n is not prime, show that (n-1)! ≡ 0 (mod n), except when n = 4. -/
theorem ireland_rosen_exercise_3_10 (n : Nat) (hn : 2 ≤ n) (hne : ¬ Nat.Prime n) (h4 : n ≠ 4) : n ∣ Nat.factorial (n - 1) := by
  sorry
