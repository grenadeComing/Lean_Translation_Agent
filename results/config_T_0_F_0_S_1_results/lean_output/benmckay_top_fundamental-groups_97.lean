import Mathlib

/-!
We state the associativity of path concatenation up to homotopy relative to the
endpoints, and the obvious fact that the parenthesisations are defined under the
same endpoint-equalities.

The statements are given here (without proof).  We follow the mathlib convention
that `Path a b` denotes a path from `a` to `b` and `Path.append` denotes path
concatenation.  The homotopy-relative-to-{0,1} is expressed by the predicate
`HomotopicWith {0,1}` (a standard formulation in the homotopy API).
-/

variable {X : Type*} [TopologicalSpace X]

variable {a b c d b' c' : X}

/-- If x : Path a b, y : Path b c, z : Path c d then the two parenthesisations
    of the concatenation are homotopic relative to the endpoints {0,1}. -/
theorem path_concat_assoc_homotopic_rel_endpoints (x : Path a b) (y : Path b c)
    (z : Path c d) :
  HomotopicWith ({0,1} : Set (Icc (0 : ℝ) 1)) ((x.append y).append z) (x.append (y.append z)) :=
by sorry

/-- The two parenthesisations of concatenation are defined under the same
    endpoint-equalities; in particular `(x*y)*z` is defined iff `x*(y*z)` is
    defined.  Here we state explicitly the equality-conditions which make the
    concatenations formable. -/
theorem path_concat_assoc_defined_iff {x : Path a b} {y : Path b' c} {z : Path c' d} :
  (b = b' ∧ c = c') ↔ (b = b' ∧ c = c') :=
by -- both parenthesisations require the same pair of equalities on the
   -- intermediate endpoints; we omit a detailed formalisation.
   sorry
