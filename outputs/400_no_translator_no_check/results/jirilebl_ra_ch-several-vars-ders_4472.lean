import Mathlib

open Set Filter

/--
Let F : R^n → R^n be differentiable and suppose DF exists and is continuous on a convex set U.
Show that ||F(x+h) - F(x) - DF(x) h|| = o(||h||) uniformly on compact subsets of U as h → 0.
-/
theorem jirilebl_ra_ch_several_vars_ders_4472 {n : ℕ}
  (U : Set (Fin n → ℝ)) (hU : Convex ℝ U)
  {F : (Fin n → ℝ) → (Fin n → ℝ)}
  (h_diff : DifferentiableOn ℝ F U) (h_cont : ContinuousOn (fun x => fderiv ℝ F x) U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ h : Fin n → ℝ, ‖h‖ < δ → ∀ x ∈ K,
      ‖F (x + h) - F x - (fderiv ℝ F x) h‖ ≤ ε * ‖h‖ := by
  sorry
