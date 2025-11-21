import Mathlib

/--
Let U ⊆ ℂ be a domain and suppose that a holomorphic function f : U → ℂ is not constant.
If f(z0) = c and f'(z0) = 0, then either f(z) = c for all z ∈ U, or else if z0 is a zero
of f - c of order m, then there exists a neighborhood V of z0 such that f^{-1}({c}) ∩ V
consists of exactly m points (counted with multiplicities).

This statement is expressed here in a form asserting the local factorisation
f(z) - c = (z - z0)^m * g(z) with g holomorphic and g(z0) ≠ 0, which is equivalent
to the usual formulation about the number of solutions counted with multiplicity.
-/
theorem jirilebl_ca_ca_2718 {U : Set ℂ} {f : ℂ → ℂ}
  (hU_open : IsOpen U) (hU_conn : IsConnected U) (hf : IsHolomorphicOn f U)
  (hf_nonconst : ¬ IsConstantOn f U) {z0 c : ℂ} (hz0 : z0 ∈ U)
  (hfv : f z0 = c) (hder : HasDerivAt f (0 : ℂ) z0) :
  (∀ z ∈ U, f z = c) ∨
  ∃ (m : ℕ) (hm : 1 ≤ m) (V : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ IsHolomorphicOn g V ∧ g z0 ≠ 0 ∧
    ∀ z ∈ V, f z - c = (z - z0) ^ m * g z := by sorry
