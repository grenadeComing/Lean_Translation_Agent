import Mathlib

open LinearMap

/-!
Exercise (Axler 5.24) translated to Lean4/Mathlib style.
Suppose V is a finite-dimensional real vector space and T : V →ₗ[ℝ] V has no real eigenvalues.
Then every T-invariant subspace W ≤ V has even dimension.
-/

theorem Axler_exercise_5_24 {V : Type*} [AddCommGroup V] [Module ℝ V] [FiniteDimensional ℝ V]
  (T : V →ₗ[ℝ] V)
  (h_no_eig : ∀ λ : ℝ, (T - λ • LinearMap.id).ker = ⊥) :
  ∀ (W : Submodule ℝ V) (hW : ∀ w, w ∈ W → T w ∈ W), ∃ k : ℕ, finrank ℝ W = 2 * k := by sorry
