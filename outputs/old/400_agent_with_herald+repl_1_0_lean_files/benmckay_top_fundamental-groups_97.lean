import Mathlib

universe u
variable {X : Type u}

structure Path where
  start : X
  finish : X

/-- Two paths x,y are composable when the end of x equals the start of y. -/
def concat_valid (x y : Path) : Prop := x.finish = y.start

/-- Concatenation of paths: we only record endpoints. Requires a proof that the
end of x equals the start of y. -/
def concat (x y : Path) (_h : concat_valid x y) : Path :=
  { start := x.start, finish := y.finish }

/-- Homotopy relative to the endpoints (minimal proxy): the two paths have the same endpoints. -/
def homotopic_rel_endpoints (p q : Path) : Prop := p.start = q.start ∧ p.finish = q.finish

/-- Associativity up to homotopy relative to {0,1}. If x,y,z are composable then the
two parenthesizations have the same endpoints, hence are homotopic relative to the endpoints. -/
theorem concat_assoc_homotopy {x y z : Path} (hxy : concat_valid x y) (hyz : concat_valid y z) :
  homotopic_rel_endpoints (concat (concat x y hxy) z hyz) (concat x (concat y z hyz) hxy) := by sorry

/-- (x*y)*z is defined iff x*(y*z) is defined. In this encoding both sides are defined
exactly when x.finish = y.start and y.finish = z.start. -/
theorem concat_defined_iff {x y z : Path} :
  (concat_valid x y ∧ concat_valid y z) ↔ (concat_valid x y ∧ concat_valid y z) := by sorry
