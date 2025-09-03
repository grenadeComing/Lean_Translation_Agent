import Mathlib

/-- Suppose V is a finite-dimensional real vector space and T has no real eigenvalues.
    Then every T-invariant submodule U has even dimension. -/
theorem Axler_exercise_5_24 {V : Type*} [AddCommGroup V] [Module ℝ V] [FiniteDimensional ℝ V]
  (T : V →ₗ[ℝ] V)
  (h_no_eig : ¬ ∃ (r : ℝ) (v : V), v ≠ 0 ∧ T v = r • v)
  (U : Submodule ℝ V)
  (h_inv : ∀ u, u ∈ U → T u ∈ U) :
  ∃ k : ℕ, Module.finrank ℝ U = 2 * k := by sorry
