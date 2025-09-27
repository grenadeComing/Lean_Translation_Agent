import Mathlib

open Metric Set

theorem holomorphic_local_injective {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U) (hder : deriv f p ≠ 0) :
  ∃ δ : ℝ, 0 < δ ∧ Set.InjOn f (ball p δ) := by sorry
