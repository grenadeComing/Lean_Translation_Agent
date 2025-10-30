import Mathlib
open Set

theorem injOn_disk_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  {p : ℂ} (hp : p ∈ U) (h : deriv f p ≠ 0) : ∃ δ > 0, InjOn f { z : ℂ | dist z p < δ } := by
  sorry
