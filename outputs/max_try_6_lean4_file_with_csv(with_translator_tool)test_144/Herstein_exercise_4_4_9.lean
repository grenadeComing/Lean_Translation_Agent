import Mathlib

theorem Herstein_exercise_4_4_9 (p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2) :
  (Finset.filter (fun a : ZMod p => a ≠ 0 ∧ IsSquare a) (Finset.univ : Finset (ZMod p))).card = (p - 1) / 2 ∧
  (Finset.filter (fun a : ZMod p => a ≠ 0 ∧ ¬IsSquare a) (Finset.univ : Finset (ZMod p))).card = (p - 1) / 2 := by sorry
