import Mathlib

open Set

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic and nonconstant. Suppose α : [a,b] → U is a smooth curve and α'(t) ≠ 0 for all t ∈ [a,b]. Then f ∘ α changes argument strictly monotonically on [a,b] if and only if arg(f'(α(t)) * α'(t)) is constant. -/
theorem jirilebl_ca_ca_6177 {U : Set ℂ} {f : ℂ → ℂ} {α : ℝ → ℂ} {a b : ℝ}
  (U_open : IsOpen U)
  (f_deriv : ℂ → ℂ)
  (f_differentiable : ∀ z, z ∈ U → HasDerivAt f (f_deriv z) z)
  (f_nonconst : ∃ z w, z ∈ U ∧ w ∈ U ∧ f z ≠ f w)
  (α_diff : DifferentiableOn ℝ α (Set.Icc a b))
  (α_in_U : ∀ t ∈ Set.Icc a b, α t ∈ U)
  (α_deriv_ne : ∀ t ∈ Set.Icc a b, deriv α t ≠ 0) :
  StrictMonoOn (fun t => Complex.arg (f (α t))) (Set.Icc a b) ↔
    ∃ c : ℝ, ∀ t ∈ Set.Icc a b, Complex.arg (f_deriv (α t) * deriv α t) = c := by sorry
