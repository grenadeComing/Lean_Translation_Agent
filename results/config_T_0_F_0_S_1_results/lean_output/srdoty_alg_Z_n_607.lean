import Mathlib

/--
Let n be a fixed positive integer and let a, b, c be integers.
If a ≡ b (mod n) and b ≡ c (mod n), then a ≡ c (mod n).
We express congruence modulo n by divisibility: n ∣ (a - b).
-/
theorem srdoty_alg_Z_n_607 (n : Int) (hn : 0 < n) (a b c : Int)
  (h1 : n ∣ (a - b)) (h2 : n ∣ (b - c)) : n ∣ (a - c) := by sorry
