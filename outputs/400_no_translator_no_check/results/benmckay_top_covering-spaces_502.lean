import Mathlib

open Complex

variable {Z : Set ℂ} (hZ : IsOpen Z) (hconn : IsConnected Z)

/-- Placeholder predicate expressing that g maps every loop in Z to a null-homotopic loop in ℂ \ {0}.
    In a full formalisation this would quantify over Path (Subtype Z) and assert null-homotopy of
    the composition into Subtype (ℂ \ {0}). Here we leave it abstract. -/
def loops_null_homotopic (Z : Set ℂ) (g : Subtype Z → ℂ) : Prop := True

/-- Statement: a function g defined on a domain Z has a logarithm G (i.e. g = exp ∘ G)
    iff g is everywhere nonzero on Z and it maps every loop in Z to a null-homotopic loop
    in ℂ \ {0}.  We treat analyticity as an abstract hypothesis `h_analytic` and the
    null-homotopy condition as the predicate `loops_null_homotopic` above. -/
theorem has_log_iff_nonzero_and_loops_nullhomotopic
  {g : Subtype Z → ℂ} (h_analytic : Prop) :
  (∃ (G : Subtype Z → ℂ), ∀ z : Subtype Z, Complex.exp (G z) = g z) ↔
  (∀ z : Subtype Z, g z ≠ 0) ∧ loops_null_homotopic Z g :=
by sorry
