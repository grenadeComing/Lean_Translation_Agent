import Mathlib

open Set

/--
Let U ⊂ ℂ be open and f : ℂ → ℂ holomorphic on U. If f(z0) = c and f'(z0) = 0,
then either f = const = c on U, or else if z0 is a zero of f - c of order m,
there exists a neighborhood V of z0 and a holomorphic g on V with g(z0) ≠ 0
such that for all z ∈ V, f z - c = (z - z0)^m * g z.
(This formulation records the standard local factorization; counting roots
with multiplicity follows from this factorization.)
-/
theorem jirilebl_ca_ca_2718 (U : Set ℂ) (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  {z0 c : ℂ} (hz0 : z0 ∈ U) (hval : f z0 = c) (hder : HasDerivAt f (0 : ℂ) z0) :
  (∀ z ∈ U, f z = c) ∨
  (∃ (m : ℕ) (hm : 1 ≤ m) (V : Set ℂ) (hV : IsOpen V) (hVsub : z0 ∈ V ∧ V ⊆ U) (g : ℂ → ℂ),
    DifferentiableOn ℂ g V ∧ g z0 ≠ 0 ∧ ∀ z ∈ V, f z - c = (z - z0) ^ m * g z) := by
  sorry
