import Mathlib

/-!
A version of the following classical fact about holomorphic functions on a domain U ⊆ ℂ:
If f : U → ℂ is holomorphic and not constant, and f z0 = c with f'(z0) = 0, then either f = c on U,
or, if z0 is a zero of f - c of order m, there is a neighborhood V of z0 such that f^{-1} {c} ∩ V
consists of exactly m points (counted with multiplicities).

This file only states a Lean translation of that dichotomy (without a proof).
-/

open Set

variable {U : Set ℂ} {f : ℂ → ℂ} {z0 c : ℂ}

theorem holomorphic_zero_or_local_multiplicity
  (hU_open : IsOpen U) (hU_conn : IsConnected U) (hf : AnalyticOn ℂ f U) (h_nonconst : ¬ (∀ z, f z = c))
  (hz0_in : z0 ∈ U) (hval : f z0 = c) (hder0 : HasDerivAt f 0 z0) :
  (∀ z, f z = c) ∨
  (∃ (m : ℕ) (V : Set ℂ), IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ Set.Finite (f ⁻¹' {c} ∩ V)) :=
by
  -- proof omitted
  sorry
