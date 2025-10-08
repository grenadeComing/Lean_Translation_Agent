import Mathlib

/-!
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ with
a ≡ b (mod n) and c ≡ d (mod n).
Prove that a + c ≡ b + d (mod n) and ac ≡ bd (mod n).
We express congruence a ≡ b (mod n) as n ∣ (a - b).
-/

theorem modeq_add_mul {n a b c d : Int} (hn : 0 < n)
  (hab : n ∣ a - b) (hcd : n ∣ c - d) :
  n ∣ (a + c - (b + d)) ∧ n ∣ (a * c - b * d) := by sorry
