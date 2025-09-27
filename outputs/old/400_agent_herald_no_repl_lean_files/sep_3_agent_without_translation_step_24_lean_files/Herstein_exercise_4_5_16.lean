import Mathlib

open Polynomial Ideal

theorem Herstein_exercise_4_5_16 (p : ℕ) [Fact (Nat.Prime p)] (q : Polynomial (ZMod p)) (n : ℕ)
  (hq_irred : Irreducible q) (hq_deg : q.natDegree = n) :
  IsField (Polynomial (ZMod p) ⧸ Ideal.span ({q} : Set (Polynomial (ZMod p)))) ∧
  Fintype (Polynomial (ZMod p) ⧸ Ideal.span ({q} : Set (Polynomial (ZMod p)))) ∧
  Fintype.card (Polynomial (ZMod p) ⧸ Ideal.span ({q} : Set (Polynomial (ZMod p)))) = p ^ n := by
  sorry
