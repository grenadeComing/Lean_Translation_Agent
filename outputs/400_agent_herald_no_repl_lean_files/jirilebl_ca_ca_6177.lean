import Mathlib

/-!
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic and nonconstant. Suppose α : ℝ → ℂ is a smooth curve
on [a,b] with α'(t) ≠ 0 for all t ∈ [a,b], and α(t) ∈ U for all t ∈ [a,b]. Then f ∘ α changes
argument strictly monotonically on [a,b] iff arg (deriv f (α t) * deriv α t) is constant on [a,b].

This is formalized below. The proof is omitted (:= by sorry).
-/

theorem jirilebl_ca_ca_6177 {a b : ℝ} {U : Set Complex} {f : Complex → Complex} {α : ℝ → Complex}
  (hab : a < b) (hU : IsOpen U) (hf : IsHolomorphicOn f U) (hf_nonconst : ¬ ∃ c : Complex, ∀ z ∈ U, f z = c)
  (hα_diff : DifferentiableOn ℝ α (Icc a b)) (hα_mem : ∀ t ∈ Icc a b, α t ∈ U)
  (hα_ne : ∀ t ∈ Icc a b, deriv α t ≠ 0) :
  StrictMonoOn (fun t => Complex.arg (f (α t))) (Icc a b) ↔
    ∃ c : ℝ, ∀ t ∈ Icc a b, Complex.arg ((deriv f (α t)) * (deriv α t)) = c := by sorry
