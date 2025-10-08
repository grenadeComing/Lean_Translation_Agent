import Mathlib

variable {R : Type _} [Semiring R]
variable {V : Type _} [AddCommMonoid V] [Module R V]

/-- Exercise: If each U i is invariant under a linear map T, then their sum (iSup) is invariant. -/
theorem Axler_exercise_5_1 {ι : Type _} (T : V →ₗ[R] V) (U : ι → Submodule R V)
  (h : ∀ i, Submodule.map T (U i) ≤ U i) :
  Submodule.map T (⨆ i, U i) ≤ ⨆ i, U i := by sorry
