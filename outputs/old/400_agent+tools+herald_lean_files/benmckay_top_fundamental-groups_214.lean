import Mathlib

universe u v w
open Set

/-- Let φ : M → M' be a smooth map of manifolds with dim M < dim M'. Then the image is nowhere dense. -/
theorem isNowhereDense_range_of_cont_mdiff_dim_lt {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E E' : Type u} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E]
  [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] [FiniteDimensional 𝕜 E']
  {H : Type v} [TopologicalSpace H] (I : ModelWithCorners 𝕜 E H)
  {H' : Type w} [TopologicalSpace H'] (I' : ModelWithCorners 𝕜 E' H')
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
  {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']
  {f : M → M'} (hf : ContMDiff I I' (⊤ : WithTop ℕ∞) f)
  (h_dim : Module.rank 𝕜 E < Module.rank 𝕜 E') :
  IsNowhereDense (range f) := by sorry
