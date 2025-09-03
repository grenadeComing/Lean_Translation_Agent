import Mathlib

variable {𝕜 : Type*} [IsROrC 𝕜]
variable {V : Type*} [InnerProductSpace 𝕜 V]

theorem Axler_exercise_6_13 {m : ℕ} (e : Fin m → V) (he : Orthonormal 𝕜 e) (v : V) :
  ‖v‖ ^ 2 = ∑ i : Fin m, ‖⟪v, e i⟫‖ ^ 2 ↔ v ∈ Submodule.span 𝕜 (Set.range e) := by sorry