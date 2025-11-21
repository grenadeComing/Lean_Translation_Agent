import Mathlib

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n]

/--
If A is an invertible real n-by-n matrix with at least one eigenvalue l1 > 1 and at least one
eigenvalue l2 < -1, then the linear map A : ℝ^n → ℝ^n (given by matrix multiplication) is a
covering map.
-/
theorem benmckay_top_covering_spaces_216 (A : Matrix n n ℝ)
  (hdet : Matrix.det A ≠ 0)
  (hpos : ∃ (l1 : ℝ) (v1 : n → ℝ), v1 ≠ 0 ∧ A.mulVec v1 = l1 • v1 ∧ l1 > 1)
  (hneg : ∃ (l2 : ℝ) (v2 : n → ℝ), v2 ≠ 0 ∧ A.mulVec v2 = l2 • v2 ∧ l2 < -1) :
  IsCoveringMap (fun v : n → ℝ => A.mulVec v) := by sorry
