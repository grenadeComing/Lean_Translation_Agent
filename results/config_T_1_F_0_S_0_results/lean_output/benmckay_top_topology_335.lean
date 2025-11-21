import Mathlib

/-!
Let S ⊂ ℝ^n be a subset. Prove that the shortest path from x to y in ℝ^n \ S
is a polygon with corners on S whenever this makes sense.

The statement below formalises this at a high level: we work in Euclidean
space E = EuclideanSpace ℝ (Fin n) and state that any curve γ which is a
shortest path in the complement of S (an abstract predicate) is a polygonal
curve whose corners lie on S (also an abstract predicate). The file only
contains the translated statement (no proof).
-/

variable {n : ℕ}

/-- Euclidean space ℝ^n. -/
def E := EuclideanSpace ℝ (Fin n)

/-- Abstract predicate: γ is a shortest path from x to y contained in E \ S. -/
variable (IsShortestPathInComplement : ∀ (S : Set E) (γ : ℝ → E) (x y : E), Prop)

/-- Abstract predicate: γ is a polygonal path whose corner points lie on S. -/
variable (IsPolygonWithCornersOn : ∀ (S : Set E) (γ : ℝ → E), Prop)

/-- Main statement (no proof): if γ realises the shortest path from x to y in
    the complement of S, then γ is a polygon with corners on S. -/
theorem shortest_path_is_polygon_with_corners_on (S : Set E) {x y : E} {γ : ℝ → E}
  (h : IsShortestPathInComplement S γ x y) : IsPolygonWithCornersOn S γ := by sorry
