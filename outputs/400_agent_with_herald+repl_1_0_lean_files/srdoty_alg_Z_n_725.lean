import Mathlib

/-- Distributivity of multiplication over addition in ZMod n (left). We fix n > 1 and use casts from Int to ZMod n. -/
theorem zmod_mul_add_distrib_left {n : Nat} (hn : 1 < n) (a b c : Int) :
  (a : ZMod n) * ((b : ZMod n) + (c : ZMod n)) = (a : ZMod n) * (b : ZMod n) + (a : ZMod n) * (c : ZMod n) := by sorry

/-- Distributivity of multiplication over addition in ZMod n (right). -/
theorem zmod_mul_add_distrib_right {n : Nat} (hn : 1 < n) (a b c : Int) :
  ((b : ZMod n) + (c : ZMod n)) * (a : ZMod n) = (b : ZMod n) * (a : ZMod n) + (c : ZMod n) * (a : ZMod n) := by sorry
