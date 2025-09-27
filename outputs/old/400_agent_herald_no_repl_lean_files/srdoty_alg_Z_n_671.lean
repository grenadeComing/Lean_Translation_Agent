import Mathlib

/-!
Simple statement: if a ≡ b (mod n) and c ≡ d (mod n) then a + c ≡ b + d (mod n).
We express congruence by divisibility: n ∣ a - b.
-/

theorem srdoty_alg_Z_n_671 {n : Int} (hn : 0 < n) {a b c d : Int}
  (hab : n ∣ a - b) (hcd : n ∣ c - d) : n ∣ (a + c) - (b + d) := by
  sorry
