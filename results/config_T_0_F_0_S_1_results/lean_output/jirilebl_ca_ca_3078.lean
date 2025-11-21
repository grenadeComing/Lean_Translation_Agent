import Mathlib

open Complex Metric

theorem holomorphic_on_analytic_power_series (U : Set ℂ) {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : IsHolomorphicOn f U) :
  ∀ z0 ∈ U, let R := dist (z0 : ℂ) (Uᶜ) in
    ∃ (a : ℕ → ℂ),
      (∀ z, z ∈ Metric.ball z0 R → HasSum (fun n => a n * (z - z0) ^ n) (f z)) := by sorry
