import Mathlib

universe u

/-- Abstract API for paths between points of a type X. -/
class PathStructure (X : Type u) where
  Path : X → X → Type u
  id_path : ∀ x, Path x x
  comp : ∀ {a b c : X}, Path a b → Path b c → Path a c
  symm : ∀ {a b : X}, Path a b → Path b a

variable {X : Type u}
variable (PS : PathStructure X)

/-- Loops at x are paths from x to x. -/
def Loop (x : X) : Type u := PS.Path x x

variable (pi1 : X → Type u)
variable (loop_class : ∀ x, PS.Path x x → pi1 x)
variable (iso : ∀ {x0 x1 : X}, PS.Path x0 x1 → (pi1 x0 ≃ pi1 x1))

/-- Given a path p : x0 → x1, the induced map on pi1 sends the class of a loop y at x0
    to the class of the conjugated loop p⁻¹ * (y * p) at x1. -/
theorem path_conjugation_induces_iso {x0 x1 : X} (p : PS.Path x0 x1) :
  ∀ y : PS.Path x0 x0,
    (iso p) (loop_class x0 y) = loop_class x1 (PS.comp (PS.symm p) (PS.comp y p)) := by sorry
