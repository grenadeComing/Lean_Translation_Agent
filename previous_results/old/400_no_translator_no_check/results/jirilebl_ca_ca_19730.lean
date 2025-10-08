import Mathlib

open Complex

/-!
Local form of the fact: if f is holomorphic on an open set U ⊆ ℂ, f(z0)=c and f'(z0)=0,
then either f ≡ c on U or there is an m ≥ 1 and a holomorphic g with g(z0) ≠ 0 and
f(z) = c + (z - z0)^m * g(z) in a neighborhood of z0.

We state this using DifferentiableOn (holomorphic) and deriv for the complex derivative.
-/

theorem jirilebl_ca_ca_19730 {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hfd : DifferentiableOn ℂ f U)
  (z0 c : ℂ) (hz0 : z0 ∈ U) (hf0 : f z0 = c) (hder0 : deriv f z0 = 0) :
  (∀ z ∈ U, f z = c) ∨
  ∃ (m : ℕ) (hm : 0 < m) (V : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ DifferentiableOn ℂ g V ∧ g z0 ≠ 0 ∧ ∀ z ∈ V, f z = c + (z - z0) ^ m * g z :=
by
  sorry
