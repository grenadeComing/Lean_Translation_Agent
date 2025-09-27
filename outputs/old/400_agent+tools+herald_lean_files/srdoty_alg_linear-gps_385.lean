import Mathlib

/-!
# Special orthogonal group as a matrix subgroup

We state that SO(n) = {A ∈ O(n) : Matrix.det A = 1} is a subgroup of GL(n, ℝ).
The proof is omitted (sorry).
-/

open Matrix

def SO (n : Type*) [DecidableEq n] [Fintype n] : Subgroup (Matrix.GeneralLinearGroup n ℝ) := by sorry
