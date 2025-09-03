import Mathlib

variable {𝕜 : Type _} {V : Type _}
  [RCLike 𝕜] [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [FiniteDimensional 𝕜 V]

theorem Axler_exercise_6_16 (U : Submodule 𝕜 V) : U.orthogonal = ⊥ ↔ U = ⊤ := by sorry
