import Mathlib

/-!
Translate: Suppose γ : [a,b] → ℂ \ {0} is a piecewise smooth curve and θ : [a,b] → ℝ is continuous
such that e^{i θ(t)} = γ(t) / |γ(t)| for all t. Suppose γ is simple and does not go
through the origin. Show there exists θ~ : [a,b] → ℝ with e^{i θ~(t)} = γ(t)/|γ(t)| for all t
and θ~(a)=θ(a), and additionally θ~(b)=θ~(a)+2π iff the origin is inside the region
bounded by γ.
-/

open Complex Set

variable {a b : ℝ} {γ : ℝ → Complex} {θ : ℝ → ℝ}

/-- Existence of a continuous lift (argument) of γ/|γ| on [a,b] matching θ at a. -/
theorem exists_lift_argument (hcont : ContinuousOn γ (Icc a b)) (hne : ∀ t ∈ Icc a b, γ t ≠ 0)
  (hθ : ContinuousOn θ (Icc a b)) (hphase : ∀ t ∈ Icc a b,
    Complex.exp (θ t * Complex.I) = γ t / (Complex.ofReal (Complex.abs (γ t)))) :
  ∃ θ' : ℝ → ℝ, ContinuousOn θ' (Icc a b) ∧ (∀ t ∈ Icc a b,
    Complex.exp (θ' t * Complex.I) = γ t / (Complex.ofReal (Complex.abs (γ t)))) ∧ θ' a = θ a := by sorry

/-- If γ is a simple closed curve (γ a = γ b and injective on (a,b)), then any continuous
lift θ' of the unit vector γ/|γ| satisfies θ' b = θ' a + 2π iff the origin lies in the interior of the
region bounded by γ. -/
theorem lift_endpoints_eq_iff_origin_inside (a_lt_b : a < b)
  (hcont : ContinuousOn γ (Icc a b)) (hne : ∀ t ∈ Icc a b, γ t ≠ 0)
  (hclosed : γ a = γ b) (hinj : ∀ s t, s ∈ Ioo a b → t ∈ Ioo a b → s ≠ t → γ s ≠ γ t)
  (θ' : ℝ → ℝ) (hθ'cont : ContinuousOn θ' (Icc a b))
  (hθ'phase : ∀ t ∈ Icc a b, Complex.exp (θ' t * Complex.I) = γ t / (Complex.ofReal (Complex.abs (γ t)))) :
  (θ' b = θ' a + 2 * Real.pi) ↔ ((0 : Complex) ∈ interior (range γ)) := by sorry
