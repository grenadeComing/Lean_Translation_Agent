import Mathlib

/-!
Simple lemma: if a ≡ b (mod n) and c ≡ d (mod n) then a + c ≡ b + d (mod n).
We assume n > 0 as in the problem statement.
-/

theorem int_add_mod_eq {n : Int} (hn : 0 < n) {a b c d : Int}
  (h1 : Int.ModEq n a b) (h2 : Int.ModEq n c d) : Int.ModEq n (a + c) (b + d) := by sorry
