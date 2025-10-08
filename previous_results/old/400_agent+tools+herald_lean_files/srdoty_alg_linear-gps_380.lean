import Mathlib

/-- If the columns of A are orthonormal (their pairwise dot-products satisfy the Kronecker delta),
then they are linearly independent and span the whole space, hence form a basis. The proof is omitted. -/
theorem orthonormal_basis_of_orthogonal {n : Type _} [Fintype n] [DecidableEq n]
  (A : Matrix n n Real)
  (h : ∀ i j : n, ∑ k : n, A k i * A k j = if i = j then (1 : Real) else 0) :
  LinearIndependent Real (fun i => Matrix.col A i) ∧
  (Submodule.span Real (Set.range (fun i => Matrix.col A i)) = ⊤) := by sorry
