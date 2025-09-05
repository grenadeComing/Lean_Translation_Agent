import Mathlib

/-!
  Informal statement:
  Let X be a topological space and let x,y,z : [0,1] → X be paths whose concatenations are defined.
  Then (x*y)*z is homotopic relative to {0,1} to x*(y*z), and (x*y)*z is defined iff x*(y*z) is defined.

  The file below formalises the statement at a high level: we work with functions on the unit
  interval I = { t : ℝ // 0 ≤ t ∧ t ≤ 1 } and treat concatenation and homotopy-relative-endpoints
  as abstract operations/predicates. We only state the lemma; the proof is omitted (:= by sorry).
-/

open Set

variable (X : Type*) [TopologicalSpace X]

/-- The unit interval as a subtype of ℝ. -/
def I := { t : ℝ // 0 ≤ t ∧ t ≤ 1 }

/-- The left and right endpoint elements of I. -/
def I_zero : I := ⟨0, by simp [le_refl]⟩

def I_one : I := ⟨1, by simp⟩

/-- Abstract concatenation operation: given two paths I → X produce a path I → X.
    We treat this as a parameter rather than giving an explicit construction. -/
variable (concat : (I X) → (I X) → (I X))

/-- Predicate saying that the concatenation of two paths is defined (e.g. their endpoints match). -/
variable (concat_defined : (I X) → (I X) → Prop)

/-- Abstract relation: two paths are homotopic relative to the endpoints {0,1}. -/
variable (homotopic_rel_endpoints : (I X) → (I X) → Prop)

/-- Associativity of path concatenation up to homotopy relative to the endpoints, and the
    equivalence of definedness of the two associative parenthesisations.

    Note: this is stated at an abstract level (concat, concat_defined and homotopic_rel_endpoints
    are parameters). The proof is omitted. -/
theorem concat_assoc_up_to_homotopy
  (x y z : I X)
  (hxy : concat_defined x y)
  (hyz : concat_defined y z)
  : homotopic_rel_endpoints (concat (concat x y) z) (concat x (concat y z))
    ∧ (concat_defined (concat x y) z ↔ concat_defined x (concat y z)) := by sorry