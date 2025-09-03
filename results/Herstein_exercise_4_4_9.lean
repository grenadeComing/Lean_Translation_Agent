import Mathlib

/-- Show that exactly (p - 1) / 2 of the nonzero elements of ZMod p are squares, and (p - 1) / 2 are non-squares, for p an odd prime. -/
theorem Herstein_exercise_4_4_9 (p : ℕ) [NeZero p]
  (hp : Nat.Prime p) (hp2 : p ≠ 2)
  [DecidablePred fun a : ZMod p => a ≠ 0 ∧ IsSquare (a : ZMod p)]
  [DecidablePred fun a : ZMod p => a ≠ 0 ∧ ¬IsSquare (a : ZMod p)] :
  (p - 1) / 2 = (Finset.card (Finset.univ.filter fun a : ZMod p => a ≠ 0 ∧ IsSquare (a : ZMod p))) ∧
  (p - 1) / 2 = (Finset.card (Finset.univ.filter fun a : ZMod p => a ≠ 0 ∧ ¬ IsSquare (a : ZMod p))) := by sorry
