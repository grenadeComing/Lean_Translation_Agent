import Mathlib
open Metric

/-!
Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. If |f| attains a local maximum at z0 ∈ U,
prove that f is constant in a neighborhood of z0.
-/

theorem max_modulus_local_constant {U : Set ℂ} {f : ℂ → ℂ} {z0 : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hz0 : z0 ∈ U)
  (hmax : ∃ r, 0 < r ∧ ball z0 r ⊆ U ∧ ∀ z ∈ ball z0 r, ‖f z‖ ≤ ‖f z0‖) :
  ∃ r, 0 < r ∧ ∀ z ∈ ball z0 r, f z = f z0 := by sorry
