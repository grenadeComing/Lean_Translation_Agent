import Mathlib

open Set
open TopologicalSpace

/-!
# Approximation of continuous maps by smooth maps (statement only)

We state that any continuous map between smooth manifolds is homotopic to a smooth map.
This file only contains the statement; the proof is marked `sorry`.
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {H : Type*} [TopologicalSpace H] (I : ModelWithCorners 𝕜 E H)
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {H' : Type*} [TopologicalSpace H'] (I' : ModelWithCorners 𝕜 E' H')
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {N : Type*} [TopologicalSpace N] [ChartedSpace H' N]

/-- The unit interval as a subtype of ℝ. -/
def unit_interval := { t : ℝ // 0 ≤ t ∧ t ≤ 1 }

/-- Any continuous map between smooth manifolds is homotopic to a smooth map.

This is the usual consequence of the Whitney approximation theorem. We state it here
using `ContMDiff` for smoothness and a direct homotopy as a continuous map
`H : M × unit_interval → N` with `H(_, 0) = f` and `H(_, 1) = g`.
-/
theorem continuous_map_homotopic_to_smooth (f : M → N) (hf : Continuous f) :
  ∃ (g : M → N), ContMDiff I I' ⊤ g ∧
    ∃ (H : M × unit_interval → N),
      Continuous H ∧ (∀ x, H (x, ⟨0, by norm_num⟩) = f x) ∧ (∀ x, H (x, ⟨1, by norm_num⟩) = g x) :=
  by sorry
