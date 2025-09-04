import Mathlib

open Metric Set

theorem zeros_of_analytic_are_isolated (U : Set ℂ) {f : ℂ → ℂ} {c : ℂ}
  (hU : IsOpen U) (hf : AnalyticOn ℂ f U) :
  ∀ z ∈ U, f z = c → ∃ δ > 0, Metric.ball z δ ∩ {w | w ∈ U ∧ f w = c} = {z} := by sorry

/-- Local factorization of an analytic function at a zero: f(z)-c = (z-p)^k * g(z) with g analytic and g(p) ≠ 0. -/
theorem analytic_local_factorization {U : Set ℂ} {f : ℂ → ℂ} {p c : ℂ}
  (hU : IsOpen U) (hf : AnalyticOn ℂ f U) (hp : p ∈ U) (hfp : f p = c) :
  ∃ (k : ℕ) (δ : ℝ) (g : ℂ → ℂ), 0 < δ ∧ AnalyticOn ℂ g (Metric.ball p δ) ∧
    (∀ z ∈ Metric.ball p δ, f z - c = (z - p) ^ k * g z) ∧ g p ≠ 0 := by sorry
