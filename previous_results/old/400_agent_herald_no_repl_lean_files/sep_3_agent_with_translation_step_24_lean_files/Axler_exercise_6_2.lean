import Mathlib

variable {𝕜 : Type*} [RCLike 𝕜]
variable {V : Type*} [SeminormedAddCommGroup V] [SMul 𝕜 V] [InnerProductSpace 𝕜 V]

theorem axler_exercise_6_2 (u v : V) :
  Inner.inner 𝕜 u v = 0 ↔ ∀ a : 𝕜, ‖u‖ ≤ ‖u + a • v‖ := by sorry
