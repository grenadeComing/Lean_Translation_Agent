import Mathlib

open Set
open Metric

variable {n : ℕ}

variable {U : Set (Fin n → ℝ)} {F : (Fin n → ℝ) → (Fin n → ℝ)}

theorem fderiv_continuous_on_convex_uniform_o_on_compacts
  (U_convex : Convex ℝ U)
  (h_has : ∀ x ∈ U, HasFDerivAt F (fderiv ℝ F x) x)
  (h_cont : ContinuousOn (fun x => fderiv ℝ F x) U) :
  ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
    (∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ < δ → x + h ∈ U →
      ‖F (x + h) - F x - fderiv ℝ F x (h)‖ ≤ ε * ‖h‖) := by sorry
