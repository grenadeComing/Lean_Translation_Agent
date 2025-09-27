import Mathlib

theorem Axler_exercise_3_8 {K : Type _} [Field K] {V W : Type _} [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W] [FiniteDimensional K V] (T : V →ₗ[K] W) :
  ∃ (U : Submodule K V), U ⊓ LinearMap.ker T = ⊥ ∧ LinearMap.range T = Submodule.map T U := by sorry
