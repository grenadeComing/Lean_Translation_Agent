import Mathlib

/-!
Let U ⊂ ℂ be a domain and suppose that a holomorphic function f : U → ℂ is not constant.
If f(z₀) = c and f'(z₀) = 0, then either f(z)=c for all z ∈ U, or else if z₀ is a zero of f-c of order m,
then there exists a neighborhood V of z₀ such that f^{-1}(c) ∩ V consists of exactly m points (counted with multiplicities).

We state an equivalent formulation: either f is constant on U, or there exist m ≥ 1 and an open
neighborhood V of z₀ and an analytic function g on V with g z₀ ≠ 0 such that
  ∀ z ∈ V, f z - c = (z - z₀) ^ m * g z.
This captures that z₀ is a zero of order m and that in a small neighborhood the only zero is z₀ of multiplicity m.
-/

open Complex Set

theorem zeros_of_holomorphic_function_nearby {U : Set ℂ} (hU_open : IsOpen U) (hU_conn : IsPreconnected U)
  (f : ℂ → ℂ) (hf : AnalyticOn ℂ f U) (h_nonconst : ¬ ∃ d, ∀ z ∈ U, f z = d)
  (z0 : ℂ) (hz0U : z0 ∈ U) (c : ℂ) (hz0 : f z0 = c) (hder : HasDerivAt f 0 z0) :
  (∀ z ∈ U, f z = c) ∨
  ∃ (m : ℕ), 1 ≤ m ∧ ∃ (V : Set ℂ), IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧
    ∃ (g : ℂ → ℂ), AnalyticOn ℂ g V ∧ g z0 ≠ 0 ∧ ∀ z ∈ V, f z - c = (z - z0) ^ m * g z := by sorry
