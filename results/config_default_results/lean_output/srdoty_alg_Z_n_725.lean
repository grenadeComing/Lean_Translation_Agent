import Mathlib

/-- Fix an integer n>1. For all a,b,c ∈ ℤ, where [x] denotes the congruence class of x modulo n, show that
    [a]·([b]+[c]) = [a]·[b] + [a]·[c]
and
    ([b]+[c])·[a] = [b]·[a] + [c]·[a]. -/
theorem srdoty_mul_add_zmod {n : ℕ} (hn : 1 < n) (a b c : Int) :
  (a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) = (a * b + a * c : ZMod n) ∧
  ((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) = (b * a + c * a : ZMod n) := by sorry
