import Mathlib

/--
Suppose γ : [a,b] → ℂ \ {0} is a piecewise smooth curve and θ : [a,b] → ℝ is continuous such that
e^{iθ(t)} = γ(t) / |γ(t)| for all t ∈ [a,b]. Suppose γ is simple and does not go through the origin.
There exists a ~θ : [a,b] → ℝ such that e^{i~θ(t)} = γ(t) / |γ(t)| for all t and ~θ(a)=θ(a), and in
addition ~θ(b) = ~θ(a) + 2π iff the origin is inside the region bounded by γ.

This file gives a formal translation of the statement; it does not provide a proof.
-/

theorem lift_angle_for_simple_closed_curve
  {a b : ℝ} {γ : ℝ → ℂ} {θ : ℝ → ℝ}
  (h_cont : ContinuousOn γ (Set.Icc a b))
  (h_nonzero : ∀ t ∈ Set.Icc a b, γ t ≠ 0)
  (h_theta : ∀ t ∈ Set.Icc a b, Complex.exp (Complex.I * θ t) = γ t / (Complex.abs (γ t) : ℝ))
  (is_simple : Prop) (origin_in_region : Prop) :
  ∃ (tilde_θ : ℝ → ℝ),
    (∀ t ∈ Set.Icc a b, Complex.exp (Complex.I * tilde_θ t) = γ t / (Complex.abs (γ t) : ℝ)) ∧
    (tilde_θ a = θ a) ∧
    ((tilde_θ b = tilde_θ a + 2 * Real.pi) ↔ origin_in_region) := by
  sorry
