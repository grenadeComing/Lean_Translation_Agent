import Mathlib

/-- The subset U of R^2 consisting of pairs of integers (viewed as reals). -/
def U : Set (ℝ × ℝ) := { p | ∃ (m n : Int), p = ((m : ℝ), (n : ℝ)) }

/-- U is nonempty. -/
theorem U_nonempty : ∃ x, x ∈ U := by sorry

/-- U is closed under addition (componentwise). -/
theorem U_closed_add : ∀ u v : ℝ × ℝ, u ∈ U → v ∈ U → (u.1 + v.1, u.2 + v.2) ∈ U := by sorry

/-- U is closed under additive inverses (componentwise). -/
theorem U_closed_neg : ∀ u : ℝ × ℝ, u ∈ U → (-u.1, -u.2) ∈ U := by sorry

/-- U is not a subspace of R^2: it fails to be closed under scalar multiplication by arbitrary reals. -/
theorem U_not_closed_smul : ∃ (r : ℝ) (v : ℝ × ℝ), v ∈ U ∧ r • v ∉ U := by sorry
