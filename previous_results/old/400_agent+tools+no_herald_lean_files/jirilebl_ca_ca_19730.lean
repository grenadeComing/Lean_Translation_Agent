import Mathlib

open Set

/-!
Local structure of zeros of a holomorphic function.
If U ⊂ ℂ is open and f : ℂ → ℂ is holomorphic on U, z0 ∈ U and f z0 = c and f'(z0) = 0,
then either f ≡ c on U or there exists m ≥ 1 and a neighborhood V of z0 and a holomorphic
function g on V with g z0 ≠ 0 such that f z = c + (z - z0)^m * g z for all z ∈ V.
This expresses that z0 is a zero of f - c of order m; in particular the preimage of c in V
consists of exactly m points counted with multiplicity.
-/

theorem local_structure_of_zeros_of_holomorphic_function {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {z0 c : ℂ}
  (hz0 : z0 ∈ U) (hfv : f z0 = c) (hder : HasDerivAt f (0 : ℂ) z0) :
  (∀ z ∈ U, f z = c) ∨
    ∃ (m : ℕ) (hm : 1 ≤ m) (V : Set ℂ) (hV : IsOpen V) (hz0V : z0 ∈ V)
      (g : ℂ → ℂ) (hg : DifferentiableOn ℂ g V),
      (∀ z ∈ V, f z = c + (z - z0) ^ m * g z) ∧ g z0 ≠ 0 :=
by
  sorry
