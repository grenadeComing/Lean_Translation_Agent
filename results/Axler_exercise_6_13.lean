import Mathlib

variable {𝕜 : Type*} [RCLike 𝕜]
variable {E : Type*} [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]

open Set Submodule

theorem Axler_exercise_6_13 {m : ℕ} (e : Fin m → E) (v : E) (h : Orthonormal 𝕜 e) :
  (‖v‖ ^ 2 = ∑ i : Fin m, (norm (inner 𝕜 v (e i))) ^ 2) ↔ v ∈ span 𝕜 (range e) := by sorry
