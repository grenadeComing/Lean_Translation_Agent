import Mathlib
open Set Filter
open scoped Topology

/-- Let U ⊂ ℂ be an open set and f : U → ℂ be a holomorphic function. If |f| attains a local maximum at some point z0 ∈ U, then f is constant in a neighborhood of z0. -/
theorem maximum_modulus_local {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : IsLocalMax (fun z => ‖f z‖) z0) : ∀ᶠ z in 𝓝 z0, f z = f z0 := by sorry
