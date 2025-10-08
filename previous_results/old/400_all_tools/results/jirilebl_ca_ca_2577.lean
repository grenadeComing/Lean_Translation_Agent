import Mathlib
open Set Filter Metric Complex
open scoped Topology

/-- Let U ⊂ ℂ be an open set and f : U → ℂ be a holomorphic function. If |f| attains a local maximum at some point z0 ∈ U, then f is constant in a neighborhood of z0. -/
theorem eq_const_of_isLocalMax_norm {f : ℂ → ℂ} {z0 : ℂ} {U : Set ℂ} (hU : IsOpen U)
    (hf : ∀ z, z ∈ U → DifferentiableAt ℂ f z) (hU0 : z0 ∈ U)
    (hfm : IsLocalMax (norm ∘ f) z0) : ∀ᶠ z in 𝓝 z0, f z = f z0 := by sorry
