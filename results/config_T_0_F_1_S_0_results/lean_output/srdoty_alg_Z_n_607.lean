import Mathlib

/-!
Transitivity of congruence modulo n in Z:
If n > 0 and a ≡ b (mod n) and b ≡ c (mod n), then a ≡ c (mod n).
We express a ≡ b (mod n) as n ∣ (a - b).
-/

theorem srdoty_alg_Z_n_607 (n : ℤ) (hn : 0 < n) (a b c : ℤ) : n ∣ (a - b) → n ∣ (b - c) → n ∣ (a - c) := by sorry
