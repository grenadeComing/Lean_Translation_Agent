import Mathlib

open Set Metric

theorem jirilebl_ca_ca_6258 (U : Set ℂ) (f : ℂ → ℂ) (p : ℂ)
  (hU : IsOpen U) (hconn : IsConnected U) (hf : DifferentiableOn ℂ f U)
  (hnon : ∃ z ∈ U, f z ≠ f p) (hp : p ∈ U) :
  ∃ δ > 0, Metric.ball p δ ⊆ U ∧ IsOpenMap (fun z : {z : ℂ // z ∈ Metric.ball p δ \ {p}} => f z.val) := by sorry
