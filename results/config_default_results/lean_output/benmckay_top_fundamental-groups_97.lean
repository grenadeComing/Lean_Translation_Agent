import Mathlib

/-!
Let X be a topological space and let x,y,z : [0,1] → X be paths whose concatenations are
defined. The following states that (x*y)*z is homotopic relative to {0,1} to x*(y*z).

We express this in terms of Mathlib's `Path` API: for paths `x : Path a b`,
`y : Path b c`, `z : Path c d` there exists a reparametrisation `f : unitInterval → unitInterval`
(with the usual endpoint conditions and continuity) such that `(x.trans y).trans z` is
obtained from `x.trans (y.trans z)` by `Path.reparam` (hence they are homotopic rel endpoints).
We also record that the two nested transposes are defined under the same endpoint-matching
hypotheses (this is automatic at the `Path`-type level).
-/

open Topology

variable {X : Type*} [TopologicalSpace X]

/-- Associativity of path concatenation up to reparametrisation/homotopy (no proof). -/
theorem path_trans_assoc_reparam
  {a b c d : X} (x : Path a b) (y : Path b c) (z : Path c d) :
  ∃ (f : ↑unitInterval → ↑unitInterval) (hf : Continuous f) (h0 : f 0 = 0) (h1 : f 1 = 1),
    (x.trans y).trans z = (x.trans (y.trans z)).reparam f hf h0 h1 := by sorry

/-- The two ways of parenthesising the concatenation are defined under the same
endpoint-matching hypotheses. Formulated for `Path` this is vacuous because the
`Path` type already encodes matching endpoints; we state there is no extra
well-definedness obstruction. -/
theorem path_trans_assoc_defined_iff {a b c d : X} (x : Path a b) (y : Path b c) (z : Path c d) :
  True := by sorry
