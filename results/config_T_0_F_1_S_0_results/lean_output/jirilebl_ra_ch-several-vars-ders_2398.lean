import Mathlib

/-!
Let X and Y be normed vector spaces over a nontrivial normed field 𝕜, and
A : E →L[𝕜] F a bounded linear operator. If A is bijective and E,F are
complete (Banach), then the inverse map A^{-1} : F → E is a bounded linear
map.
-/

theorem bounded_inverse_of_bijective {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} {F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 F] [CompleteSpace E] [CompleteSpace F]
  (A : E →L[𝕜] F) (hA : Function.Bijective (A : E → F)) :
  ∃ (B : F →L[𝕜] E), (B.comp A = ContinuousLinearMap.id 𝕜 E) ∧ (A.comp B = ContinuousLinearMap.id 𝕜 F) := by sorry
