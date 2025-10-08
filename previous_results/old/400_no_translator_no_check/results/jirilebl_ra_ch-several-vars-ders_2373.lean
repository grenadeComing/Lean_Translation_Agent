import Mathlib

variables {𝕜 : Type _} [NontriviallyNormedField 𝕜]
variables {E : Type _} [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
variables {F : Type _} [SeminormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- If a linear map f : E → F is bounded (in the sense of IsBoundedLinearMap), then f is continuous. -/
theorem bounded_linear_map_is_continuous {f : E → F} (hf : IsBoundedLinearMap 𝕜 f) :
  Continuous f := by sorry
