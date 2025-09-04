import Mathlib
open Real Set Filter RCLike Submodule Function Uniformity Topology NNReal ENNReal
open Submodule
open FiniteDimensional
open DirectSum
open FiniteDimensional
open Matrix

/-- Let $A\in \mathrm{O}(n)$ with column vectors $A_1,\dots,A_n\in\mathbb{R}^n$. Show that $A_i\cdot A_j=\delta_{ij}$ for all $1\le i,j\le n$, where $\cdot$ denotes the standard dot product on $\mathbb{R}^n$. -/
theorem orthogonal_columns (n : ℕ) (A : Matrix (Fin n) (Fin n) ℝ) (h : A.transpose * A = 1) :
  ∀ i j : Fin n, ∑ k : Fin n, A k i * A k j = if i = j then 1 else 0 := by sorry