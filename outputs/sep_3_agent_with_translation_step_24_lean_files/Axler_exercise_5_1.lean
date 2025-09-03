import Mathlib

variable {R : Type*} [Semiring R]
variable {V : Type*} [AddCommMonoid V] [Module R V]

/-- Exercise: If U_i are T-invariant submodules, then their sum is T-invariant. -/
theorem Axler_exercise_5_1 {m : ℕ} (U : Fin m → Submodule R V) (T : V →ₗ[R] V)
  (h : ∀ i, Submodule.map T (U i) ≤ U i) :
  Submodule.map T (Submodule.span R (⋃ i, (U i : Set V))) ≤ Submodule.span R (⋃ i, (U i : Set V)) := by
  sorry
