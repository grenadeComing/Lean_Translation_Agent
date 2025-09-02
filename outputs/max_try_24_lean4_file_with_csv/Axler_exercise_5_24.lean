import Mathlib

/-- Suppose V is a real vector space and T : V →ₗ[ℝ] V is a linear map with no real eigenvalues.
Every finite-dimensional subspace W ⊆ V invariant under T has even dimension.
We state this using Module.rank (a Cardinal): there exists n : ℕ with Module.rank ℝ (↥W) = (2 * n : Cardinal). -/
theorem Axler_exercise_5_24 {V : Type*} [AddCommGroup V] [Module ℝ V] (T : V →ₗ[ℝ] V)
  (hT : ∀ r v, v ≠ 0 → T v = r • v → False) :
  ∀ (W : Submodule ℝ V), (∀ w, w ∈ W → T w ∈ W) → FiniteDimensional ℝ (↥W) → ∃ n : ℕ, Module.rank ℝ (↥W) = (2 * n : Cardinal) := by sorry
