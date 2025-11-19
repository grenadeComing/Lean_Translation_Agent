import Mathlib

open Metric Set

/-- Maximum modulus principle (local version).
If U ⊆ ℂ is open and f : U → ℂ is holomorphic (differentiable on U),
and |f| attains a local maximum at z0 ∈ U, then f is constant in a neighborhood of z0. -/
lemma maximum_modulus_principle_local {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r > 0, ball z0 r ⊆ U ∧ ∀ z ∈ ball z0 r, |f z| ≤ |f z0|) :
  ∃ r > 0, ∀ z ∈ ball z0 r, f z = f z0 := by sorry
