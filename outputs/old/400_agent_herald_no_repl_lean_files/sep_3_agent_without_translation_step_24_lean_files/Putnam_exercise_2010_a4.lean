import Mathlib

/--
Putnam 2010 A4: For each positive integer n, the number
10^(10^(10^n)) + 10^(10^n) + 10^n - 1 is not prime.
We state the result in Lean; the proof is omitted (``sorry'').
-/
theorem putnam_2010_a4 (n : ℕ) (hn : 0 < n) :
  ¬ Nat.Prime (10 ^ (10 ^ (10 ^ n)) + 10 ^ (10 ^ n) + 10 ^ n - 1) := by sorry
