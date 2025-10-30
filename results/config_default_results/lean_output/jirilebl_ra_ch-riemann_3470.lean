import Mathlib

-- Skeleton translation with a single-line sorry proof
 theorem convolution_well_defined
  (f : ℝ → ℝ) (g : ℝ → ℝ) (a b : ℝ)
  (hab : a ≤ b)
  (hf : RiemannIntegrable f)
  (hL1 : ∫ x : ℝ, |f x| dx < ∞)
  (hg : Continuous g)
  (hzero : ∀ x, x ∉ Icc a b → g x = 0) :
  ∀ x : ℝ, Integrable fun t => f t * g (x - t) := by sorry
