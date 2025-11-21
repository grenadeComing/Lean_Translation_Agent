import Mathlib

/-
Suppose L ∈ ℂ. Show that lim_{z→∞} f(z) = L in the sense of the Riemann sphere
iff for every ε > 0 there exists an M such that |f(z)-L| < ε whenever |z| > M.
-/

open Complex

theorem jirilebl_ca_ca_1469 (f : ℂ → ℂ) (L : ℂ) :
  (∀ U : Set ℂ, IsOpen U → L ∈ U → ∃ M : ℝ, ∀ z : ℂ, ‖z‖ > M → f z ∈ U) ↔
  (∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, ‖z‖ > M → ‖f z - L‖ < ε) := by
  sorry
