import Mathlib

open Set Topology

/-- Let U ⊂ ℂ be a domain and f : U → ℂ be holomorphic and nonconstant. If f(z0) = c and f'(z0) = 0,
then either f(z) ≡ c or else z0 is a zero of f - c of order m and there exists a neighborhood V of z0
such that f⁻¹' {c} ∩ V consists of exactly m points (with multiplicity).

This statement is translated using differentiability (holomorphic) and a local factorization form: either
f is constant c on U or there exists m ≥ 1 and a holomorphic g with g(z0) ≠ 0 and an open neighborhood V
on which f(z) - c = (z - z0)^m * g(z).
-/
theorem jirilebl_zero_multiplicity_or_constant {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hf : DifferentiableOn ℂ f U)
  {z0 c : ℂ} (hz0 : z0 ∈ U) (hfc : f z0 = c) :
  (∀ z ∈ U, f z = c) ∨
  (∃ (m : ℕ) (hm : 1 ≤ m) (V : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ DifferentiableOn ℂ g V ∧ g z0 ≠ 0 ∧
    ∀ z ∈ V, f z - c = (z - z0) ^ m * g z) := by sorry
