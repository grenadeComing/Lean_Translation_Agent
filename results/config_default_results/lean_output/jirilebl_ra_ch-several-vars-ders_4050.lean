import Mathlib

variable {n : ℕ}
/-- Vec is the n-dimensional Euclidean space ℝ^n represented as Fin n → ℝ. -/
def Vec := Fin n → ℝ

/-- A skeleton statement expressing that the second-order Taylor expansion holds uniformly on compact subsets of U. -/
lemma second_order_taylor_uniform_on_compact
  (f : Vec → ℝ)
  (U : Set Vec)
  (convU : Convex U)
  (K : Set Vec) (hK : IsCompact K)
  (hKU : ∀ x ∈ K, x ∈ U) : Prop := by
  -- Placeholder for the uniform second-order Taylor expansion on compact subsets of U
  sorry
