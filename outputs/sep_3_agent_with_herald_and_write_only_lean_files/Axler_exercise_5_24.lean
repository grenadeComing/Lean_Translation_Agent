import Mathlib

/-!
# Axler Exercise 5.24

Suppose V is a finite-dimensional real vector space and T : V →ₗ[ℝ] V has no real eigenvalues.
Show that every subspace W ≤ V which is invariant under T has even dimension.
-/

open LinearMap Submodule

theorem Axler_exercise_5_24 {V : Type _} [AddCommGroup V] [Module ℝ V] [FiniteDimensional ℝ V]
  (T : V →ₗ[ℝ] V)
  (h_no_eig : ∀ λ : ℝ, (T - λ • LinearMap.id).ker = ⊥) :
  ∀ W : Submodule ℝ V, Submodule.map T W ≤ W → ∃ k : ℕ, finrank ℝ W = 2 * k := by sorry
