import Mathlib

open Complex Set Metric

/-- If f is holomorphic on an open set U and f'(p) ≠ 0, then f is locally injective near p. -/
theorem holomorphic_on.local_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f U) {p : ℂ} (hp : p ∈ U) (hfp : deriv f p ≠ 0) :
  ∃ δ > 0, InjOn f (ball p δ) := by sorry
