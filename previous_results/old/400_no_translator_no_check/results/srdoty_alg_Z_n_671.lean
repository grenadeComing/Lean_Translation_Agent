import Mathlib

/-!
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ. Suppose that a ≡ b (mod n) and c ≡ d (mod n).
Show that a + c ≡ b + d (mod n).
-/

theorem srdoty_alg_Z_n_671 (n a b c d : Int) (hn : 0 < n)
  (hab : Int.ModEq n a b) (hcd : Int.ModEq n c d) : Int.ModEq n (a + c) (b + d) := by sorry
