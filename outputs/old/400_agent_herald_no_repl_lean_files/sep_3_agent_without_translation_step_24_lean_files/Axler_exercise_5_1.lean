import Mathlib

/-!
Suppose T ∈ L(V). Prove that if U₁, ..., Uₘ are subspaces of V invariant under T,
then U₁ + ... + Uₘ is invariant under T.
We state the result for a family of submodules indexed by `Fin m`.
-/

theorem Axler_exercise_5_1 {R : Type _} {V : Type _} [Semiring R] [AddCommMonoid V] [Module R V]
  (m : ℕ) (T : V →ₗ[R] V) (U : Fin m → Submodule R V)
  (h : ∀ i, Submodule.map T (U i) ≤ U i) :
  Submodule.map T (⨆ i : Fin m, U i) ≤ ⨆ i : Fin m, U i := by sorry
