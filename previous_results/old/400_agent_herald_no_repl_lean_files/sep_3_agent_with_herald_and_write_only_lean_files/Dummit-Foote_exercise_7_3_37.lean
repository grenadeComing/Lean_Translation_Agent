import Mathlib

/- An ideal N is called nilpotent if N^n is the zero ideal for some n ≥ 1.
   Prove that the ideal p ℤ / p^m ℤ is a nilpotent ideal in the ring ℤ / p^m ℤ. -/

open Ideal

theorem ideal_isNilpotent_extracted (p m : ℕ) : IsNilpotent (Ideal.span {p : ZMod (p ^ m)}) := by
  -- proof omitted
  sorry
