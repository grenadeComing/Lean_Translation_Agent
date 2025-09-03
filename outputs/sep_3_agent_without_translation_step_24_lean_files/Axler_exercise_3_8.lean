import Mathlib

/-!
Exercise 3.8 (Axler): Suppose that V is finite dimensional and that
T : V →ₗ[K] W. Prove that there exists a subspace U of V such that
U ∩ ker T = {0} and range T = {T u | u ∈ U}.

We only state the result (no proof).
-/

open LinearMap Submodule

theorem axler_exercise_3_8 {K : Type*} [DivisionRing K] {V W : Type*}
  [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W]
  [FiniteDimensional K V] (T : V →ₗ[K] W) :
  ∃ U : Submodule K V, (U ⊓ LinearMap.ker T) = ⊥ ∧ LinearMap.range T = Submodule.map T U := by
  sorry
