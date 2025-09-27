import Mathlib

/-!
Exercise: Show that (p - 1) / 2 of the numbers 1,2,...,p-1 are quadratic residues and (p-1)/2 are quadratic nonresidues mod p.
This file gives a formal statement (without full proof) in Mathlib4/Lean4.
-/

open ZMod

theorem herstein_exercise_4_4_9_residues_count {p : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) :
  Fintype.card { a : (ZMod p)ˣ // IsSquare (a : ZMod p) } = (p - 1) / 2 := by sorry

theorem herstein_exercise_4_4_9_nonresidues_count {p : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) :
  Fintype.card { a : (ZMod p)ˣ // ¬ IsSquare (a : ZMod p) } = (p - 1) / 2 := by sorry
