import Mathlib

/--
Fix an integer n > 1. For all a, b, c ∈ ℤ, where [x] denotes the congruence class
of x modulo n, show that [a] * ([b] + [c]) = [a] * [b] + [a] * [c] and
([b] + [c]) * [a] = [b] * [a] + [c] * [a].
-/

theorem srdoty_alg_Z_n_725_left {n : ℕ} (hn : 1 < n) (a b c : Int) :
  (a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) = (a : ZMod n) * (b : ZMod n) + (a : ZMod n) * (c : ZMod n) := by
  sorry

theorem srdoty_alg_Z_n_725_right {n : ℕ} (hn : 1 < n) (a b c : Int) :
  ((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) = (b : ZMod n) * (a : ZMod n) + (c : ZMod n) * (a : ZMod n) := by
  sorry
