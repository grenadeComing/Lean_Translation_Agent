import Mathlib

/-
Suppose T ∈ L(V). Prove that if U1, …, Um are subspaces of V invariant under T,
then U1 + … + Um is invariant under T.
-/

theorem Axler_exercise_5_1 {K V : Type*} [Field K] [AddCommMonoid V] [Module K V]
  {m : Nat} (T : V →ₗ[K] V) (U : Fin m → Submodule K V)
  (h : ∀ i, Submodule.map T (U i) ≤ U i) :
  Submodule.map T (Finset.univ.sup U) ≤ Finset.univ.sup U := by sorry
