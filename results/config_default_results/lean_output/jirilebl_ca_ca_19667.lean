import Mathlib

/--
Let U ⊆ ℂ be open and f : ℂ → ℂ be holomorphic. If |f| attains a local maximum at z0 ∈ U, prove that f is constant in a neighborhood of z0.
-/
theorem max_modulus_principle_local_max_of_holomorphic
  {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : IsLocalMax (fun z => ‖f z‖) z0) :
  ∀ᶠ z in 𝓝 z0, f z = f z0 := by
  sorry
