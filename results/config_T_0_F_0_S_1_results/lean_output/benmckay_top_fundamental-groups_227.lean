import Mathlib

/-!
Statement (Whitney approximation / smoothing):
Let M and N be smooth manifolds (over the same nontrivially normed field 𝕜).
If f : M → N is continuous, then f is homotopic to a smooth map M → N.
-/

theorem continuous_map_homotopic_to_smooth {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  {M : Type*} [TopologicalSpace M] [ChartedSpace (ModelWithCorners 𝕜 E) M]
    [SmoothManifoldWithCorners 𝕜 E M]
  {N : Type*} [TopologicalSpace N] [ChartedSpace (ModelWithCorners 𝕜 F) N]
    [SmoothManifoldWithCorners 𝕜 F N]
  (f : M → N) (hf : Continuous f) :
  ∃ g : M → N, ContMDiff (ModelWithCorners 𝕜 E) (ModelWithCorners 𝕜 F) ⊤ g ∧ Homotopic f g := by sorry
