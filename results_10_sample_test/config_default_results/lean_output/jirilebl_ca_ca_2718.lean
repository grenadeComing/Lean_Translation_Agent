import Mathlib

/-- Abstract version of the classical fact about zeros of a nonconstant holomorphic function.
    We parametrize the notions of holomorphicity, vanishing derivative, order of a zero, and
    counting zeros with multiplicity so that the statement mirrors the mathematical one but
    does not depend on particular mathlib identifiers. -/

theorem jirilebl_ca_ca_2718
  (IsHolomorphicOn : Set ℂ → (ℂ → ℂ) → Prop)
  (HasZeroDerivativeAt : (ℂ → ℂ) → ℂ → Prop)
  (ZeroOfOrder : (ℂ → ℂ) → ℂ → ℕ → Prop)
  (zeros_count_mult : (ℂ → ℂ) → Set ℂ → ℕ → Prop)
  (U : Set ℂ) (hU_open : IsOpen U) (hU_conn : IsPreconnected U)
  {f : ℂ → ℂ} (c : ℂ)
  (hhol : IsHolomorphicOn U f) (h_not_const : ¬ (∀ z ∈ U, f z = c))
  (z0 : ℂ) (hz0 : z0 ∈ U) (hfz0 : f z0 = c) (hder0 : HasZeroDerivativeAt f z0) :
  (∀ z ∈ U, f z = c) ∨
  (∃ m : ℕ, 0 < m ∧ ZeroOfOrder (fun z => f z - c) z0 m ∧
    ∃ V : Set ℂ, IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ zeros_count_mult (fun z => f z - c) V m) := by sorry
