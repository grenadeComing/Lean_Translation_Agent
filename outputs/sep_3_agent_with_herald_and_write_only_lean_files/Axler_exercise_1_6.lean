import Mathlib

/-- Example subset U of R^2: all pairs (n,0) with n an integer -/
def U : Set (ℝ × ℝ) := { v | v.2 = 0 ∧ ∃ n : Int, v.1 = n }

/-- U is nonempty. -/
theorem U_nonempty : U.Nonempty := by sorry

/-- U is closed under addition. -/
theorem U_add_closed : ∀ x y : ℝ × ℝ, x ∈ U → y ∈ U → x + y ∈ U := by sorry

/-- U is closed under additive inverses. -/
theorem U_neg_closed : ∀ x : ℝ × ℝ, x ∈ U → -x ∈ U := by sorry

/-- U is not closed under scalar multiplication, hence not a subspace of ℝ^2. -/
theorem U_not_closed_smul : ∃ (c : ℝ) (x : ℝ × ℝ), x ∈ U ∧ c • x ∉ U := by sorry
