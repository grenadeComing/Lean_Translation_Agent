import Mathlib

variable {𝕜 : Type*} [IsROrC 𝕜]
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [FiniteDimensional 𝕜 V]

/-- Exercise: Let U be a subspace of V. Then Uᗮ = ⊥ iff U = ⊤. -/
theorem axler_exercise_6_16 (U : Submodule 𝕜 V) : Submodule.orthogonal U = ⊥ ↔ U = ⊤ := by sorry
