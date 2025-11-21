import Mathlib

/-!
Fix an integer n > 1. For all a, b, c ∈ ℤ, where [x] denotes the congruence class of x modulo n,
show that [a]·([b]+[c]) = [a]·[b] + [a]·[c] and ([b]+[c])·[a] = [b]·[a] + [c]·[a].
This statement is expressed by casting integers to ZMod n.
-/-

theorem zmod_distrib_of_reps {n : Nat} (hn : 1 < n) (a b c : Int) :
  (a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) = (a : ZMod n) * (b : ZMod n) + (a : ZMod n) * (c : ZMod n) ∧
  ((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) = (b : ZMod n) * (a : ZMod n) + (c : ZMod n) * (a : ZMod n) := by sorry
