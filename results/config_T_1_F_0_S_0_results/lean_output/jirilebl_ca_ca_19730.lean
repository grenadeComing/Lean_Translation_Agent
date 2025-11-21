import Mathlib

/-- Let U ⊂ ℂ be a domain and f : U → ℂ be holomorphic and nonconstant. If f(z0)=c and f'(z0)=0,
then either f(z) ≡ c or else z0 is a zero of f-c of order m and there exists a neighborhood V of z0
such that f^{-1}(c) ∩ V consists of exactly m points (with multiplicity). -/
theorem holomorphic_zero_has_order_or_constant {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f U) {z0 c : ℂ} (hz0 : z0 ∈ U) (hfz0 : f z0 = c) (hderiv : deriv f z0 = 0) :
  (∀ z, z ∈ U → f z = c) ∨
  ∃ (m : ℕ) (hm : 1 ≤ m) (V : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧
    (∀ z ∈ V, f z - c = (z - z0) ^ m * g z) ∧ g z0 ≠ 0 := by sorry