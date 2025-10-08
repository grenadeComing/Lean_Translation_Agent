import Mathlib

variables {K : Type _} [Field K] {V W : Type _} [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W]
  [FiniteDimensional K V]

open LinearMap Submodule

theorem Axler_exercise_3_8 (T : V →ₗ[K] W) :
  ∃ (U : Submodule K V), U ⊓ T.ker = ⊥ ∧ T.range = Submodule.map T U := by sorry
