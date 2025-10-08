import Mathlib

variable {F : Type*} [Field F]
variable {V : Type*} [AddCommGroup V] [Module F V] [FiniteDimensional F V]

open LinearMap Submodule

/-- Axler Ex. 5.13: If every codimension-1 subspace of V is invariant under T, then T is a scalar.
    We express the hypothesis by requiring that for every nonzero linear functional φ : V →ₗ[F] F,
    its kernel is invariant under T. -/
theorem Axler_exercise_5_13 (T : V →ₗ[F] V)
  (h : ∀ (φ : V →ₗ[F] F), φ ≠ 0 → Submodule.map T (LinearMap.ker φ) ≤ LinearMap.ker φ) :
  ∃ c : F, T = c • LinearMap.id := by sorry
