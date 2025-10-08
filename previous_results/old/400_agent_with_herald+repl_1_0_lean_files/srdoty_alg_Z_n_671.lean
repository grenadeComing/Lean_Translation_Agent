import Mathlib

/--
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ.
Suppose that a ≡ b (mod n) and c ≡ d (mod n).
Show that a+c ≡ b+d (mod n).
-/

theorem cong_add {n : Int} (hn : n ≠ 0) {a b c d : Int}
  (h1 : ∃ k : Int, a - b = n * k)
  (h2 : ∃ l : Int, c - d = n * l) :
  ∃ m : Int, a + c - (b + d) = n * m := by sorry
