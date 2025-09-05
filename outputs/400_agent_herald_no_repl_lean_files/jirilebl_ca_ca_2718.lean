import Mathlib

open Set

/--
Let U ⊆ ℂ be a domain (open and connected) and let f : ℂ → ℂ be holomorphic on U and nonconstant on U.
If z0 ∈ U and f z0 = c and deriv f z0 = 0, then either f = constant c on U, or else if z0 is a zero
of f - fun _ => c of order m, then there exists a neighborhood V of z0 such that the preimage
f ⁻¹' {c} ∩ V consists of exactly m points (counted with multiplicities).

This statement is recorded below in Mathlib style; proof omitted.
-/

theorem holomorphic_zero_multiplicity
  (U : Set ℂ) (hU_open : IsOpen U) (hU_conn : IsConnected U)
  (f : ℂ → ℂ) (hhol : IsHolomorphicOn f U) (h_nonconst : ¬ (∀ z ∈ U, f z = (0 : ℂ)))
  (z0 c : ℂ) (hz0 : z0 ∈ U) (hfv : f z0 = c) (hder : deriv f z0 = 0) :
  (∀ z ∈ U, f z = c) ∨
  (∃ (m : ℕ) (hm : 0 < m) (h_ord : order_of_zero (fun z => f z - c) z0 = m),
    ∃ (V : Set ℂ), IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧
      ∃ (S : Finset ℂ), (↑S : Set ℂ) = (f ⁻¹' {c} ∩ V) ∧ S.card = m) := by sorry
