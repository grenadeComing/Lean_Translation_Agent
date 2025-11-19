import Mathlib

/-- Let U ⊂ ℂ be an open set and f : U → ℂ be a holomorphic function. If |f| attains a local maximum at some point z0 ∈ U, then f is constant in a neighborhood of z0. -/
theorem max_modulus_local {U : Set ℂ} {f : ℂ → ℂ} {z0 : ℂ}
  (hU : IsOpen U) (hz0 : z0 ∈ U) (hf : DifferentiableOn ℂ f U)
  (h : ∃ r > 0, Ball z0 r ⊆ U ∧ ∀ z ∈ Ball z0 r, |f z| ≤ |f z0|) :
  ∃ r > 0, Ball z0 r ⊆ U ∧ ∀ z ∈ Ball z0 r, f z = f z0 := by sorry