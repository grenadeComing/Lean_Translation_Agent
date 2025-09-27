import Mathlib

/- Placeholder predicates prefixed with `jirilebl_` for analytic notions. -/

def jirilebl_is_domain (U : Set Complex) : Prop := True

def jirilebl_is_holomorphic_on (U : Set Complex) (f : Complex → Complex) : Prop := True

def jirilebl_has_zero_of_order (g : Complex → Complex) (z : Complex) (m : Nat) : Prop := True

def jirilebl_is_neighborhood (z : Complex) (V : Set Complex) : Prop := True

def jirilebl_has_exactly_m_points_counted_with_multiplicity (S : Set Complex) (m : Nat) : Prop := True

def jirilebl_has_derivative_zero_at (f : Complex → Complex) (z : Complex) : Prop := True

/-- Let U ⊂ ℂ be a domain and suppose that a holomorphic function f : U → ℂ is not constant.
If f(z0) = c and f'(z0) = 0, then either f(z)=c for all z ∈ U, or else if z0 is a zero of f-c of order m,
then there exists a neighborhood V of z0 such that f^{-1}(c) ∩ V consists of exactly m points (counted with multiplicities).

This theorem uses placeholder predicates; the proof is omitted (by sorry). -/
theorem jirilebl_ca_ca_2718 {U : Set Complex} {f : Complex → Complex} {z0 c : Complex} {m : Nat}
  (hU : jirilebl_is_domain U)
  (hf : jirilebl_is_holomorphic_on U f)
  (h_not_const : ¬ (∀ z ∈ U, f z = f z0))
  (hz0_in : z0 ∈ U)
  (hfz0 : f z0 = c)
  (hder0 : jirilebl_has_derivative_zero_at f z0) :
  (∀ z ∈ U, f z = c) ∨
    (jirilebl_has_zero_of_order (fun z => f z - c) z0 m ∧
      ∃ V, jirilebl_is_neighborhood z0 V ∧ V ⊆ U ∧
        jirilebl_has_exactly_m_points_counted_with_multiplicity (f ⁻¹' {c} ∩ V) m) := by sorry
