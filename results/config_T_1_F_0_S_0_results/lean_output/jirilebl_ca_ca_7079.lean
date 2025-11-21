import Mathlib

/-
Suppose γ : [a,b] → ℂ \ {0} is a piecewise smooth curve and θ : [a,b] → ℝ is continuous
such that exp(i * θ(t)) = γ(t) / |γ(t)| for all t ∈ [a,b]. Suppose γ is simple and does
not go through the origin. Then there exists a tilde θ : [a,b] → ℝ such that
exp(i * tilde θ(t)) = γ(t) / |γ(t)| for all t, and tilde θ(a) = θ(a), and
tilde θ(b) = tilde θ(a) + 2π iff the origin is inside the region bounded by γ.
-/

theorem simple_closed_curve_angle_lift {a b : ℝ} {γ : ℝ → Complex} {θ : ℝ → ℝ}
  (h_cont_γ : ContinuousOn γ (Icc a b))
  (h_nonzero : ∀ t ∈ Icc a b, γ t ≠ 0)
  (h_cont_θ : ContinuousOn θ (Icc a b))
  (h_exp : ∀ t ∈ Icc a b, Complex.exp (Complex.I * θ t) = γ t / Complex.abs (γ t))
  (h_simple_closed : γ a = γ b ∧ (∀ s t, s ∈ Ioo a b → t ∈ Ioo a b → s ≠ t → γ s ≠ γ t)) :
  ∃ (θ' : ℝ → ℝ),
    ContinuousOn θ' (Icc a b) ∧
    (∀ t ∈ Icc a b, Complex.exp (Complex.I * θ' t) = γ t / Complex.abs (γ t)) ∧
    θ' a = θ a ∧
    (θ' b = θ' a + 2 * Real.pi ↔ winding_number γ 0 = 1) := by sorry
