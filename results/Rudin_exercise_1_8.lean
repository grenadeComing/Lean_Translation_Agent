import Mathlib

/- Theorem: There is no order on the complex numbers that makes C into a linear ordered field.
   We state this in Lean4/Mathlib style. We only provide the statement; the proof is omitted ("by sorry"). -/

open Complex

theorem no_order_makes_Complex_linear_ordered_field :
  ¬ ∃ (r : Comparable ?), True := by sorry
