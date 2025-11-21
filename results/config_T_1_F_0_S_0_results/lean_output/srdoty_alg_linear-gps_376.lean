import Mathlib

/-!
Let A ∈ O(n) with column vectors A_1,...,A_n in ℝ^n.
Show that A_i ⋅ A_j = δ_ij for all 1 ≤ i,j ≤ n,
where ⋅ denotes the standard dot product on ℝ^n.
-/

theorem dot_product_of_orthogonal {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : A.transpose * A = 1) (i j : Fin n) :
  (Finset.univ.sum fun k : Fin n => A k i * A k j) = if i = j then 1 else 0 := by sorry