import Mathlib

open Set

theorem little_o_uniform_on_compact {n : ℕ}
  (F : (Fin n → ℝ) → (Fin n → ℝ))
  (DF : (Fin n → ℝ) → ((Fin n → ℝ) →L[ℝ] (Fin n → ℝ)))
  (U : Set (Fin n → ℝ))
  (hU_convex : Convex ℝ U)
  (hF_diff : DifferentiableOn ℝ F U)
  (hDF_cont : ContinuousOn DF U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ < δ → x + h ∈ U →
      ‖F (x + h) - F x - DF x h‖ ≤ ε * ‖h‖ := by sorry