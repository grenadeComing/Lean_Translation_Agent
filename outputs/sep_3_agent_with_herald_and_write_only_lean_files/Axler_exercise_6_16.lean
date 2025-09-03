import Mathlib

/-- Suppose U is a subspace of V. Prove that U^⊥ = {0} iff U = V. -/
theorem Axler_exercise_6_16 {K : Type*} [IsROrC K] {V : Type*} [InnerProductSpace K V]
  [FiniteDimensional K V] (U : Submodule K V) :
  Uᗮ = ⊥ ↔ U = ⊤ := by sorry
