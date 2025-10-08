import Mathlib
open scoped Classical
open Metric

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant and f'(z0) = 0. Show that z0 is a zero of f' of some finite order.

Formalize using Mathlib: assume IsOpen U, AnalyticOn ℂ f U, z0 ∈ U, ¬ (∀ z ∈ U, f z = f z0), and deriv f z0 = 0. Conclude that there exists n : ℕ, n ≥ 1, and r > 0 and an analytic g on ball z0 r with g z0 ≠ 0 such that for all z with dist z z0 < r we have deriv f z = (z - z0) ^ n * g z. -/
theorem exists_ball_eq_zero_of_deriv_apply {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : AnalyticOn ℂ f U)
    {z₀ : ℂ} (hz₀ : z₀ ∈ U) (h_eq : ¬ ∀ z ∈ U, f z = f z₀) (h_deriv : deriv f z₀ = 0) :
    ∃ n : ℕ, n ≥ 1 ∧ ∃ r : ℝ, 0 < r ∧ ∃ g, AnalyticOn ℂ g (Metric.ball z₀ r) ∧ g z₀ ≠ 0 ∧ ∀ z, dist z z₀ < r → deriv f z = (z - z₀) ^ n * g z := by sorry
