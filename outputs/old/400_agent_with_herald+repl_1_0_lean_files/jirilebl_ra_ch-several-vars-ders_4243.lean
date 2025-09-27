import Mathlib

/-- Second-order Taylor expansion with uniform little-o remainder on compacts.
Statement only; proof omitted.
-/

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem jirilebl_ra_ch_several_vars_ders_4243
  {U : Set E} {f : E → ℝ}
  (H : E → E → E → ℝ)
  (hf : DifferentiableOn ℝ f U)
  (H_cont : ContinuousOn (fun x => H x) U)
  (conv : Convex ℝ U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ x ∈ K, IsLittleO (fun h : E => f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * H x h h)
                                   (fun h => ‖h‖^2) (𝓝 (0 : E)) := by sorry
