import Mathlib

theorem srdoty_alg_Z_n_725 (n : ℕ) (hn : 1 < n) (a b c : Int) :
  ((a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) = (a : ZMod n) * (b : ZMod n) + (a : ZMod n) * (c : ZMod n))) ∧
  (((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) = (b : ZMod n) * (a : ZMod n) + (c : ZMod n) * (a : ZMod n))) := by sorry