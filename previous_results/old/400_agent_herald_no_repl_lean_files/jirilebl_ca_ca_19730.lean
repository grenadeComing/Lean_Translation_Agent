import Mathlib

open Set

/--
Let U ⊂ ℂ be a domain and f : U → ℂ holomorphic and nonconstant. If f(z0) = c and f'(z0) = 0,
then either f ≡ c or else z0 is a zero of f - c of order m and there exists a neighborhood V of z0
such that locally f - c factors as (z - z0)^m * g with g holomorphic and g(z0) ≠ 0.
(This implies the usual statement about preimages counted with multiplicity.)
-/
theorem holomorphic_zero_order_local_structure (U : Set ℂ) (f : ℂ → ℂ) (z0 c : ℂ) :
  IsOpen U → Connected U → IsHolomorphicOn f U → f z0 = c → Complex.deriv f z0 = 0 →
  (f = fun z => c) ∨
  (∃ (m : ℕ) (V : Set ℂ) (g : ℂ → ℂ),
    1 ≤ m ∧ IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ IsHolomorphicOn g V ∧ g z0 ≠ 0 ∧
    ∀ z ∈ V, f z - c = (z - z0) ^ m * g z) := by sorry
