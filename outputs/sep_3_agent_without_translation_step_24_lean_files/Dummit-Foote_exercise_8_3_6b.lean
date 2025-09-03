import Mathlib

open Ideal

theorem Dummit_Foote_exercise_8_3_6b (q : ℕ) [hp : Fact (Nat.Prime q)] (hmod4 : q % 4 = 3) :
  IsField (GaussianInt ⧸ Ideal.span ({(q : GaussianInt)} : Set GaussianInt)) ∧
  ∃ (inst : Fintype (GaussianInt ⧸ Ideal.span ({(q : GaussianInt)} : Set GaussianInt))),
    @Fintype.card (GaussianInt ⧸ Ideal.span ({(q : GaussianInt)} : Set GaussianInt)) inst = q ^ 2 := by sorry
