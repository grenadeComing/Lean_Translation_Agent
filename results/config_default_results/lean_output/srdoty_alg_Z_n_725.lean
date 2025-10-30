import Mathlib

-- Translate the given statement to Lean4 using ZMod (integers modulo n).
-- For all a b c : Z, the congruence class [x] is represented by (x : ZMod n).
-- We show the distributive property: [a] * ([b] + [c]) = [a] * [b] + [a] * [c]
-- and ([b] + [c]) * [a] = [b] * [a] + [c] * [a].

theorem distrib_mod_n (n : ℕ) [Fact (1 < n)] (a b c : ℤ) :
  ((a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) =
     (a : ZMod n) * (b : ZMod n) + (a : ZMod n) * (c : ZMod n)) ∧
  (((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) =
     (b : ZMod n) * (a : ZMod n) + (c : ZMod n) * (a : ZMod n)) := by
  sorry
