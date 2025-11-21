import Mathlib

open Filter

theorem jirilebl_ra_ch_der_478 (I : Set ℝ) (f : ℝ → ℝ) (c : ℝ) (hc : c ∈ I) (f' : ℝ)
  (hf : HasDerivWithinAt f f' I c) :
  ∃ a b : ℝ,
    (∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ I → |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c|) ∧
    (∃ g : ℝ → ℝ, Tendsto g (nhdsWithin c I) (nhds 0) ∧
      (∀ᶠ x in nhdsWithin c I, |a + b * (x - c) - f x| = |x - c| * g x)) := by sorry
