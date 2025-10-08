import Mathlib

open Set

/-- Maximum modulus principle (local form): if f is complex-differentiable on an open set U
and |f| has a local maximum at z0 ∈ U, then f is constant on a neighbourhood of z0. -/
theorem max_modulus_local {U : Set ℂ} (hU : IsOpen U) (f : ℂ → ℂ)
  (hf : DifferentiableOn ℂ f U) (z0 : ℂ) (hz0 : z0 ∈ U)
  (hmax : IsLocalMax (fun z => ‖f z‖) z0) :
  ∃ V : Set ℂ, IsOpen V ∧ z0 ∈ V ∧ (∀ z ∈ V, f z = f z0) := by sorry
