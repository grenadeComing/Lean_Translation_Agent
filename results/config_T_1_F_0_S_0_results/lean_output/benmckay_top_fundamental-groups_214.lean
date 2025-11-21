import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H] {G : Type*} [TopologicalSpace G]
variable {I : ModelWithCorners 𝕜 E H} {J : ModelWithCorners 𝕜 F G}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {N : Type*} [TopologicalSpace N] [ChartedSpace G N]
variable [SmoothManifoldWithCorners I M] [SmoothManifoldWithCorners J N]

/-- Let φ : M → N be a smooth map of manifolds with dim M = dim N. There is a dense set
    of points p₀ ∈ M such that φ is a local diffeomorphism in a neighborhood of each such p₀. -/
theorem dense_set_of_local_diffeomorph_points (φ : M → N) (hφ : Smooth I J φ)
  (hdim : chartedSpaceDim M = chartedSpaceDim N) :
  Dense { p : M | IsLocalDiffeomorph I J φ p } := by sorry
