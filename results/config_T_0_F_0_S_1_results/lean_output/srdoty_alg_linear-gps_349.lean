import Mathlib

/-!
SL(n) := {A : Mat_{n×n}(ℝ) | det A = 1} is a group under matrix multiplication.
This file states that the subtype of n×n real matrices with determinant 1 carries a Group
structure. The proof is omitted (by `sorry`).
-/

open Matrix

lemma sl_group (n : ℕ) : Group ({A : Matrix (Fin n) (Fin n) ℝ // A.det = 1}) := by
  sorry