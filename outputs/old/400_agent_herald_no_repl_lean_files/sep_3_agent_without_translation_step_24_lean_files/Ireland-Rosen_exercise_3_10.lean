import Mathlib

/--
If n is not a prime, show that (n-1)! ≡ 0 (mod n), except when n = 4.
This states that for a nonprime n ≠ 4 we have n ∣ (n-1)!.
-/
theorem ireland_rosen_exercise_3_10 (n : Nat) (h : ¬ Nat.Prime n) (hne : n ≠ 4) :
  n ∣ Nat.factorial (n - 1) := by
  sorry
