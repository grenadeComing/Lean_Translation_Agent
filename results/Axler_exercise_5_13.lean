import Mathlib

variable {K : Type _} [DivisionRing K]
variable {V : Type _} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

open LinearMap Submodule

theorem Axler_exercise_5_13 (T : V →ₗ[K] V)
  (h : ∀ (φ : V →ₗ[K] K), φ ≠ 0 → ∀ v, v ∈ φ.ker → T v ∈ φ.ker) :
  ∃ c : K, ∀ v : V, T v = c • v := by sorry
