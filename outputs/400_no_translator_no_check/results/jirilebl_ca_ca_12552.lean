import Mathlib

open Finset

theorem jirilebl_ca_ca_12552 (f : ℂ → ℂ) (p : FormalMultilinearSeries ℂ ℂ ℂ)
  (hp : HasFPowerSeriesAt f p 0) (h0 : p.coeff 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, ‖z‖ ≤ 1 →
    ‖1 - Finset.sum (range (m + 1)) (fun k => (p.coeff k) / (p.coeff 0) * z ^ k)‖ ≤ C * ‖z‖ ^ (m + 1) := by
  sorry
