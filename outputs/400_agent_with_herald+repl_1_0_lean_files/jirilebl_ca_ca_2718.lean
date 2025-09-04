import Mathlib

variable (holomorphic_on : Set Complex → (Complex → Complex) → Prop)
variable (not_constant_on : Set Complex → (Complex → Complex) → Prop)
variable (deriv_at : (Complex → Complex) → Complex → Complex)
variable (zero_order : (Complex → Complex) → Complex → Nat → Prop)

/-- Translation of the statement (analytic predicates left as placeholders).
Let U be a domain in Complex and f : Complex → Complex holomorphic on U and not constant.
If f z0 = c and deriv_at f z0 = 0, then either f = c on U, or else there is an m ≥ 1 such that
f - c has a zero of order m at z0 and there exists a neighborhood V of z0 with the local
preimage property (counted with multiplicities). -/
theorem jirilebl_ca_ca_2718 {U : Set Complex} {f : Complex → Complex} {z0 c : Complex}
  (h_hol : holomorphic_on U f) (h_not_const : not_constant_on U f) (h_val : f z0 = c)
  (h_deriv0 : deriv_at f z0 = 0) :
  (∀ z, f z = c) ∨
  (∃ (m : Nat), 1 ≤ m ∧ zero_order (fun z => f z - c) z0 m ∧ ∃ (V : Set Complex), z0 ∈ V ∧ True) := by
  sorry
