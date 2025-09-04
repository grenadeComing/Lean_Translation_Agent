import Mathlib

open Topology

variable {n : ℕ}

theorem second_order_taylor_uniform_on_compacts
  (n : ℕ) (f : (Fin n → ℝ) → ℝ) {U : Set (Fin n → ℝ)}
  (hfd : ContDiffOn ℝ 2 f U) (hUconv : Convex ℝ U) :
  ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ,
      ‖h‖ < δ → x + h ∈ U →
      |f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h| ≤ ε * ‖h‖^2 := by
  sorry
