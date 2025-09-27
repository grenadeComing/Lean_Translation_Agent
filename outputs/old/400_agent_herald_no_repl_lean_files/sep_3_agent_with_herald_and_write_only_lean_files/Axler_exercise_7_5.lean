import Mathlib

variable {𝕜 : Type*} [IsROrC 𝕜]
variable {V : Type*} [InnerProductSpace 𝕜 V] [FiniteDimensional 𝕜 V]

/--
If dim V ≥ 2, then the set of normal operators on V is not a subspace of End(V).
This file states the result; the proof is omitted.
-/
theorem Axler_exercise_7_5 (h : 2 ≤ finrank 𝕜 V) :
  ¬ ( { T : V →ₗ[𝕜] V | IsNormal T } : Set (V →ₗ[𝕜] V) ).IsSubmodule := by sorry
