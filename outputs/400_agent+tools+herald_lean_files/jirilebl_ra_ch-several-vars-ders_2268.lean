import Mathlib

variable {α : Type _} [CommRing α]
variable {n : Type _} [Fintype n] [DecidableEq n]

open Matrix

theorem det_adjugate (A : Matrix n n α) : Matrix.det (Matrix.adjugate A) = Matrix.det A ^ (Fintype.card n - 1) := by sorry
