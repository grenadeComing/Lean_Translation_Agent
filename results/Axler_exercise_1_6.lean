import Mathlib

/-- Example subset U of R^2 consisting of points with rational first coordinate and zero second coordinate. -/
def U : Set (ℝ × ℝ) := Set.range (fun (q : ℚ) => ((q : ℝ), 0))

/-- U is closed under addition of vectors (sum of rationals is rational). -/
theorem U_add_closed {u v : ℝ × ℝ} (hu : u ∈ U) (hv : v ∈ U) : u + v ∈ U := by sorry

/-- U is closed under additive inverses (negation of a rational is rational). -/
theorem U_neg_closed {u : ℝ × ℝ} (hu : u ∈ U) : -u ∈ U := by sorry

/-- U is not a subspace of ℝ^2: scalar multiplying (1,0) by an irrational yields a vector not in U. -/
theorem U_not_subspace : ∃ (a : ℝ × ℝ), a ∈ U ∧ ∃ (r : ℝ), r • a ∉ U := by sorry
