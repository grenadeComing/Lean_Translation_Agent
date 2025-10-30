import Mathlib
open TopologicalSpace Metric Set Filter Asymptotics Function MeasureTheory AffineMap Bornology
open scoped Topology Filter NNReal Real

/-- Let U ⊆ ℂ be an open set and f : U → ℂ be a holomorphic function. If |f| attains a local maximum at some point z0 ∈ U, then f is constant in a neighborhood of z0. -/
theorem eq_const_of_isLocalMax_norm {f : ℂ → ℂ} {z₀ : ℂ} {U : Set ℂ} (hU : IsOpen U)
    (hf : ∀ z, z ∈ U → DifferentiableAt ℂ f z) (hz₀ : z₀ ∈ U) (h : IsLocalMax (norm ∘ f) z₀) :
    ∀ᶠ z in 𝓝 z₀, f z = f z₀ := sorry