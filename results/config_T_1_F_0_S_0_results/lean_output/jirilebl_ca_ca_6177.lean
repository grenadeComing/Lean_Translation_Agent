import Mathlib

/-
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic and nonconstant. Suppose α : [a,b] → U is a smooth curve
and α'(t) ≠ 0 for all t ∈ [a,b]. Then f ∘ α changes argument strictly monotonically on [a,b]
iff arg (f'(α(t)) * α'(t)) is constant.
-/

theorem jirilebl_ca_ca_6177 {U : Set ℂ} {f : ℂ → ℂ} {a b : ℝ} {α : ℝ → ℂ}
  (hU : IsOpen U)
  (hf : DifferentiableOn ℂ f U)
  (hf_nonconst : ¬ ∃ c, ∀ z ∈ U, f z = c)
  (hab : a < b)
  (hα : DifferentiableOn ℂ α (Icc a b))
  (hα_range : α '' (Icc a b) ⊆ U)
  (hα' : ∀ t ∈ Icc a b, deriv α t ≠ 0) :
  (StrictMonoOn (fun t => Complex.arg (f (α t))) (Icc a b)) ↔
  (∀ s t ∈ Icc a b, Complex.arg (deriv f (α s) * deriv α s) = Complex.arg (deriv f (α t) * deriv α t)) := by sorry