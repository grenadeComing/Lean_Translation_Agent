import Mathlib
open Function

/-- Let R be a ring and let a∈R. Show that (-1)a = -a. -/
theorem neg_one_mul_extracted [MulOneClass R] [HasDistribNeg R] (a : R) : -1 * a = -a := by sorry
