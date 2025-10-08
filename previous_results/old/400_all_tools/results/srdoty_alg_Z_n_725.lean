import Mathlib

variable (n : ℕ) [NeZero n] (hn : 1 < n)

theorem zmod_int_left_distrib (a b c : Int) :
  (a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) = (a : ZMod n) * (b : ZMod n) + (a : ZMod n) * (c : ZMod n) := by sorry

theorem zmod_int_right_distrib (a b c : Int) :
  ((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) = (b : ZMod n) * (a : ZMod n) + (c : ZMod n) * (a : ZMod n) := by sorry
