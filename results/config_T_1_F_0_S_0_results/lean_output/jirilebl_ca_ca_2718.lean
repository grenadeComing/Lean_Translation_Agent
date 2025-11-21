import Mathlib

/-- Let U ⊂ ℂ be a domain (open and connected) and let f be holomorphic on U. If f(z0) = c and
    HasDerivAt f 0 z0, then either f = const c on U, or there exists m ≥ 1 and an open neighborhood
    V of z0 and a holomorphic g on V with g z0 ≠ 0 such that

      ∀ z ∈ V, f z - c = (z - z0) ^ m * g z.

    This expresses the local factorization of f − c and implies that the zero z0 has finite order m
    and the solutions of f = c in V are exactly the m roots counted with multiplicity. -/
theorem zero_order_local_factorization {U : Set ℂ} (hU : IsOpen U) (hconn : IsConnected U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) {z0 c : ℂ} (hz0 : z0 ∈ U) (hfv : f z0 = c)
  (hder : HasDerivAt f 0 z0) :
  (∀ z ∈ U, f z = c) ∨ ∃ (m : ℕ) (V : Set ℂ), 1 ≤ m ∧ IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧
    ∃ (g : ℂ → ℂ), IsHolomorphicOn g V ∧ g z0 ≠ 0 ∧ (∀ z ∈ V, f z - c = (z - z0) ^ m * g z) := by sorry