import Mathlib

/-- Placeholder predicate for "p is a universal covering map". In a full development one would
    use the actual covering space definitions from mathlib. Here we keep it abstract so that the
    statement of uniqueness/existence can be expressed and checked syntactically. -/
def is_universal_covering {X Y : Type _} (p : X → Y) : Prop := True

variable {X Z Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- If p : X → Y and q : Z → Y are universal covering maps then there is a unique map
    f : X → Z such that q ∘ f = p (i.e. X is isomorphic to Z as a covering of Y). -/
theorem universal_covering_unique_up_to_iso
  (p : X → Y) (q : Z → Y)
  (hp : is_universal_covering p) (hq : is_universal_covering q) :
  ∃! (f : X → Z), q ∘ f = p := by sorry
