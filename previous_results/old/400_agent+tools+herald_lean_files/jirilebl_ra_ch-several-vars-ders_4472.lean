import Mathlib

open Metric Set

variable {n : ℕ}

theorem differentiable_continuous_derivative_uniform_o_on_compacts
  {U : Set (Fin n → ℝ)} (hU : Convex ℝ U)
  {F : (Fin n → ℝ) → (Fin n → ℝ)}
  (hF : ∀ x ∈ U, HasFDerivAt F (fderiv ℝ F x) x)
  (hcont : ContinuousOn (fun x => fderiv ℝ F x) U) :
  ∀ K, IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ < δ → x + h ∈ U →
      ‖F (x + h) - F x - fderiv ℝ F x h‖ ≤ ε * ‖h‖ := by sorry
