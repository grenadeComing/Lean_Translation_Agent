import Mathlib
open Matrix

/--
Let A ∈ O(n) with column vectors A₁, ..., A_n ∈ ℝ^n. Show that
A_iᵀ · A_j = δ_ij for all 1 ≤ i, j ≤ n.
We provide a skeleton; the proof is omitted.
-/
theorem orthogonal_cols_dot_eq_delta
  {n : Nat}
  (A : Matrix (Fin n) (Fin n) ℝ)
  (hA : Aᵀ ⬝ A = Matrix.id (Fin n))
  (i j : Fin n) :
  (Aᵀ ⬝ A) i j = if i = j then (1 : ℝ) else 0 := by
  sorry
