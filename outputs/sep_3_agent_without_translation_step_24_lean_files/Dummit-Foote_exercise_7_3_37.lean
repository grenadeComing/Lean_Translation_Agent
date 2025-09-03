import Mathlib

open Ideal

theorem zmod_p_ideal_nilpotent {p m : ℕ} (hp : Nat.Prime p) (hm : 1 ≤ m) :
  (Ideal.span { (p : ZMod (p ^ m)) } : Ideal (ZMod (p ^ m))) ^ m = ⊥ := by sorry
