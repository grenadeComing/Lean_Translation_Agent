import Mathlib

/--
Show that exactly (p - 1) / 2 of the nonzero residues mod p are quadratic residues and
exactly (p - 1) / 2 are quadratic nonresidues, for p an odd prime.
-/
theorem herstein_exercise_4_4_9 (p : ℕ) [Fact (p.Prime)] (hp_ne_two : p ≠ 2) :
  (p - 1) / 2 = Fintype.card { a : ZMod p // a ≠ 0 ∧ ∃ y : ZMod p, y ^ 2 = a } ∧
  (p - 1) / 2 = Fintype.card { a : ZMod p // a ≠ 0 ∧ ¬ (∃ y : ZMod p, y ^ 2 = a) } := by sorry
