import Mathlib

/-!
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ with a ≡ b (mod n) and c ≡ d (mod n).
Prove that a + c ≡ b + d (mod n) and ac ≡ bd (mod n).
-/

theorem srdoty_alg_Z_n_828 (n : Int) (hn : 0 < n) {a b c d : Int}
  (h1 : Int.modeq a b n) (h2 : Int.modeq c d n) :
  Int.modeq (a + c) (b + d) n ∧ Int.modeq (a * c) (b * d) n := by sorry