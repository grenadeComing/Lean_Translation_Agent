import Mathlib

open Complex Metric

theorem holomorphic_zero_set_is_discrete {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (c : ℂ) :
  ∀ p ∈ U, f p = c → ∃ δ > 0, ∀ z, z ∈ U → z ≠ p → dist z p < δ → f z ≠ c := by sorry

theorem holomorphic_local_factor {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U)
  {p : ℂ} (hp : p ∈ U) (c : ℂ) (hpz : f p = c) :
  ∃ (k : ℕ) (δ : ℝ) (g : ℂ → ℂ), 0 < δ ∧ IsHolomorphicOn g (Metric.ball p δ) ∧ g p ≠ 0 ∧
    (∀ z ∈ Metric.ball p δ, f z - c = (z - p) ^ k * g z) := by sorry