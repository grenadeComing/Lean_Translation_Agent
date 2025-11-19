import Mathlib

open Set

variable {U : Set Complex} {f : Complex → Complex} {z0 c : Complex}

/-- Let U ⊆ ℂ be a domain (open and connected) and suppose f : U → ℂ is holomorphic.
If f(z0) = c and f'(z0) = 0, then either f(z) = c for all z ∈ U, or else if z0 is a zero of f - c
of order m, then there exists a neighborhood V of z0 such that f^{-1}(c) ∩ V consists of exactly
m points (counted with multiplicities).

We express the alternative ``z0 is a zero of order m'' by the local factorization
f(z) - c = (z - z0)^m * g(z) with g holomorphic on a neighborhood V of z0 and g(z0) ≠ 0.
-/
theorem jirilebl_ca_ca_2718
  (hU_open : IsOpen U)
  (hU_conn : IsConnected U)
  (h_diff : DifferentiableOn ℂ f U)
  (hz0_in : z0 ∈ U)
  (hfz0 : f z0 = c)
  (hderiv0 : deriv f z0 = 0) :
  (∀ z ∈ U, f z = c) ∨
  ∃ (m : ℕ) (V : Set Complex) (g : Complex → Complex),
    1 ≤ m ∧ IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧
    DifferentiableOn ℂ g V ∧ g z0 ≠ 0 ∧
    ∀ z ∈ V, f z - c = (z - z0) ^ m * g z := by sorry
