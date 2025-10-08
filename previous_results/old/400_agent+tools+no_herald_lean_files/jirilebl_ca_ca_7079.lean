import Mathlib

/--
Suppose γ : [a,b] → ℂ \ {0} is a piecewise smooth curve and θ : [a,b] → ℝ is continuous
such that e^{i θ(t)} = γ(t) / |γ(t)| for all t ∈ [a,b]. Suppose γ is simple and does not
go through the origin. Then there exists a lift \widetilde{θ} with the same property and
\widetilde{θ}(a) = θ(a), and moreover \widetilde{θ}(b) = \widetilde{θ}(a) + 2π iff the
origin is inside the region bounded by γ.
-/
theorem exists_lifted_arg_of_simple_closed_curve
  {a b : ℝ} {γ : ℝ → ℂ}
  (hcont : ContinuousOn γ (Set.Icc a b))
  (hclosed : γ a = γ b)
  (hinj : Set.InjOn γ (Set.Icc a b \ {a, b}))
  (hnonzero : ∀ t ∈ Set.Icc a b, γ t ≠ 0)
  (θ : ℝ → ℝ) (hθ : ContinuousOn θ (Set.Icc a b))
  (heq : ∀ t ∈ Set.Icc a b, Complex.exp (Complex.I * (θ t : ℂ)) = γ t / Complex.abs (γ t))
  (origin_inside : Prop) :
  ∃ θtilde : ℝ → ℝ,
    ContinuousOn θtilde (Set.Icc a b) ∧
    (∀ t ∈ Set.Icc a b, Complex.exp (Complex.I * (θtilde t : ℂ)) = γ t / Complex.abs (γ t)) ∧
    θtilde a = θ a ∧
    (θtilde b = θtilde a + 2 * Real.pi ↔ origin_inside) := by
  sorry
