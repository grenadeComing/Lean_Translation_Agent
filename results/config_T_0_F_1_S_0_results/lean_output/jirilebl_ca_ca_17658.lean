import Mathlib

open Metric

theorem jirilebl_ca_ca_17658 {ε : ℝ} {z0 : ℂ} {f : ℂ → ℂ} (hε : ε > 0)
  (h_analytic : AnalyticOn ℂ f (ball z0 ε))
  (h_nonconst : ∃ z ∈ ball z0 ε, f z ≠ f z0)
  (h0 : f z0 ≠ 0) :
  ∃ w ∈ ball z0 ε, Norm.norm (f w) < Norm.norm (f z0) := by sorry
