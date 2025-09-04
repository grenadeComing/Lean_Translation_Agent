import Mathlib

/-!
Rademacher's theorem (translation): If f : E → ℝ is Lipschitz on a convex set U in a finite-dimensional
real normed space E, then f is differentiable almost everywhere on U (with respect to Lebesgue/volume).
-/

open MeasureTheory Set

theorem rademacher_on_convex {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [FiniteDimensional ℝ E] [MeasurableSpace E] [MeasureSpace E] [BorelSpace E]
  [SecondCountableTopology E] {f : E → ℝ} {U : Set E} (hU : Convex ℝ U)
  (L : NNReal) (hL : LipschitzOnWith L f U) :
  ∀ᵐ x ∂volume, x ∈ U → DifferentiableWithinAt ℝ f U x := by sorry
