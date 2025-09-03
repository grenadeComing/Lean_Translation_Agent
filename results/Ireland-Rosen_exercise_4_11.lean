import Mathlib

open Finset

theorem Ireland_Rosen_exercise_4_11 (p k : ℕ) (hp : Nat.Prime p) :
  (Finset.sum (Finset.range p) fun i => (i : ZMod p) ^ k) = if (p - 1) ∣ k then (-1 : ZMod p) else 0 := by
  sorry
