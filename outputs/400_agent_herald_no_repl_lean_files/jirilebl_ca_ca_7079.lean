import Mathlib

open Complex Set Topology

/--
Suppose γ : [a,b] → ℂ \ {0} is a piecewise smooth curve and θ : [a,b] → ℝ is continuous
such that exp (I * θ t) = γ t / |γ t| for all t ∈ [a,b]. Suppose γ is simple and does
not go through the origin. Then there exists a continuous lift \tilde θ : [a,b] → ℝ of the
unit-normalized curve with \tilde θ(a) = θ(a), and moreover
\tilde θ(b) = \tilde θ(a) + 2π ↔ the winding number of γ about 0 equals 1 (i.e. the origin
lies in the bounded region enclosed by γ).
-/
theorem lift_argument_simple_closed_curve {a b : ℝ} {γ : ℝ → ℂ}
  (hγ_nonzero : ∀ t ∈ Set.Icc a b, γ t ≠ 0)
  (hγ_cont : ContinuousOn γ (Set.Icc a b))
  (hγ_simple_closed : IsSimpleClosedCurve (Set.Icc a b) γ)
  (θ : ℝ → ℝ)
  (hθ_cont : ContinuousOn θ (Set.Icc a b))
  (hθ_spec : ∀ t ∈ Set.Icc a b, Complex.exp (I * θ t) = γ t / Complex.abs (γ t)) :
  ∃ θtilde : ℝ → ℝ,
    ContinuousOn θtilde (Set.Icc a b) ∧
    (∀ t ∈ Set.Icc a b, Complex.exp (I * θtilde t) = γ t / Complex.abs (γ t)) ∧
    θtilde a = θ a ∧
    (θtilde b = θtilde a + 2 * π ↔ WindingNumber.winding_number γ 0 = 1) := by sorry
