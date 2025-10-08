import Mathlib

/-!
Let X and Y be normed vector spaces over a (nontrivially) normed field 𝕜 and
A : X →L[𝕜] Y a continuous linear map. If A is bijective, then its inverse
A⁻¹ : Y → X is bounded (i.e. continuous as a linear map).

We state this as existence of a continuous linear inverse B : Y →L[𝕜] X
which is a two-sided inverse of A as functions. We assume completeness of X and Y
(Banach spaces); the proof is omitted (`sorry`).
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]
  [CompleteSpace X] [CompleteSpace Y]

open ContinuousLinearMap

theorem bounded_inverse_of_bijective (A : X →L[𝕜] Y)
  (hbij : Function.Bijective (A : X → Y)) :
  ∃ (B : Y →L[𝕜] X), Function.LeftInverse (B : Y → X) (A : X → Y) ∧ Function.RightInverse (B : Y → X) (A : X → Y) :=
by sorry
