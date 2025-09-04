import Mathlib

/-!
Let n be a fixed positive integer and let a,b,c ∈ ℤ. Show that if a ≡ b (mod n) and b ≡ c (mod n), then a ≡ c (mod n).
We state the result using divisibility: a ≡ b (mod n) iff n ∣ (a - b).
-/

theorem srdoty_alg_Z_n_607 (n : Int) (hn : 0 < n) (a b c : Int)
  (hab : n ∣ a - b) (hbc : n ∣ b - c) : n ∣ a - c := by sorry
