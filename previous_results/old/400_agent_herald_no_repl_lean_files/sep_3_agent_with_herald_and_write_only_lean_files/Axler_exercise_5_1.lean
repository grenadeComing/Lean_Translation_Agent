import Mathlib

/-!
Exercise (Axler 5.1).
If T : V → V is linear and U₁,…,Uₘ are submodules invariant under T,
then U₁ + ··· + Uₘ is invariant under T.
-/

open BigOperators

variable {R : Type*} {V : Type*}
variable [Semiring R] [AddCommMonoid V] [Module R V]

/-- If each U i is invariant under T (i.e. map T (U i) ≤ U i), then the sum of the U i is invariant. -/
theorem Axler_exercise_5_1 {m : ℕ} (T : V →ₗ[R] V) (U : Fin m → Submodule R V)
  (h : ∀ i : Fin m, (U i).map T ≤ U i) : (Submodule.sum (Finset.univ : Finset (Fin m)) U).map T ≤
    Submodule.sum (Finset.univ : Finset (Fin m)) U := by sorry
