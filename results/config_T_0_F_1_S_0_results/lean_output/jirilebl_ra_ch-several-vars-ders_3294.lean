import Mathlib

open MeasureTheory

theorem jirilebl_ra_ch_several_vars_ders_3294 {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  [PseudoEMetricSpace (Fin n → ℝ)] [PseudoEMetricSpace ℝ]
  [NormedAddCommGroup (Fin n → ℝ)] [NormedSpace ℝ (Fin n → ℝ)]
  [MeasureTheory.MeasureSpace (Fin n → ℝ)]
  (hU_convex : Convex ℝ U)
  {K : NNReal} (h_lip : LipschitzOnWith K f U) :
  (∀ᵐ x ∂(MeasureTheory.Measure.restrict (MeasureTheory.MeasureSpace.volume (α := Fin n → ℝ)) U),
    DifferentiableAt ℝ f x) := by sorry
