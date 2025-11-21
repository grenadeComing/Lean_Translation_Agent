import Mathlib

-- Statement: Let U ⊆ ℂ be a domain and f : U → ℂ be holomorphic.
-- If f(z0) = c and f'(z0) = 0, then either f ≡ c on U or else z0 is a zero
-- of f - c of order m and there exists a neighborhood V of z0 on which
-- f z - c = (z - z0)^m * g(z) with g holomorphic and g(z0) ≠ 0.

theorem jirilebl_ca_ca_19730 {U : Set ℂ} (hU_open : IsOpen U) (hU_conn : IsConnected U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (h_nonconst : ¬(∀ z w, z ∈ U → w ∈ U → f z = f w))
  {z0 c : ℂ} (hz0 : z0 ∈ U) (hval : f z0 = c) (hder : HasDerivAt f (0 : ℂ) z0) :
  (∀ z ∈ U, f z = c) ∨
  ∃ (m : ℕ) (hm : 0 < m) (V : Set ℂ) (hV_open : IsOpen V) (hz0V : z0 ∈ V) (hV_sub : V ⊆ U)
    (g : ℂ → ℂ) (hg : IsHolomorphicOn g V) (hg0 : g z0 ≠ 0)
    (hfact : ∀ z ∈ V, f z - c = (z - z0) ^ m * g z) :=
by sorry