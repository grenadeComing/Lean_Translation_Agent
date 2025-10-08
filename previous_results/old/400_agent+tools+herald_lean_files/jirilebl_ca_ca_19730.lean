import Mathlib

/--
Formal translation (with placeholders) of:
If U ⊆ ℂ is a domain and f : U → ℂ is holomorphic and nonconstant.
If f(z0) = c and f'(z0) = 0, then either f ≡ c or else z0 is a zero of f - c of order m
and there exists a neighborhood V of z0 such that f⁻¹({c}) ∩ V consists of exactly m points
(counted with multiplicity).
-/

theorem holomorphic_zero_isolated_or_constant
  (U : Set Complex) (f : Complex → Complex) (z0 c : Complex)
  (hU : IsOpen U) (hhol : True) (hnc : True) (hval : f z0 = c) (hder : True) :
  (∀ z, f z = c) ∨
  (∃ (m : ℕ) (V : Set Complex), 1 ≤ m ∧ IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ True ∧ True) :=
by sorry
