import Mathlib

variable (IsHolomorphicOn : (Complex → Complex) → Set Complex → Prop)

open Set Metric

theorem jirilebl_ca_ca_4834 {U : Set Complex} (hU : IsOpen U) {f : Complex → Complex} (hf : IsHolomorphicOn f U)
  (c : Complex) :
  (∀ p, p ∈ U → f p = c → ∃ (δ : ℝ), 0 < δ ∧ (Metric.ball p δ ∩ U ∩ {z | f z = c}) = ({p} : Set Complex))
  ∧
  (∀ p, p ∈ U → f p = c → ∃ (k : ℕ) (δ : ℝ) (g : Complex → Complex),
      0 < δ ∧ IsHolomorphicOn g (Metric.ball p δ) ∧ (∀ z, z ∈ Metric.ball p δ → f z - c = (z - p) ^ k * g z) ∧ g p ≠ 0) := by
  sorry
