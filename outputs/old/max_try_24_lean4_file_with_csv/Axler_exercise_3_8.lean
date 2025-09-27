import Mathlib

variable (K : Type*) [Field K]
variable {V W : Type*} [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W]
variable [FiniteDimensional K V]

open LinearMap Submodule

/-- Axler, Exercise 3.8: If V is finite dimensional and T : V →ₗ W, then there exists a submodule U of V
    such that U ∩ ker T = {0} and range T = {T u | u ∈ U} (i.e. T.range = Submodule.map T U). -/
theorem axler_exercise_3_8 (T : V →ₗ[K] W) :
  ∃ (U : Submodule K V), U ⊓ LinearMap.ker T = ⊥ ∧ LinearMap.range T = Submodule.map T U := by sorry
