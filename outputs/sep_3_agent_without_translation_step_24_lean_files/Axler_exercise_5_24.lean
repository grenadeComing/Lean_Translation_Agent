import Mathlib

variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- T has no real eigenvalues. -/
def no_real_eigenvalues (T : V →ₗ[ℝ] V) : Prop :=
  ∀ (r : ℝ) (v : V), v ≠ 0 → T v ≠ r • v

/-- Axler Ex. 5.24 (formal statement).
If T : V → V is a linear operator on a real vector space V with no real eigenvalues,
then every T-invariant (finite-dimensional) subspace has even dimension.
We state the result in terms of Module.rank (a cardinal) converted to Nat; proof omitted.
-/
theorem Axler_exercise_5_24 (T : V →ₗ[ℝ] V) (h : no_real_eigenvalues T) :
  ∀ (W : Submodule ℝ V), (∀ v ∈ W, T v ∈ W) → Even (Cardinal.toNat (Module.rank ℝ (↥W))) := by sorry
