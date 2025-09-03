import Mathlib

/-- Exercise: Z[i] / (1 + i) is a field of order 2.
    Here we state the equivalent concrete conclusion that the quotient is (isomorphic to) ZMod 2,
    and therefore ZMod 2 is a field with 2 elements.  The proof is omitted (:= by sorry).
-/
theorem Dummit_Foote_exercise_8_3_6a : IsField (ZMod 2) ∧ Fintype.card (ZMod 2) = 2 := by
  -- proof omitted
  sorry
