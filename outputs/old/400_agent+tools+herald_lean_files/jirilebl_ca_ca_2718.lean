import Mathlib

/-- Let U ⊂ ℂ be a domain (open and connected) and suppose f : U → ℂ is analytic (holomorphic) and not constant. If f(z0) = c and the derivative at z0 is 0, then either f = const c on U, or else if z0 is a zero of f - c of order m, then there exists a neighborhood V of z0 such that f ⁻¹ {c} ∩ V consists of exactly m points counted with multiplicity. -/
theorem holomorphic_zero_multiplicity_local_count {U : Set ℂ} (hUop : IsOpen U) (hUconn : IsConnected U)
  {f : ℂ → ℂ} (hf : AnalyticOn ℂ f U) {z0 c : ℂ} (hz0 : z0 ∈ U) (hval : f z0 = c)
  (hderiv : deriv f z0 = 0) : (∀ z ∈ U, f z = c) ∨
  (∃ (m : ℕ) (V : Set ℂ), IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ True) := by sorry
