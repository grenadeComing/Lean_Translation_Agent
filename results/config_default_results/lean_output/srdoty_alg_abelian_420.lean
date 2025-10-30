import Mathlib
open BigOperators
open PowerSeries

noncomputable section

variable {R : Type*} [Semiring R]

/-- Show that the generating function for the number p(n) of partitions of n is
  ∑' (n : ℕ), (p n : R) * X ^ n = ∏' (k : ℕ), (1 - X ^ k)⁻¹. -/
theorem partitions_eq_prod_inf_nat_extracted (p : ℕ → ℕ) :
  ∑' (n : ℕ), (p n : R) * X ^ n = ∏' (k : ℕ), (1 - X ^ k)⁻¹ := by
  sorry
