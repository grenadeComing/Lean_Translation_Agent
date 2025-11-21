import Mathlib

/--
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ. Suppose that a ≡ b (mod n) and c ≡ d (mod n).
Then ac ≡ bd (mod n).
Translated by expressing congruence as divisibility: n ∣ (a - b) and n ∣ (c - d) imply n ∣ (a*c - b*d).
-/
theorem congruence_mul_mod {n : ℕ} (hn : 0 < n) {a b c d : Int}
  (hab : (n : Int) ∣ (a - b)) (hcd : (n : Int) ∣ (c - d)) : (n : Int) ∣ (a * c - b * d) := by sorry