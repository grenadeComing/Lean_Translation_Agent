import Mathlib

/-!
Axler exercise 6.16: Suppose U is a subspace of V. Prove that U^⊥ = {0} iff U = V.
Translated to Mathlib4: for a submodule K of an inner product space, K.orthogonal = ⊥ ↔ K = ⊤.
-/

variable {𝕜 : Type*} {E : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

theorem submodule.orthogonal_eq_bot_iff_eq_top (K : Submodule 𝕜 E) :
  K.orthogonal = ⊥ ↔ K = ⊤ := by sorry
