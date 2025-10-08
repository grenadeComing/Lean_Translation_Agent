import Mathlib

/-!
Fix an integer n > 1. For all a,b,c ∈ ℤ, where [x] denotes the congruence class of x modulo n,
show that [a]*([b]+[c]) = [a]*[b] + [a]*[c] and ([b]+[c])*[a] = [b]*[a] + [c]*[a].
-/

theorem srdoty_alg_Z_n_725 {n : ℕ} (hn : 1 < n) (a b c : Int) :
  ((a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) = (a : ZMod n) * (b : ZMod n) + (a : ZMod n) * (c : ZMod n))
  ∧ (((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) = (b : ZMod n) * (a : ZMod n) + (c : ZMod n) * (a : ZMod n)) := by
  sorry
