import Mathlib

open Set

theorem uniform_fderiv_on_compact {n : ℕ}
  {U : Set (Fin n → ℝ)} {F : (Fin n → ℝ) → (Fin n → ℝ)}
  (hU_conv : Convex ℝ U)
  (hder : ∀ x ∈ U, HasFDerivAt F (fderiv ℝ F x) x)
  (hcont : ContinuousOn (fun x => fderiv ℝ F x) U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ < δ → x + h ∈ U →
      ‖F (x + h) - F x - (fderiv ℝ F x) h‖ ≤ ε * ‖h‖ := by sorry
