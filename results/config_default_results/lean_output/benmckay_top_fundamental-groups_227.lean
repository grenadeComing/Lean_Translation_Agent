import Mathlib

-- Statement: Let M and N be smooth manifolds and let f ∈ C^0(M,N).
-- Then f is homotopic to a smooth map M → N.
-- (Only the statement is given; no proof.)

/-- A continuous map between smooth manifolds is homotopic to a smooth map. -/
theorem continuous_map_homotopic_to_smooth
  {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {H : Type*} [TopologicalSpace H]
  (I : ModelWithCorners 𝕜 E H)
  {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
  {H' : Type*} [TopologicalSpace H']
  (I' : ModelWithCorners 𝕜 E' H')
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
  {N : Type*} [TopologicalSpace N] [ChartedSpace H' N]
  (f : ContinuousMap M N) :
  ∃ (g : M → N) (homotopy_map : ContinuousMap (ℝ × M) N),
    ContMDiff I I' ⊤ g ∧
    (∀ x : M, homotopy_map (0, x) = f x) ∧
    (∀ x : M, homotopy_map (1, x) = g x) := by sorry
